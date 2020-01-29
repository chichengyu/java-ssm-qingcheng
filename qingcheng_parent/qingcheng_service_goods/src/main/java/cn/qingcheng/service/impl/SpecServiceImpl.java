package cn.qingcheng.service.impl;


import cn.qingcheng.dao.SpecMapper;
import cn.qingcheng.dao.TemplateMapper;
import cn.qingcheng.entity.PageResult;
import cn.qingcheng.pojo.goods.Spec;
import cn.qingcheng.pojo.goods.Template;
import cn.qingcheng.service.goods.SpecService;
import com.alibaba.dubbo.config.annotation.Service;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import tk.mybatis.mapper.entity.Example;

import java.util.List;
import java.util.Map;

/**
 * 注意在使用 dubbo 时，如果需要事务，则需要在 @Service上加上 interfaceClass 属性，指定接口类型
 */
@Service(interfaceClass = SpecService.class)
public class SpecServiceImpl implements SpecService {

    @Autowired
    private SpecMapper specMapper;
    @Autowired
    private TemplateMapper templateMapper;


    /**
     * 查询所有规格
     * @return
     */
    @Override
    public List<Spec> findAll() {
        return specMapper.selectAll();
    }

    /**
     * 分页查询规格
     * @param page
     * @param size
     * @return
     */
    @Override
    public PageResult<Spec> findPage(int page, int size) {
        PageHelper.startPage(page,size);
        Page<Spec> specs = (Page<Spec>)specMapper.selectAll();
        return new PageResult<Spec>(specs.getTotal(),specs.getResult());
    }

    /**
     * 搜索条件查询规格
     * @param searchMap
     * @return
     */
    @Override
    public List<Spec> findList(Map<String, Object> searchMap) {
        return specMapper.selectAll();
    }

    /**
     * 搜索分页查询
     * @param searchMap
     * @param page
     * @param size
     * @return
     */
    @Override
    public PageResult<Spec> findPage(Map<String, Object> searchMap, int page, int size) {
        Example example = createExample(searchMap);
        PageHelper.startPage(page,size);
        Page<Spec> specs = (Page<Spec>) specMapper.selectByExample(example);
        return new PageResult<Spec>(specs.getTotal(),specs.getResult());
    }

    /**
     * id查询规格
     * @param id
     * @return
     */
    @Override
    public Spec findById(Integer id) {
        return specMapper.selectByPrimaryKey(id);
    }

    private Example createExample(Map<String, Object> searchMap){
        Example example = new Example(Spec.class);
        Example.Criteria criteria = example.createCriteria();
        if (searchMap != null){
            // 名称
            if(searchMap.get("name")!=null && !"".equals(searchMap.get("name"))){
                criteria.andLike("name","%"+searchMap.get("name")+"%");
            }
            // 规格选项
            if(searchMap.get("options")!=null && !"".equals(searchMap.get("options"))){
                criteria.andLike("options","%"+searchMap.get("options")+"%");
            }

            // ID
            if(searchMap.get("id")!=null ){
                criteria.andEqualTo("id",searchMap.get("id"));
            }
            // 排序
            if(searchMap.get("seq")!=null ){
                criteria.andEqualTo("seq",searchMap.get("seq"));
            }
            // 模板ID
            if(searchMap.get("templateId")!=null ){
                criteria.andEqualTo("templateId",searchMap.get("templateId"));
            }
        }
        return example;
    }

    // ================================= 添加 =========================
    /**
     * 添加规格
     * @param spec
     * @return
     */
    @Override
    @Transactional
    public void add(Spec spec) {
        specMapper.insertSelective(spec);
        Template template = templateMapper.selectByPrimaryKey(spec.getTemplateId());
        template.setSpecNum(template.getSpecNum()+1);
        templateMapper.updateByPrimaryKeySelective(template);
    }

    /**
     * 更新规格
     * @param spec
     * @return
     */
    @Override
    public void update(Spec spec) {
        specMapper.updateByPrimaryKeySelective(spec);
    }

    /**
     * 删除规格
     * @param id
     */
    @Override
    @Transactional
    public void delete(Integer id) {
        Spec spec = specMapper.selectByPrimaryKey(id);
        Template template = templateMapper.selectByPrimaryKey(spec.getTemplateId());
        template.setSpecNum(template.getSpecNum() - 1);
        templateMapper.updateByPrimaryKeySelective(template);
        specMapper.deleteByPrimaryKey(id);
    }
}
