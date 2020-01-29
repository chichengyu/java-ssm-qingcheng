package cn.qingcheng.service.impl;

import cn.qingcheng.pojo.user.User;
import cn.qingcheng.service.user.UserService;
import com.alibaba.dubbo.config.annotation.Service;
import com.alibaba.fastjson.JSON;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;

import java.util.HashMap;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.TimeUnit;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private RedisTemplate redisTemplate;
    @Autowired
    private RabbitTemplate rabbitTemplate;

    /**
     * 发送短信   先将短信验证码发送到 rabbitMQ 消息中间件中，
     * 然后在让 rabbitMQ 消息中间件监听类中拿到消息给阿里短息服务商
     * @param phone
     */
    @Override
    public void sendSms(String phone) {
        // 1.生成短信验证码
        int code = new Random().nextInt(999999);
        if (code < 100000){
            code = code + 100000;
        }
        // 2.将验证码保存 redis 中
        redisTemplate.boundValueOps("code_" + phone).set(code);
        // redisTemplate.opsForValue().set("code",code);
        redisTemplate.boundValueOps("code_" + phone).expire(5, TimeUnit.MINUTES);// 设置过期时间 5分钟

        // 3.将短信发送到 mq
        Map<String,String> map = new HashMap<>();
        map.put("phone",phone);
        map.put("code",code+"");
        // 放到 queue.sms 队列中
        rabbitTemplate.convertAndSend("","queue.sms", JSON.toJSONString(map));
    }

    /**
     * 用户注册接收短信验证码并验证
     * @param user
     * @param code
     */
    @Override
    public void add(User user, String code) {
        // 1.效验
        String sysCode = (String) redisTemplate.boundValueOps("code_" + user.getPhone()).get();
        // 效验用户输入的验证码与发送的短信验证码是否相同
        if (sysCode == null){
            throw new RuntimeException("验证码未发生或已过期");
        }
        if (!sysCode.equals(code)){
            throw new RuntimeException("验证码不正确");
        }
        if (user.getUsername() == null){
            user.setUsername(user.getPhone());
        }
        // 用户名是否注册

        // 2.数据入库
        // ......
    }
}
