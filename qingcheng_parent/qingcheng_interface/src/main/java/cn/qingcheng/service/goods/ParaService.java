package cn.qingcheng.service.goods;

import cn.qingcheng.entity.PageResult;
import cn.qingcheng.pojo.goods.Para;

import java.util.List;
import java.util.Map;

public interface ParaService {
    /**
     * 查询所有
     * @return
     */
    public List<Para> findAll();

    public PageResult<Para> findPage(int page, int size);

    /**
     * 搜索条件查询
     * @param searchMap
     * @return
     */
    List<Para> findList(Map<String, Object> searchMap);

    /**
     * 搜索分页查询
     * @param searchMap
     * @param page
     * @param size
     * @return
     */
    public PageResult<Para> findPage(Map<String, Object> searchMap, int page, int size);

    /**
     * id查询
     * @param id
     * @return
     */
    Para findById(Integer id);

    /**
     * 添加
     * @param para
     * @return
     */
    void add(Para para);

    /**
     * 更新
     * @param para
     * @return
     */
    void update(Para para);

    /**
     * 删除
     * @param id
     */
    void delete(Integer id);
}
