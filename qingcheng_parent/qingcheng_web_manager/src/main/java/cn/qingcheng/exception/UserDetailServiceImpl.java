package cn.qingcheng.exception;

import cn.qingcheng.pojo.system.Admin;
import cn.qingcheng.service.system.AdminService;
import com.alibaba.dubbo.config.annotation.Reference;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.List;

public class UserDetailServiceImpl implements UserDetailsService {

    @Reference
    private AdminService adminService;

    /**
     * 登陆验证
     * @param s 提交的 username
     * @return
     * @throws UsernameNotFoundException
     */
    @Override
    public UserDetails loadUserByUsername(String s) throws UsernameNotFoundException {
        System.out.println("经过了UserDetailServiceImpl");

        Map<String, Object> searchMap = new HashMap<>();
        searchMap.put("loginName",s);
        searchMap.put("status","1");
        List<Admin> list = adminService.findList(searchMap);
        if (list.size() == 0){
            return null;
        }
        //实际项目中应该从数据库中提取用户的角色列表
        List<GrantedAuthority> grantedAuthorities = new ArrayList<GrantedAuthority>();
        grantedAuthorities.add(new SimpleGrantedAuthority("ROLE_ADMIN"));
        //return new User("admin","$2a$10$61ogZY7EXsMDWeVGQpDq3OBF1.phaUu7.xrwLyWFTOu8woE08zMIW",grantedAuthorities);
        return new User(s,list.get(0).getPassword(),grantedAuthorities);
    }
}
