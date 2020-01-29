package cn.qingcheng.service.goods;

import cn.qingcheng.entity.PageResult;
import cn.qingcheng.pojo.goods.Brand;

import java.util.List;
import java.util.Map;

public interface BrandService {

    /**
     * 查询所有品牌
     * @return
     */
    public List<Brand> findAll();

    public PageResult<Brand> findPage(int page,int size);

    /**
     * 搜索条件查询品牌
     * @param searchMap
     * @return
     */
    List<Brand> findList(Map<String,Object> searchMap);

    /**
     * 搜索分页查询
     * @param searchMap
     * @param page
     * @param size
     * @return
     */
    public PageResult<Brand> findPage(Map<String,Object> searchMap,int page,int size);

    /**
     * id查询品牌
     * @param id
     * @return
     */
    Brand findById(Integer id);

    /**
     * 添加品牌
     * @param brand
     * @return
     */
    void add(Brand brand);

    /**
     * 更新品牌
     * @param brand
     * @return
     */
    void update(Brand brand);

    /**
     * 删除品牌
     * @param id
     */
    void delete(Integer id);
}
