package cn.qingcheng.exception.goods;

import cn.qingcheng.entity.PageResult;
import cn.qingcheng.entity.Response;
import cn.qingcheng.pojo.goods.Goods;
import cn.qingcheng.pojo.goods.Spu;
import cn.qingcheng.service.goods.SpuService;
import com.alibaba.dubbo.config.annotation.Reference;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/spe")
public class SpuController {

    @Reference
    private SpuService spuService;

    /**
     * 查询所有
     * @return
     */
    @GetMapping("/findAll")
    public List<Spu> findAll(){
        return spuService.findAll();
    }

    /**
     * 分页查询
     * @param page
     * @param size
     * @return
     */
    @GetMapping("/findPage")
    public PageResult<Spu> findPage(int page,int size){
        return spuService.findPage(page, size);
    }

    /**
     * 分页查询
     * @param searchMap
     * @return
     */
    @PostMapping("/findList")
    public List<Spu> findList(@RequestBody Map<String,Object> searchMap){
        return spuService.findList(searchMap);
    }

    /**
     * 搜素分页查询
     * @param searchMap
     * @param page
     * @param size
     * @return
     */
    @PostMapping("/findPage")
    public PageResult<Spu> findPage(@RequestBody Map<String,Object> searchMap,int page,int size){
        return spuService.findPage(searchMap,page, size);
    }

    /**
     * id查询
     * @param id
     * @return
     */
    public Spu findById(Integer id){
        return spuService.findById(id);
    }

    /**
     * 添加
     * @param spu
     */
    @PostMapping("/add")
    public Response add (Spu spu){
        spuService.add(spu);
        return Response.success();
    }

    /**
     * 更新
     * @param spu
     */
    @PostMapping("/update")
    public Response update (Spu spu){
        spuService.update(spu);
        return Response.success();
    }

    /**
     * 更新
     * @param id
     */
    @GetMapping("/delete")
    public Response delete (Integer id){
        spuService.delete(id);
        return Response.success();
    }

    /**
     * 添加 spu sku 联表
     * @param goods
     * @return
     */
    @PostMapping("/save")
    public Response save(Goods goods){
        spuService.saveGoods(goods);
        return Response.success();
    }

    /**
     * 修改页数据展示
     * @param id
     * @return
     */
    @GetMapping("/findGoodsById")
    public Response findGoodsById(String id){
        Goods goodsById = spuService.findGoodsById(id);
        return Response.success(goodsById);
    }

    /**
     * 商品审核
     * @param map
     * @return
     */
    @PostMapping("/audit")
    public Response audit(@RequestBody Map<String,String> map){
        spuService.audit(map.get("id"),map.get("status"),map.get("message"));
        return Response.success();
    }

    /**
     * 商品下架
     * @param id
     * @return
     */
    @PostMapping("/pull")
    public Response pull(String id){
        spuService.pull(id);
        return Response.success();
    }

    /**
     * 商品上架
     * @param id
     * @return
     */
    @PostMapping("/put")
    public Response put(String id){
        spuService.put(id);
        return Response.success();
    }

    /**
     * 商品上架
     * @param ids
     * @return
     */
    @PostMapping("/putMany")
    public Response putMany(String[] ids){
        int resultCount = spuService.putMany(ids);
        return Response.success("上架 " + resultCount + "个商品");
    }
}
