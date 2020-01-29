package cn.qingcheng.service.impl;

import cn.qingcheng.dao.LoginLogMapper;
import cn.qingcheng.pojo.system.LoginLog;
import cn.qingcheng.service.system.LoginLogService;
import com.alibaba.dubbo.config.annotation.Service;
import org.springframework.beans.factory.annotation.Autowired;

@Service
public class LoginLogServiceImpl implements LoginLogService {

    @Autowired
    private LoginLogMapper loginLogMapper;

    /**
     * 添加
     * @param loginLog
     */
    @Override
    public void add(LoginLog loginLog) {
        loginLogMapper.insertSelective(loginLog);
    }
}
