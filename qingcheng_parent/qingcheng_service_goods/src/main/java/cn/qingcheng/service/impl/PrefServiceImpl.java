package cn.qingcheng.service.impl;

import cn.qingcheng.dao.PrefMapper;
import cn.qingcheng.entity.PageResult;
import cn.qingcheng.pojo.goods.Pref;
import cn.qingcheng.service.goods.PrefService;
import com.alibaba.dubbo.config.annotation.Service;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import tk.mybatis.mapper.entity.Example;

import java.util.List;
import java.util.Map;

@Service
public class PrefServiceImpl implements PrefService {

    @Autowired
    private PrefMapper prefMapper;

    /**
     * 查询所有
     * @return
     */
    @Override
    public List<Pref> findAll() {
        return prefMapper.selectAll();
    }

    /**
     * 分页查询
     * @param page
     * @param size
     * @return
     */
    @Override
    public PageResult<Pref> findPage(int page, int size) {
        PageHelper.startPage(page,size);
        Page<Pref> prefs = (Page<Pref>)prefMapper.selectAll();
        return new PageResult<Pref>(prefs.getTotal(),prefs.getResult());
    }

    /**
     * 搜索条件查询
     * @param searchMap
     * @return
     */
    @Override
    public List<Pref> findList(Map<String, Object> searchMap) {
        return prefMapper.selectAll();
    }

    /**
     * 搜索分页查询
     * @param searchMap
     * @param page
     * @param size
     * @return
     */
    @Override
    public PageResult<Pref> findPage(Map<String, Object> searchMap, int page, int size) {
        Example example = createExample(searchMap);
        PageHelper.startPage(page,size);
        Page<Pref> prefs = (Page<Pref>)prefMapper.selectByExample(example);
        return new PageResult<Pref>(prefs.getTotal(),prefs.getResult());
    }

    /**
     * id查询
     * @param id
     * @return
     */
    @Override
    public Pref findById(Integer id) {
        return prefMapper.selectByPrimaryKey(id);
    }

    private Example createExample(Map<String, Object> searchMap){
        Example example = new Example(Pref.class);
        Example.Criteria criteria = example.createCriteria();
        if(searchMap!=null){
            // 类型
            if(searchMap.get("type")!=null && !"".equals(searchMap.get("type"))){
                criteria.andLike("type","%"+searchMap.get("type")+"%");
            }
            // 状态
            if(searchMap.get("state")!=null && !"".equals(searchMap.get("state"))){
                criteria.andLike("state","%"+searchMap.get("state")+"%");
            }
            // ID
            if(searchMap.get("id")!=null ){
                criteria.andEqualTo("id",searchMap.get("id"));
            }
            // 分类ID
            if(searchMap.get("cateId")!=null ){
                criteria.andEqualTo("cateId",searchMap.get("cateId"));
            }
            // 消费金额
            if(searchMap.get("buyMoney")!=null ){
                criteria.andEqualTo("buyMoney",searchMap.get("buyMoney"));
            }
            // 优惠金额
            if(searchMap.get("preMoney")!=null ){
                criteria.andEqualTo("preMoney",searchMap.get("preMoney"));
            }
        }
        return example;
    }

    /**
     * 添加
     * @param pref
     * @return
     */
    @Override
    public void add(Pref pref) {
        prefMapper.insertSelective(pref);
    }

    /**
     * 更新
     * @param pref
     * @return
     */
    @Override
    public void update(Pref pref) {
        prefMapper.updateByPrimaryKeySelective(pref);
    }

    /**
     * 删除
     * @param id
     */
    @Override
    public void delete(Integer id) {
        prefMapper.deleteByPrimaryKey(id);
    }
}
