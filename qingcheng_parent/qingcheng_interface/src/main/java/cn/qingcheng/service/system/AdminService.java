package cn.qingcheng.service.system;

import cn.qingcheng.pojo.system.Admin;

import java.util.List;
import java.util.Map;

public interface AdminService {

    /**
     * 搜索条件查询
     * @param searchMap
     * @return
     */
    List<Admin> findList(Map<String,Object> searchMap);
}
