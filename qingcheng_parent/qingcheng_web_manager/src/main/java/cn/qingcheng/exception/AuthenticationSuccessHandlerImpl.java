package cn.qingcheng.exception;

import cn.qingcheng.pojo.system.LoginLog;
import cn.qingcheng.service.system.LoginLogService;
import cn.qingcheng.util.WebUtil;
import com.alibaba.dubbo.config.annotation.Reference;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;

public class AuthenticationSuccessHandlerImpl implements AuthenticationSuccessHandler {

    @Reference
    private LoginLogService loginLogService;

    @Override
    public void onAuthenticationSuccess(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Authentication authentication) throws IOException, ServletException {
        // security 登陆成功后 会调用
        System.out.println("登陆成功后，会执行，记录日志");

        String name = authentication.getName();
        String ip = httpServletRequest.getRemoteAddr();
        /* security 获取用户id
        LoginLog principal = (LoginLog)authentication.getPrincipal();
        Integer id = principal.getId();
        */
        LoginLog loginLog = new LoginLog();
        loginLog.setLoginName(name);// 当前登陆用户名称
        loginLog.setIp(ip);// 远程客户端ip
        loginLog.setBrowserName(WebUtil.getBrowserName(httpServletRequest.getHeader("user-agent")));// 浏览器名称
        loginLog.setLocation(WebUtil.getCityByIP(ip));// 地区
        loginLog.setLoginTime(new Date());// 当前登陆时间

        loginLogService.add(loginLog);
        httpServletRequest.getRequestDispatcher("/view/main.html").forward(httpServletRequest,httpServletResponse);
    }
}
