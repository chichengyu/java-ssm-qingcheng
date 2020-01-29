package cn.qingcheng.exception.system;

import cn.qingcheng.entity.Response;
import cn.qingcheng.service.system.MenuService;
import com.alibaba.dubbo.config.annotation.Reference;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/menu")
public class MenuController {

    @Reference
    private MenuService menuService;

    /**
     * 菜单筛选
     * @return
     */
    @GetMapping("/findMenu")
    public Response<List<Map<String,Object>>> findMenu(){
        return Response.success(menuService.findAllMenu());
    }
}
