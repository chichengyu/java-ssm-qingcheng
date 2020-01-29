package cn.qingcheng.service.goods;

import cn.qingcheng.entity.PageResult;
import cn.qingcheng.pojo.goods.Template;

import java.util.List;
import java.util.Map;

public interface TemplateService {

    /**
     * 查询所有模板
     * @return
     */
    public List<Template> findAll();

    /**
     * 分页查询模板
     * @param page
     * @param size
     * @return
     */
    public PageResult<Template> findPage(int page, int size);

    /**
     * 搜索条件查询模板
     * @param searchMap
     * @return
     */
    List<Template> findList(Map<String, Object> searchMap);

    /**
     * 搜索分页查询
     * @param searchMap
     * @param page
     * @param size
     * @return
     */
    public PageResult<Template> findPage(Map<String, Object> searchMap, int page, int size);

    /**
     * id查询模板
     * @param id
     * @return
     */
    Template findById(Integer id);

    /**
     * 添加模板
     * @param Template
     * @return
     */
    void add(Template Template);

    /**
     * 更新模板
     * @param Template
     * @return
     */
    void update(Template Template);

    /**
     * 删除模板
     * @param id
     */
    void delete(Integer id);
}
