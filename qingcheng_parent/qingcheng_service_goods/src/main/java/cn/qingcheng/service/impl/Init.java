package cn.qingcheng.service.impl;

import org.springframework.beans.factory.InitializingBean;
import org.springframework.stereotype.Component;

/**  redis 缓存预热
 * 工程启动时执行的类
 */
@Component
public class Init implements InitializingBean {

    /**
     * 工程启动时执行的方法
     * @throws Exception
     */
    @Override
    public void afterPropertiesSet() throws Exception {
        // 工程启动的时候吧数据库的数据查询出来放到 redis 缓存中
        System.out.println("工程启动时执行的方法");
    }
}
