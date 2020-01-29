package cn.qingcheng.service.goods;

import cn.qingcheng.entity.PageResult;
import cn.qingcheng.pojo.goods.Category;

import java.util.List;
import java.util.Map;

public interface CategoryService {
    /**
     * 查询所有
     * @return
     */
    public List<Category> findAll();

    /**
     * 分页查询
     * @param page
     * @param size
     * @return
     */
    public PageResult<Category> findPage(int page, int size);

    /**
     * 搜索条件查询
     * @categorym searchMap
     * @return
     */
    List<Category> findList(Map<String, Object> searchMap);

    /**
     * 搜索分页查询
     * @categorym searchMap
     * @categorym page
     * @categorym size
     * @return
     */
    public PageResult<Category> findPage(Map<String, Object> searchMap, int page, int size);

    /**
     * id查询
     * @categorym id
     * @return
     */
    Category findById(Integer id);

    /**
     * 添加
     * @categorym category
     * @return
     */
    void add(Category category);

    /**
     * 更新
     * @categorym category
     * @return
     */
    void update(Category category);

    /**
     * 删除
     * @categorym id
     */
    void delete(Integer id);
}
