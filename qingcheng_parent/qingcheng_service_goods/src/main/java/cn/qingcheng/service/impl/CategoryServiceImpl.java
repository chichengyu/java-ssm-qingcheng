package cn.qingcheng.service.impl;

import cn.qingcheng.dao.CategoryMapper;
import cn.qingcheng.entity.PageResult;
import cn.qingcheng.pojo.goods.Category;
import cn.qingcheng.service.goods.CategoryService;
import com.alibaba.dubbo.config.annotation.Service;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import tk.mybatis.mapper.entity.Example;

import java.util.List;
import java.util.Map;

@Service
public class CategoryServiceImpl implements CategoryService {

    @Autowired
    private CategoryMapper categoryMapper;

    /**
     * 查询所有
     * @return
     */
    @Override
    public List<Category> findAll() {
        return categoryMapper.selectAll();
    }

    /**
     * 分页查询
     * @param page
     * @param size
     * @return
     */
    @Override
    public PageResult<Category> findPage(int page, int size) {
        PageHelper.startPage(page,size);
        Page<Category> categories = (Page<Category>) categoryMapper.selectAll();
        return new PageResult<Category>(categories.getTotal(),categories.getResult());
    }

    /**
     * 搜索条件查询
     * @categorym searchMap
     * @return
     */
    @Override
    public List<Category> findList(Map<String, Object> searchMap) {
        Example example = createExample(searchMap);
        return categoryMapper.selectByExample(example);
    }

    /**
     * 搜索分页查询
     * @categorym searchMap
     * @categorym page
     * @categorym size
     * @return
     */
    @Override
    public PageResult<Category> findPage(Map<String, Object> searchMap, int page, int size) {
        Example example = createExample(searchMap);
        PageHelper.startPage(page,size);
        Page<Category> categories = (Page<Category>) categoryMapper.selectByExample(example);
        return new PageResult<Category>(categories.getTotal(),categories.getResult());
    }

    /**
     * id查询
     * @categorym id
     * @return
     */
    @Override
    public Category findById(Integer id) {
        return categoryMapper.selectByPrimaryKey(id);
    }

    private Example createExample(Map<String, Object> searchMap){
        Example example = new Example(Category.class);
        Example.Criteria criteria = example.createCriteria();
        if(searchMap!=null) {
            // 分类名称
            if (searchMap.get("name") != null && !"".equals(searchMap.get("name"))) {
                criteria.andLike("name", "%" + searchMap.get("name") + "%");
            }
            // 是否显示
            if (searchMap.get("isShow") != null && !"".equals(searchMap.get("isShow"))) {
                criteria.andLike("isShow", "%" + searchMap.get("isShow") + "%");
            }
            // 是否导航
            if (searchMap.get("isMenu") != null && !"".equals(searchMap.get("isMenu"))) {
                criteria.andLike("isMenu", "%" + searchMap.get("isMenu") + "%");
            }

            // 分类ID
            if (searchMap.get("id") != null) {
                criteria.andEqualTo("id", searchMap.get("id"));
            }
            // 商品数量
            if (searchMap.get("goodsNum") != null) {
                criteria.andEqualTo("goodsNum", searchMap.get("goodsNum"));
            }
            // 排序
            if (searchMap.get("seq") != null) {
                criteria.andEqualTo("seq", searchMap.get("seq"));
            }
            // 上级ID
            if (searchMap.get("parentId") != null) {
                criteria.andEqualTo("parentId", searchMap.get("parentId"));
            }
            // 模板ID
            if (searchMap.get("templateId") != null) {
                criteria.andEqualTo("templateId", searchMap.get("templateId"));
            }
        }
        return example;
    }

    /**
     * 添加
     * @categorym category
     * @return
     */
    @Override
    public void add(Category category) {
        categoryMapper.insertSelective(category);
    }

    /**
     * 更新
     * @categorym category
     * @return
     */
    @Override
    public void update(Category category) {
        categoryMapper.updateByPrimaryKeySelective(category);
    }

    /**
     * 删除
     * @categorym id
     */
    @Override
    public void delete(Integer id) {
        // 判断是否有下级分类
        Example example = new Example(Category.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("parentId",id);
        int resultCount = categoryMapper.selectCountByExample(example);
        if (resultCount > 0){
            throw new RuntimeException("存在下级分类，不能删除");
        }
        categoryMapper.deleteByPrimaryKey(id);
    }
}
