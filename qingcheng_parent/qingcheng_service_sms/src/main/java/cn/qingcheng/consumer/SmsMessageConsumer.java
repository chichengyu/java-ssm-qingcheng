package cn.qingcheng.consumer;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import org.springframework.amqp.core.Message;
import org.springframework.amqp.core.MessageListener;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;

import java.util.HashMap;
import java.util.Map;

/**
 *  rabbitMQ 监听类
 */

public class SmsMessageConsumer implements MessageListener {

    @Autowired
    private SmsUtil smsUtil;
    @Value("${smsCode}")
    private String smsCode;
    @Value("${param}")
    private String param;// {"code":"value"}

    /**
     * 获取消息队列中的消息
     * @param message
     */
    @Override
    public void onMessage(Message message) {
        byte[] body = message.getBody();
        String jsonString = new String(body);
        Map<String,String> map = JSON.parseObject(jsonString, Map.class);
        // 手机号
        String phone = map.get("phone");
        // 验证码
        String code = map.get("code");

        // 阿里云短信发送
        String code1 = String.format("{\"code\":\"%s\"}",123);

        /*
        JSONObject object = new JSONObject();
        object.put("code",456);
        String code = object.toString();

        Map<String, Object> map = new HashMap<>();
        map.put("code",789);
        String code = JSON.toJSON(object).toString();
         */

        smsUtil.sendSms(phone,smsCode,code1);
    }
}
