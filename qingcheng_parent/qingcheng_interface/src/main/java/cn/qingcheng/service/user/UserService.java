package cn.qingcheng.service.user;

import cn.qingcheng.pojo.user.User;

public interface UserService {

    /**
     * 发生短信到 rabbitMQ
     * @param phone
     */
    public void sendSms(String phone);

    /**
     * 用户注册接收短信验证码并验证
     * @param user
     * @param code
     */
    public void add(User user, String code);
}
