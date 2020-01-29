package cn.qingcheng.service.impl;

import cn.qingcheng.dao.TemplateMapper;
import cn.qingcheng.entity.PageResult;
import cn.qingcheng.pojo.goods.Template;
import cn.qingcheng.service.goods.TemplateService;
import com.alibaba.dubbo.config.annotation.Service;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import tk.mybatis.mapper.entity.Example;

import java.util.List;
import java.util.Map;

@Service
public class TemplateServiceImpl implements TemplateService {

    @Autowired
    private TemplateMapper templateMapper;

    /**
     * 查询所有模板
     * @return
     */
    @Override
    public List<Template> findAll() {
        return templateMapper.selectAll();
    }

    /**
     * 分页查询模板
     * @param page
     * @param size
     * @return
     */
    @Override
    public PageResult<Template> findPage(int page, int size) {
        PageHelper.startPage(page,size);
        Page<Template> templates = (Page<Template>)templateMapper.selectAll();
        return new PageResult<Template>(templates.getTotal(),templates.getResult());
    }

    /**
     * 搜索条件查询模板
     * @param searchMap
     * @return
     */
    @Override
    public List<Template> findList(Map<String, Object> searchMap) {
        Example example = createExample(searchMap);
        return templateMapper.selectByExample(example);
    }

    /**
     * 搜索分页查询
     * @param searchMap
     * @param page
     * @param size
     * @return
     */
    @Override
    public PageResult<Template> findPage(Map<String, Object> searchMap, int page, int size) {
        Example example = createExample(searchMap);
        PageHelper.startPage(page,size);
        Page<Template> templates= (Page<Template>)templateMapper.selectByExample(example);
        return new PageResult<Template>(templates.getTotal(),templates.getResult());
    }

    /**
     * id查询模板
     * @param id
     * @return
     */
    @Override
    public Template findById(Integer id) {
        return templateMapper.selectByPrimaryKey(id);
    }

    /** 通用 mapper
     * 创建搜索条件 Example
     * @param searchMap
     * @return
     */
    private Example createExample(Map<String, Object> searchMap){
        Example example = new Example(Template.class);
        Example.Criteria criteria = example.createCriteria();
        if (searchMap != null){
            // ID
            if(searchMap.get("id")!=null ){
                criteria.andEqualTo("id",searchMap.get("id"));
            }
            // 模板名称
            if(searchMap.get("name")!=null && !"".equals(searchMap.get("name"))){
                criteria.andLike("name","%"+searchMap.get("name")+"%");
            }
            // 规格数量
            if(searchMap.get("specNum")!=null ){
                criteria.andEqualTo("specNum",searchMap.get("specNum"));
            }
            // 参数数量
            if(searchMap.get("paraNum")!=null ){
                criteria.andEqualTo("paraNum",searchMap.get("paraNum"));
            }
        }
        return example;
    }

    // ================================= 添加 =========================
    /**
     * 添加模板
     * @param template
     * @return
     */
    @Override
    public void add(Template template) {
        template.setParaNum(0);
        template.setSpecNum(0);
        templateMapper.insertSelective(template);
    }

    // ================================= 更新 =========================
    /**
     * 更新模板
     * @param template
     * @return
     */
    @Override
    public void update(Template template) {
        templateMapper.updateByPrimaryKeySelective(template);
    }

    /**
     * 删除模板
     * @param id
     */
    @Override
    public void delete(Integer id) {
        templateMapper.deleteByPrimaryKey(id);
    }
}
