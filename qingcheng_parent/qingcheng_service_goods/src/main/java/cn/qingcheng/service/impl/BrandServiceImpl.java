package cn.qingcheng.service.impl;

import cn.qingcheng.dao.BrandMapper;
import cn.qingcheng.entity.PageResult;
import cn.qingcheng.pojo.goods.Brand;
import cn.qingcheng.service.goods.BrandService;
import com.alibaba.dubbo.config.annotation.Service;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import tk.mybatis.mapper.entity.Example;

import java.util.List;
import java.util.Map;

/*========dubbo 包下的 Service 注解(远程服务)========*/
@Service
public class BrandServiceImpl implements BrandService {

    @Autowired
    private BrandMapper brandMapper;

    /**
     * 查询所有品牌
     * @return
     */
    @Override
    public List<Brand> findAll() {
        return brandMapper.selectAll();
    }

    /**
     * 分页查询品牌
     * @param page
     * @param size
     * @return
     */
    @Override
    public PageResult<Brand> findPage(int page, int size) {
        PageHelper.startPage(page,size);
        List<Brand> brands = brandMapper.selectAll();
        PageInfo<Brand> brandPageInfo = new PageInfo<>(brands);
        return new PageResult<Brand>(brandPageInfo.getTotal(),brandPageInfo.getList());
    }

    /**
     * 搜索条件查询品牌
     * @param searchMap
     * @return
     */
    @Override
    public List<Brand> findList(Map<String,Object> searchMap) {
        // 创建搜索条件 Example
        Example example = createExample(searchMap);
        return brandMapper.selectByExample(example);
    }

    /**
     * 搜索分页查询
     * @param searchMap
     * @param page
     * @param size
     * @return
     */
    @Override
    public PageResult<Brand> findPage(Map<String, Object> searchMap, int page, int size) {
        Example example = createExample(searchMap);
        PageHelper.startPage(page, size);
        Page<Brand> brands = (Page<Brand>) brandMapper.selectByExample(example);
        return new PageResult<Brand>(brands.getTotal(),brands.getResult());
    }

    /**
     * id查询品牌
     * @param id
     * @return
     */
    @Override
    public Brand findById(Integer id) {
        return brandMapper.selectByPrimaryKey(id);
    }

    /** 通用 mapper
     * 创建搜索条件 Example
     * @param searchMap
     * @return
     */
    private Example createExample(Map<String,Object> searchMap){
        Example example = new Example(Brand.class);
        Example.Criteria criteria = example.createCriteria();
        if (searchMap != null){
            if (searchMap.get("name") != null && !"".equals(searchMap.get("name"))){
                criteria.andLike("name","%"+(String)searchMap.get("name")+"%");
            }
            if (searchMap.get("letter") != null && !"".equals(searchMap.get("letter"))){
                criteria.andEqualTo("letter",(String)searchMap.get("letter"));
            }
        }
        return example;
    }

    // ================================= 添加 =========================
    /**
     * 添加品牌
     * @param brand
     * @return
     */
    @Override
    public void add(Brand brand) {
        brandMapper.insertSelective(brand);
    }

    // ================================= 更新 =========================
    /**
     * 更新品牌
     * @param brand
     * @return
     */
    @Override
    public void update(Brand brand) {
        brandMapper.updateByPrimaryKeySelective(brand);
    }

    /**
     * 删除
     * @param id
     */
    @Override
    public void delete(Integer id) {
        brandMapper.deleteByPrimaryKey(id);
    }
}
