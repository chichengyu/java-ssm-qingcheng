package cn.qingcheng.service.impl;


import cn.qingcheng.dao.ParaMapper;
import cn.qingcheng.dao.TemplateMapper;
import cn.qingcheng.entity.PageResult;
import cn.qingcheng.pojo.goods.Para;
import cn.qingcheng.pojo.goods.Template;
import cn.qingcheng.service.goods.ParaService;
import com.alibaba.dubbo.config.annotation.Service;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import tk.mybatis.mapper.entity.Example;

import java.util.List;
import java.util.Map;

/**
 * 注意在使用 dubbo 时，如果需要事务，则需要在 @Service上加上 interfaceClass 属性，指定接口类型，
 * 如果不指定，这个接口被多个代理，不知道找那个接口，导致服务发布不成功
 */
@Service(interfaceClass = ParaService.class)
public class ParaServiceImpl implements ParaService {

    @Autowired
    private ParaMapper paraMapper;
    @Autowired
    private TemplateMapper templateMapper;

    /**
     * 查询所有规格
     * @return
     */
    @Override
    public List<Para> findAll() {
        return paraMapper.selectAll();
    }

    /**
     * 分页查询规格
     * @param page
     * @param size
     * @return
     */
    @Override
    public PageResult<Para> findPage(int page, int size) {
        PageHelper.startPage(page,size);
        Page<Para> paras = (Page<Para>)paraMapper.selectAll();
        return new PageResult<Para>(paras.getTotal(),paras.getResult());
    }

    /**
     * 搜索条件查询规格
     * @param searchMap
     * @return
     */
    @Override
    public List<Para> findList(Map<String, Object> searchMap) {
        return paraMapper.selectAll();
    }

    /**
     * 搜索分页查询
     * @param searchMap
     * @param page
     * @param size
     * @return
     */
    @Override
    public PageResult<Para> findPage(Map<String, Object> searchMap, int page, int size) {
        Example example = createExample(searchMap);
        PageHelper.startPage(page,size);
        Page<Para> paras = (Page<Para>) paraMapper.selectByExample(example);
        return new PageResult<Para>(paras.getTotal(),paras.getResult());
    }

    /**
     * id查询规格
     * @param id
     * @return
     */
    @Override
    public Para findById(Integer id) {
        return paraMapper.selectByPrimaryKey(id);
    }

    private Example createExample(Map<String, Object> searchMap){
        Example example = new Example(Para.class);
        Example.Criteria criteria = example.createCriteria();
        if (searchMap != null){
            // 名称
            if(searchMap.get("name")!=null && !"".equals(searchMap.get("name"))){
                criteria.andLike("name","%"+searchMap.get("name")+"%");
            }
            // 选项
            if(searchMap.get("options")!=null && !"".equals(searchMap.get("options"))){
                criteria.andLike("options","%"+searchMap.get("options")+"%");
            }

            // id
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
     * @param para
     * @return
     */
    @Override
    @Transactional
    public void add(Para para) {
        paraMapper.insertSelective(para);
        Template template = templateMapper.selectByPrimaryKey(para.getTemplateId());
        template.setParaNum(template.getParaNum()+1);
        templateMapper.updateByPrimaryKeySelective(template);
    }

    /**
     * 更新规格
     * @param para
     * @return
     */
    @Override
    public void update(Para para) {
        paraMapper.updateByPrimaryKeySelective(para);
    }

    /**
     * 删除规格
     * @param id
     */
    @Override
    @Transactional
    public void delete(Integer id) {
        Para para = paraMapper.selectByPrimaryKey(id);
        Template template = templateMapper.selectByPrimaryKey(para.getTemplateId());
        template.setParaNum(template.getParaNum()-1);
        templateMapper.updateByPrimaryKeySelective(template);
        paraMapper.deleteByPrimaryKey(id);
    }
}
