package cn.qingcheng.exception.user;

import cn.qingcheng.entity.Response;
import cn.qingcheng.pojo.user.User;
import cn.qingcheng.service.user.UserService;
import com.alibaba.dubbo.config.annotation.Reference;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class UserController {

    @Reference
    private UserService userService;

    /**
     * 发送短信到 rabbitMQ 消息中间件
     * @param phone
     * @return
     */
    @GetMapping("/sendSms")
    public Response sendSms(String phone){
        userService.sendSms(phone);
        return Response.success();
    }

    /**
     * 用户注册
     * @param user
     * @param smsCode
     * @return
     */
    @PostMapping("/save")
    public Response save(@RequestBody User user, String smsCode){
        // 密码加密 spring sucrity 加密方式
        BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
        String newPassword = encoder.encode(user.getPassword());
        user.setPassword(newPassword);

        userService.add(user,smsCode);
        return Response.success();
    }
}
