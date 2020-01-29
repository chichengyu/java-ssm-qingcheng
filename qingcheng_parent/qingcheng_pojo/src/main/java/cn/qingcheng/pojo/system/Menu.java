package cn.qingcheng.pojo.system;

import javax.persistence.Id;
import javax.persistence.Table;

@Table(name = "tb_menu")
public class Menu {

    @Id
    private String id;//菜单ID

    private String name;//菜单名称

    private String icon;//图标

    private String url;//URL

    private String parentId;//上级菜单ID

    public Menu() {
    }

    public Menu(String id, String name, String icon, String url, String parentId) {
        this.id = id;
        this.name = name;
        this.icon = icon;
        this.url = url;
        this.parentId = parentId;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getIcon() {
        return icon;
    }

    public void setIcon(String icon) {
        this.icon = icon;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getParentId() {
        return parentId;
    }

    public void setParentId(String parentId) {
        this.parentId = parentId;
    }
}
