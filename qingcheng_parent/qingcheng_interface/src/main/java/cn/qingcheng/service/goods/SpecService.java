package cn.qingcheng.service.goods;

import cn.qingcheng.entity.PageResult;
import cn.qingcheng.pojo.goods.Spec;

import java.util.List;
import java.util.Map;

public interface SpecService {

    /**
     * 查询所有规格
     * @return
     */
    public List<Spec> findAll();

    /**
     * 分页查询规格
     * @param page
     * @param size
     * @return
     */
    public PageResult<Spec> findPage(int page, int size);

    /**
     * 搜索条件查询规格
     * @param searchMap
     * @return
     */
    List<Spec> findList(Map<String, Object> searchMap);

    /**
     * 搜索分页查询
     * @param searchMap
     * @param page
     * @param size
     * @return
     */
    public PageResult<Spec> findPage(Map<String, Object> searchMap, int page, int size);

    /**
     * id查询规格
     * @param id
     * @return
     */
    Spec findById(Integer id);

    /**
     * 添加规格
     * @param spec
     * @return
     */
    void add(Spec spec);

    /**
     * 更新规格
     * @param spec
     * @return
     */
    void update(Spec spec);

    /**
     * 删除规格
     * @param id
     */
    void delete(Integer id);
}
