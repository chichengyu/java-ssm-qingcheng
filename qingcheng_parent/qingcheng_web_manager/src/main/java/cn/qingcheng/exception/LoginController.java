package cn.qingcheng.exception;

import cn.qingcheng.entity.Response;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping("/login")
public class LoginController {

    /**
     * 获取当前登陆用户名称
     * @return
     */
    @GetMapping("/name")
    public Response showName(){
        // 从 security 上下文中的 getAuthentication 验证对象中获取当前登陆用户名称
        String name = SecurityContextHolder.getContext().getAuthentication().getName();
        Map<String, String> map = new HashMap<>();
        map.put("name",name);
        return Response.success(map);
    }
}
