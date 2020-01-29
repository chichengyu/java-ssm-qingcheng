package cn.qingcheng.service.goods;

import cn.qingcheng.pojo.goods.Sku;

public interface SkuService {

    /**
     * 添加
     * @param sku
     */
    void add(Sku sku);

    /**
     * 更新
     * @param sku
     */
    void update(Sku sku);

    /**
     * 删除 sku
     * @param id
     */
    void delete(Integer id);
}
