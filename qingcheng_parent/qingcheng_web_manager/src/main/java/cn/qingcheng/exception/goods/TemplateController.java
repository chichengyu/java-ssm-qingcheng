package cn.qingcheng.exception.goods;


import cn.qingcheng.entity.PageResult;
import cn.qingcheng.entity.Response;
import cn.qingcheng.pojo.goods.Template;
import cn.qingcheng.service.goods.TemplateService;
import com.alibaba.dubbo.config.annotation.Reference;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/template")
public class TemplateController {
    /*=========
        远程服务用 @Reference注解
        本地服务用 @Autowired
    ========*/
    @Reference
    private TemplateService templateService;


    @RequestMapping("/findAll")
    public List<Template> findAll(){
        return templateService.findAll();
    }

    /**
     * 分页查询模板
     * @param page
     * @param size
     * @return
     */
    @GetMapping("/findPage")
    public PageResult<Template> findPage(int page,int size){
        return templateService.findPage(page,size);
    }

    /**
     * 搜索条件查询模板
     * @param searchMap
     * @return
     */
    @PostMapping("/findList")
    public List<Template> findList(@RequestBody Map<String,Object> searchMap){
        return templateService.findList(searchMap);
    }

    /**
     * 搜索分页查询
     * @param searchMap
     * @param page
     * @param size
     * @return
     */
    @PostMapping("/findPage")
    public PageResult<Template> findPage(@RequestBody Map<String,Object> searchMap,int page,int size){
        return templateService.findPage(searchMap,page,size);
    }

    /**
     * id查询
     * @param id
     * @return
     */
    @GetMapping("/findById")
    public Template findById(Integer id){
        return templateService.findById(id);
    }

    /**
     * 添加模板
     * @param template
     * @return
     */
    @PostMapping("/add")
    public Response add(@RequestBody Template template){
        templateService.add(template);
        return Response.success();
    }

    /**
     * 更新模板
     * @param template
     * @return
     */
    @PostMapping("/update")
    public Response update(@RequestBody Template template){
        templateService.update(template);
        return Response.success();
    }

    /**
     * 删除模板
     * @param id
     * @return
     */
    @GetMapping("/delete")
    public Response update(Integer id){
        templateService.delete(id);
        return Response.success();
    }
}
