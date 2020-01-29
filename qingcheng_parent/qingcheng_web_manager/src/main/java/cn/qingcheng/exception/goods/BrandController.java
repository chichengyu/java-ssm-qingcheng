package cn.qingcheng.exception.goods;


import cn.qingcheng.entity.PageResult;
import cn.qingcheng.entity.Response;
import cn.qingcheng.pojo.goods.Brand;
import cn.qingcheng.service.goods.BrandService;
import com.alibaba.dubbo.config.annotation.Reference;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/brand")
public class BrandController {
    /*=========
        远程服务用 @Reference注解
        本地服务用 @Autowired
    ========*/
    @Reference
    private BrandService brandService;


    @RequestMapping("/findAll")
    public List<Brand> findAll(){
        return brandService.findAll();
    }

    /**
     * 分页查询品牌
     * @param page
     * @param size
     * @return
     */
    @GetMapping("/findPage")
    public PageResult<Brand> findPage(int page,int size){
        return brandService.findPage(page,size);
    }

    /**
     * 搜索条件查询品牌
     * @param searchMap
     * @return
     */
    @PostMapping("/findList")
    public List<Brand> findList(@RequestBody Map<String,Object> searchMap){
        return brandService.findList(searchMap);
    }

    /**
     * 搜索分页查询
     * @param searchMap
     * @param page
     * @param size
     * @return
     */
    @PostMapping("/findPage")
    public PageResult<Brand> findPage(@RequestBody Map<String,Object> searchMap,int page,int size){
        return brandService.findPage(searchMap,page,size);
    }

    /**
     * id查询
     * @param id
     * @return
     */
    @GetMapping("/findById")
    public Brand findById(Integer id){
        return brandService.findById(id);
    }

    /**
     * 添加品牌
     * @param brand
     * @return
     */
    @PostMapping("/add")
    public Response add(@RequestBody Brand brand){
        brandService.add(brand);
        return Response.success();
    }

    /**
     * 更新品牌
     * @param brand
     * @return
     */
    @PostMapping("/update")
    public Response update(@RequestBody Brand brand){
        brandService.update(brand);
        return Response.success();
    }

    /**
     * 删除品牌
     * @param id
     * @return
     */
    @GetMapping("/delete")
    public Response update(Integer id){
        brandService.delete(id);
        return Response.success();
    }
}
