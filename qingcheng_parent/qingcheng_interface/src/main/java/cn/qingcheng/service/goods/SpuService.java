package cn.qingcheng.service.goods;

import cn.qingcheng.entity.PageResult;
import cn.qingcheng.pojo.goods.Goods;
import cn.qingcheng.pojo.goods.Spu;

import java.util.List;
import java.util.Map;

public interface SpuService {

    /**
     * 查询所有
     * @return
     */
    List<Spu> findAll();

    /**
     * 分页查询
     * @param page
     * @param size
     * @return
     */
    PageResult<Spu> findPage(int page,int size);

    /**
     * 搜素查询
     * @param searchMap
     * @return
     */
    List<Spu> findList(Map<String,Object> searchMap);

    /**
     * 搜素分页查询
     * @param searchMap
     * @param page
     * @param size
     * @return
     */
    PageResult<Spu> findPage(Map<String,Object> searchMap,int page,int size);

    /**
     * id查询
     * @param id
     * @return
     */
    Spu findById(Integer id);

    /**
     * 添加
     * @param spu
     */
    void add(Spu spu);

    /**
     * 更新
     * @param spu
     */
    void update(Spu spu);

    /**
     * 删除 spu
     * @param id
     */
    void delete(Integer id);

    /**
     * 添加 spu sku 联表
     * @param goods
     */
    void saveGoods(Goods goods);

    /**
     * 修改页数据展示
     * @param id
     * @return
     */
    Goods findGoodsById(String id);

    /**
     * 商品审核
     * @param id
     * @param status
     * @param message
     */
    void audit(String id,String status,String message);

    /**
     * 商品下架
     * @param id
     */
    void pull(String id);

    /**
     * 商品上架
     * @param id
     */
    void put(String id);

    /**
     * 批量上架
     * @param ids
     * @return
     */
    int putMany(String[] ids);
}
