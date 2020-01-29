package cn.qingcheng.pojo.system;

import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

@Table(name = "tb_admin")
public class Admin implements Serializable {

    @Id
    private Integer id;//id

    private String loginName;//用户名

    private String password;//密码

    private String status;//状态

    public Admin() {
    }

    public Admin(Integer id, String loginName, String password, String status) {
        this.id = id;
        this.loginName = loginName;
        this.password = password;
        this.status = status;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getLoginName() {
        return loginName;
    }

    public void setLoginName(String loginName) {
        this.loginName = loginName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
