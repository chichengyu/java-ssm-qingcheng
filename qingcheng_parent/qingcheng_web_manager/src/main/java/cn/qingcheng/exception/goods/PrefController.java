package cn.qingcheng.exception.goods;


import cn.qingcheng.entity.PageResult;
import cn.qingcheng.entity.Response;
import cn.qingcheng.pojo.goods.Pref;
import cn.qingcheng.service.goods.PrefService;
import com.alibaba.dubbo.config.annotation.Reference;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/pref")
public class PrefController {

    @Reference
    private PrefService prefService;

    /**
     * 查询所有
     * @return
     */
    @RequestMapping("/findAll")
    public List<Pref> findAll(){
        return prefService.findAll();
    }

    /**
     * 分页查询
     * @prefm page
     * @prefm size
     * @return
     */
    @GetMapping("/findPage")
    public PageResult<Pref> findPage(int page, int size){
        return prefService.findPage(page,size);
    }

    /**
     * 搜索条件查询
     * @prefm searchMap
     * @return
     */
    @PostMapping("/findList")
    public List<Pref> findList(@RequestBody Map<String,Object> searchMap){
        return prefService.findList(searchMap);
    }


    /**
     * 搜索分页查询
     * @prefm searchMap
     * @prefm page
     * @prefm size
     * @return
     */
    @PostMapping("/findPage")
    public PageResult<Pref> findPage(@RequestBody Map<String,Object> searchMap, int page, int size){
        return prefService.findPage(searchMap,page,size);
    }

    /**
     * id查询
     * @prefm id
     * @return
     */
    @GetMapping("/findById")
    public Pref findById(Integer id){
        return prefService.findById(id);
    }

    /**
     * 添加
     * @prefm pref
     * @return
     */
    @PostMapping("/add")
    public Response add(@RequestBody Pref pref){
        prefService.add(pref);
        return Response.success();
    }

    /**
     * 更新
     * @prefm pref
     * @return
     */
    @PostMapping("/update")
    public Response update(@RequestBody Pref pref){
        prefService.update(pref);
        return Response.success();
    }

    /**
     * 删除
     * @prefm id
     * @return
     */
    @GetMapping("/delete")
    public Response update(Integer id){
        prefService.delete(id);
        return Response.success();
    }
}
