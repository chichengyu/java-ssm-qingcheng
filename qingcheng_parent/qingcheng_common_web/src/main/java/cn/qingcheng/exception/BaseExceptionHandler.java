package cn.qingcheng.exception;

import cn.qingcheng.entity.Response;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * 全局异常通知
 */
@ControllerAdvice
public class BaseExceptionHandler {

    @ExceptionHandler(Exception.class)
    @ResponseBody
    public Response handler(Exception e){
        e.printStackTrace();
        return Response.error(e.getMessage());
    }
}
