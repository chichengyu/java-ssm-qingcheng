package cn.qingcheng.service.impl;

import cn.qingcheng.dao.SkuMapper;
import cn.qingcheng.pojo.goods.Sku;
import cn.qingcheng.service.goods.SkuService;
import com.alibaba.dubbo.config.annotation.Service;
import org.springframework.beans.factory.annotation.Autowired;

@Service
public class SkuServiceImpl implements SkuService {

    @Autowired
    private SkuMapper skuMapper;

    /**
     * 添加
     * @param sku
     */
    @Override
    public void add(Sku sku) {
        skuMapper.insertSelective(sku);
    }

    /**
     * 更新
     * @param sku
     */
    @Override
    public void update(Sku sku) {
        skuMapper.updateByPrimaryKeySelective(sku);
    }

    /**
     * 删除
     * @param id
     */
    @Override
    public void delete(Integer id) {
        skuMapper.deleteByPrimaryKey(id);
    }
}
