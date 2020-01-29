package cn.qingcheng.exception.goods;


import cn.qingcheng.entity.PageResult;
import cn.qingcheng.entity.Response;
import cn.qingcheng.pojo.goods.Spec;
import cn.qingcheng.service.goods.SpecService;
import com.alibaba.dubbo.config.annotation.Reference;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/spec")
public class SpecController {

    @Reference
    private SpecService specService;

    @RequestMapping("/findAll")
    public List<Spec> findAll(){
        return specService.findAll();
    }

    /**
     * 分页查询规格
     * @param page
     * @param size
     * @return
     */
    @GetMapping("/findPage")
    public PageResult<Spec> findPage(int page,int size){
        return specService.findPage(page,size);
    }

    /**
     * 搜索条件查询规格
     * @param searchMap
     * @return
     */
    @PostMapping("/findList")
    public List<Spec> findList(@RequestBody Map<String,Object> searchMap){
        return specService.findList(searchMap);
    }


    /**
     * 搜索分页查询
     * @param searchMap
     * @param page
     * @param size
     * @return
     */
    @PostMapping("/findPage")
    public PageResult<Spec> findPage(@RequestBody Map<String,Object> searchMap, int page, int size){
        return specService.findPage(searchMap,page,size);
    }

    /**
     * id查询
     * @param id
     * @return
     */
    @GetMapping("/findById")
    public Spec findById(Integer id){
        return specService.findById(id);
    }

    /**
     * 添加规格
     * @param spec
     * @return
     */
    @PostMapping("/add")
    public Response add(@RequestBody Spec spec){
        specService.add(spec);
        return Response.success();
    }

    /**
     * 更新规格
     * @param spec
     * @return
     */
    @PostMapping("/update")
    public Response update(@RequestBody Spec spec){
        specService.update(spec);
        return Response.success();
    }

    /**
     * 删除规格
     * @param id
     * @return
     */
    @GetMapping("/delete")
    public Response update(Integer id){
        specService.delete(id);
        return Response.success();
    }
}
