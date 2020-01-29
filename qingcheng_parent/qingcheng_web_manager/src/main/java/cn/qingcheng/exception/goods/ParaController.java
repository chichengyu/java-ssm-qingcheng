package cn.qingcheng.exception.goods;


import cn.qingcheng.entity.PageResult;
import cn.qingcheng.entity.Response;
import cn.qingcheng.pojo.goods.Para;
import cn.qingcheng.service.goods.ParaService;
import com.alibaba.dubbo.config.annotation.Reference;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/para")
public class ParaController {

    @Reference
    private ParaService paraService;

    @RequestMapping("/findAll")
    public List<Para> findAll(){
        return paraService.findAll();
    }

    /**
     * 分页查询参数
     * @param page
     * @param size
     * @return
     */
    @GetMapping("/findPage")
    public PageResult<Para> findPage(int page,int size){
        return paraService.findPage(page,size);
    }

    /**
     * 搜索条件查询参数
     * @param searchMap
     * @return
     */
    @PostMapping("/findList")
    public List<Para> findList(@RequestBody Map<String,Object> searchMap){
        return paraService.findList(searchMap);
    }


    /**
     * 搜索分页查询
     * @param searchMap
     * @param page
     * @param size
     * @return
     */
    @PostMapping("/findPage")
    public PageResult<Para> findPage(@RequestBody Map<String,Object> searchMap, int page, int size){
        return paraService.findPage(searchMap,page,size);
    }

    /**
     * id查询
     * @param id
     * @return
     */
    @GetMapping("/findById")
    public Para findById(Integer id){
        return paraService.findById(id);
    }

    /**
     * 添加参数
     * @param para
     * @return
     */
    @PostMapping("/add")
    public Response add(@RequestBody Para para){
        paraService.add(para);
        return Response.success();
    }

    /**
     * 更新参数
     * @param para
     * @return
     */
    @PostMapping("/update")
    public Response update(@RequestBody Para para){
        paraService.update(para);
        return Response.success();
    }

    /**
     * 删除参数
     * @param id
     * @return
     */
    @GetMapping("/delete")
    public Response update(Integer id){
        paraService.delete(id);
        return Response.success();
    }
}
