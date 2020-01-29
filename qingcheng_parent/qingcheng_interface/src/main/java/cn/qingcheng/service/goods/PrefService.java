package cn.qingcheng.service.goods;

import cn.qingcheng.entity.PageResult;
import cn.qingcheng.pojo.goods.Pref;
import cn.qingcheng.pojo.goods.Pref;

import java.util.List;
import java.util.Map;

public interface PrefService {
    /**
     * 查询所有
     * @return
     */
    public List<Pref> findAll();

    /**
     * 分页查询
     * @param page
     * @param size
     * @return
     */
    public PageResult<Pref> findPage(int page, int size);

    /**
     * 搜索条件查询
     * @param searchMap
     * @return
     */
    List<Pref> findList(Map<String, Object> searchMap);

    /**
     * 搜索分页查询
     * @param searchMap
     * @param page
     * @param size
     * @return
     */
    public PageResult<Pref> findPage(Map<String, Object> searchMap, int page, int size);

    /**
     * id查询
     * @param id
     * @return
     */
    Pref findById(Integer id);

    /**
     * 添加
     * @param pref
     * @return
     */
    void add(Pref pref);

    /**
     * 更新
     * @param pref
     * @return
     */
    void update(Pref pref);

    /**
     * 删除
     * @param id
     */
    void delete(Integer id);
}
