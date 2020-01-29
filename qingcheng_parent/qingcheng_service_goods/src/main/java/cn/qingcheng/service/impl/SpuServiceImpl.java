package cn.qingcheng.service.impl;

import cn.qingcheng.dao.CategoryBrandMapper;
import cn.qingcheng.dao.CategoryMapper;
import cn.qingcheng.dao.SkuMapper;
import cn.qingcheng.dao.SpuMapper;
import cn.qingcheng.entity.PageResult;
import cn.qingcheng.pojo.goods.Category;
import cn.qingcheng.pojo.goods.CategoryBrand;
import cn.qingcheng.pojo.goods.Goods;
import cn.qingcheng.pojo.goods.Sku;
import cn.qingcheng.pojo.goods.Spu;
import cn.qingcheng.service.goods.SpuService;
import cn.qingcheng.util.IdWorker;
import com.alibaba.dubbo.config.annotation.Service;
import com.alibaba.fastjson.JSON;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import tk.mybatis.mapper.entity.Example;

import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * 注意在使用 dubbo 时，如果需要事务，则需要在 @Service上加上 interfaceClass 属性，指定接口类型，
 * 如果不指定，这个接口被多个代理，不知道找那个接口，导致服务发布不成功
 */
@Service(interfaceClass = SpuService.class)
public class SpuServiceImpl implements SpuService {

    @Autowired
    private SpuMapper spuMapper;
    @Autowired
    private SkuMapper skuMapper;
    @Autowired
    private IdWorker idWorker;
    @Autowired
    private CategoryMapper categoryMapper;
    @Autowired
    private CategoryBrandMapper categoryBrandMapper;

    /**
     * 查询所有
     * @return
     */
    @Override
    public List<Spu> findAll() {
        return spuMapper.selectAll();
    }

    /**
     * 分页查询
     * @param page
     * @param size
     * @return
     */
    @Override
    public PageResult<Spu> findPage(int page, int size) {
        PageHelper.startPage(page,size);
        Page<Spu> spus = (Page<Spu>)spuMapper.selectAll();
        return new PageResult<Spu>(spus.getTotal(),spus.getResult());
    }

    /**
     * 搜素查询
     * @param searchMap
     * @return
     */
    @Override
    public List<Spu> findList(Map<String, Object> searchMap) {
        Example example = createExample(searchMap);
        return spuMapper.selectByExample(example);
    }

    /**
     * 搜素分页查询
     * @param searchMap
     * @param page
     * @param size
     * @return
     */
    @Override
    public PageResult<Spu> findPage(Map<String, Object> searchMap, int page, int size) {
        Example example = createExample(searchMap);
        PageHelper.startPage(page,size);
        Page<Spu> spus = (Page<Spu>)spuMapper.selectByExample(example);
        return new PageResult<Spu>(spus.getTotal(),spus.getResult());
    }

    /**
     * id查询
     * @param id
     * @return
     */
    @Override
    public Spu findById(Integer id) {
        return spuMapper.selectByPrimaryKey(id);
    }

    /**
     * 添加
     * @param spu
     */
    @Override
    public void add(Spu spu) {
        spuMapper.insertSelective(spu);
    }

    /**
     * 更新
     * @param spu
     */
    @Override
    public void update(Spu spu) {
        spuMapper.updateByPrimaryKeySelective(spu);
    }

    /**
     * 删除 spu
     * @param id
     */
    @Override
    public void delete(Integer id) {
        spuMapper.deleteByPrimaryKey(id);
    }

    /**
     * 添加 spu sku 联表
     * @param goods
     */
    @Override
    @Transactional
    public void saveGoods(Goods goods) {
        // 保存 spu
        Spu spu = goods.getSpu();
        if (spu.getId() == null){
            // 新增
            spu.setId(String.valueOf(idWorker.nextId()));
            spuMapper.insertSelective(spu);
        }else{
            // 修改
            // 先删除原来的 sku
            Example example = new Example(Sku.class);
            Example.Criteria criteria = example.createCriteria();
            criteria.andEqualTo("spuId", spu.getId());
            skuMapper.deleteByExample(example);
            // spu 修改
            spuMapper.updateByPrimaryKeySelective(spu);
        }

        // 保存 sku
        Date date = new Date();
        // 获取分类名称
        Category category = categoryMapper.selectByPrimaryKey(spu.getCategory3Id());
        List<Sku> skuList = goods.getSkuList();
        skuList.stream().forEach(sku -> {
            if (sku.getId() == null){
                // 新增
                sku.setId(String.valueOf(idWorker.nextId()));
                sku.setCreateTime(date);
            }
            sku.setSpuId(spu.getId());
            // 不启用规格的sku处理
            if (sku.getSpec() == null || "".equals(sku.getSpec())){
                sku.setSpec("{}");
            }
            // sku name = spu + 规格值列表
            String name = spu.getName();
            Map<String,String> specMap = JSON.parseObject(sku.getSpec(), Map.class);
            for (String value : specMap.values()){
                name += " " + value;
            }
            sku.setName(name);// 名称
            sku.setCategoryId(category.getId());// 分类id
            sku.setCategoryName(category.getName());// 分类名称
            sku.setUpdateTime(date);
            sku.setCommentNum(0);// 评论数
            sku.setSaleNum(0);// 销售数量
            skuMapper.insert(sku);
        });

        // 分类与品牌中间表插入数据
        CategoryBrand categoryBrand = new CategoryBrand();
        categoryBrand.setCategoryId(category.getId());
        categoryBrand.setBrandId(spu.getBrandId());
        int reslutCount = categoryBrandMapper.selectCount(categoryBrand);
        if (reslutCount == 0){
            categoryBrandMapper.insert(categoryBrand);
        }
    }

    /**
     * 修改页数据展示
     * @param id
     * @return
     */
    @Override
    public Goods findGoodsById(String id) {
        // 1.spu 查询
        Spu spu = spuMapper.selectByPrimaryKey(id);
        // 2.sku 列表查询
        Example example = new Example(Sku.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("spuId",spu.getId());
        List<Sku> skus = skuMapper.selectByExample(example);
        // 3.组合数据
        Goods goods = new Goods();
        goods.setSpu(spu);
        goods.setSkuList(skus);
        return goods;
    }

    /**
     * 商品审核
     * @param id
     * @param status
     * @param message
     */
    @Override
    public void audit(String id, String status, String message) {
        // 1.修改状态，审核状态与上架状态
        Spu spu = new Spu();// 为性能，不去查询，直接 new 新的
        spu.setId(id);
        spu.setStatus(status);
        if ("1".equals(spu.getStatus())){
            // 审核通过，自动上架
            spu.setIsMarketable("1");
        }
        spuMapper.updateByPrimaryKeySelective(spu);
        // 2.记录商品审核记录 未实现
        // 3.记录商品日志 未实现
    }

    /**
     * 商品下架
     * @param id
     */
    @Override
    public void pull(String id) {
        Spu spu = new Spu();// 为性能，不去查询，直接 new 新的
        spu.setId(id);
        spu.setIsMarketable("0");
        spuMapper.updateByPrimaryKeySelective(spu);
        // 记录日志 未实现
    }

    /**
     * 商品上架
     * @param id
     */
    @Override
    public void put(String id) {
        Spu spu = spuMapper.selectByPrimaryKey(id);
        if (!"1".equals(spu.getStatus())){
            throw new RuntimeException("此商品未通过审核");
        }
        spu.setIsMarketable("1");
        spuMapper.updateByPrimaryKeySelective(spu);
        // 记录日志 未实现
    }

    /**
     * 批量上架
     * @param ids
     * @return
     */
    @Override
    public int putMany(String[] ids) {
        // 1.批量上架
        Spu spu = new Spu();
        spu.setIsMarketable("1");

        Example example = new Example(Spu.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andIn("id", Arrays.asList(ids));
        criteria.andEqualTo("isMarketable","0");// 下架的
        criteria.andEqualTo("status","1");// 审核通过
        int resultCount = spuMapper.updateByExampleSelective(spu, example);
        // 2.记录日志 未实现
        return resultCount;
    }

    /**
     * 构建查询条件
     * @param searchMap
     * @return
     */
    private Example createExample(Map<String,Object> searchMap){
        Example example = new Example(Spu.class);
        Example.Criteria criteria = example.createCriteria();
        if (searchMap != null){
            // 主键
            if(searchMap.get("id")!=null && !"".equals(searchMap.get("id"))){
                criteria.andLike("id","%"+searchMap.get("id")+"%");
            }
            // 货号
            if(searchMap.get("sn")!=null && !"".equals(searchMap.get("sn"))){
                criteria.andLike("sn","%"+searchMap.get("sn")+"%");
            }
            // SPU名
            if(searchMap.get("name")!=null && !"".equals(searchMap.get("name"))){
                criteria.andLike("name","%"+searchMap.get("name")+"%");
            }
            // 副标题
            if(searchMap.get("caption")!=null && !"".equals(searchMap.get("caption"))){
                criteria.andLike("caption","%"+searchMap.get("caption")+"%");
            }
            // 图片
            if(searchMap.get("image")!=null && !"".equals(searchMap.get("image"))){
                criteria.andLike("image","%"+searchMap.get("image")+"%");
            }
            // 图片列表
            if(searchMap.get("images")!=null && !"".equals(searchMap.get("images"))){
                criteria.andLike("images","%"+searchMap.get("images")+"%");
            }
            // 售后服务
            if(searchMap.get("saleService")!=null && !"".equals(searchMap.get("saleService"))){
                criteria.andLike("saleService","%"+searchMap.get("saleService")+"%");
            }
            // 介绍
            if(searchMap.get("introduction")!=null && !"".equals(searchMap.get("introduction"))){
                criteria.andLike("introduction","%"+searchMap.get("introduction")+"%");
            }
            // 规格列表
            if(searchMap.get("specItems")!=null && !"".equals(searchMap.get("specItems"))){
                criteria.andLike("specItems","%"+searchMap.get("specItems")+"%");
            }
            // 参数列表
            if(searchMap.get("paraItems")!=null && !"".equals(searchMap.get("paraItems"))){
                criteria.andLike("paraItems","%"+searchMap.get("paraItems")+"%");
            }
            // 是否上架
            if(searchMap.get("isMarketable")!=null && !"".equals(searchMap.get("isMarketable"))){
                criteria.andLike("isMarketable","%"+searchMap.get("isMarketable")+"%");
            }
            // 是否启用规格
            if(searchMap.get("isEnableSpec")!=null && !"".equals(searchMap.get("isEnableSpec"))){
                criteria.andLike("isEnableSpec","%"+searchMap.get("isEnableSpec")+"%");
            }
            // 是否删除
            if(searchMap.get("isDelete")!=null && !"".equals(searchMap.get("isDelete"))){
                criteria.andLike("isDelete","%"+searchMap.get("isDelete")+"%");
            }
            // 审核状态
            if(searchMap.get("status")!=null && !"".equals(searchMap.get("status"))){
                criteria.andLike("status","%"+searchMap.get("status")+"%");
            }

            // 品牌ID
            if(searchMap.get("brandId")!=null ){
                criteria.andEqualTo("brandId",searchMap.get("brandId"));
            }
            // 一级分类
            if(searchMap.get("category1Id")!=null ){
                criteria.andEqualTo("category1Id",searchMap.get("category1Id"));
            }
            // 二级分类
            if(searchMap.get("category2Id")!=null ){
                criteria.andEqualTo("category2Id",searchMap.get("category2Id"));
            }
            // 三级分类
            if(searchMap.get("category3Id")!=null ){
                criteria.andEqualTo("category3Id",searchMap.get("category3Id"));
            }
            // 模板ID
            if(searchMap.get("templateId")!=null ){
                criteria.andEqualTo("templateId",searchMap.get("templateId"));
            }
            // 运费模板id
            if(searchMap.get("freightId")!=null ){
                criteria.andEqualTo("freightId",searchMap.get("freightId"));
            }
            // 销量
            if(searchMap.get("saleNum")!=null ){
                criteria.andEqualTo("saleNum",searchMap.get("saleNum"));
            }
            // 评论数
            if(searchMap.get("commentNum")!=null ){
                criteria.andEqualTo("commentNum",searchMap.get("commentNum"));
            }
        }
        return example;
    }
}
