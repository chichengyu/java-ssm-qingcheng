package cn.qingcheng.pojo.goods;

import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;
import java.util.Date;

@Table(name = "tb_pref")
public class Pref implements Serializable {

    @Id
    private Integer id;

    private Integer cateId;//分类ID

    private Integer buyMoney;//消费金额

    private Integer preMoney;//优惠金额

    private Date startTime;//活动开始日期

    private Date endTime;//活动截至日期

    private String type;//类型

    private String state;//状态

    public Pref() {
    }

    public Pref(Integer id, Integer cateId, Integer buyMoney, Integer preMoney, Date startTime, Date endTime, String type, String state) {
        this.id = id;
        this.cateId = cateId;
        this.buyMoney = buyMoney;
        this.preMoney = preMoney;
        this.startTime = startTime;
        this.endTime = endTime;
        this.type = type;
        this.state = state;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getCateId() {
        return cateId;
    }

    public void setCateId(Integer cateId) {
        this.cateId = cateId;
    }

    public Integer getBuyMoney() {
        return buyMoney;
    }

    public void setBuyMoney(Integer buyMoney) {
        this.buyMoney = buyMoney;
    }

    public Integer getPreMoney() {
        return preMoney;
    }

    public void setPreMoney(Integer preMoney) {
        this.preMoney = preMoney;
    }

    public Date getStartTime() {
        return startTime;
    }

    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }

    public Date getEndTime() {
        return endTime;
    }

    public void setEndTime(Date endTime) {
        this.endTime = endTime;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    @Override
    public String toString() {
        return "Pref{" +
                "id=" + id +
                ", cateId=" + cateId +
                ", buyMoney=" + buyMoney +
                ", preMoney=" + preMoney +
                ", startTime=" + startTime +
                ", endTime=" + endTime +
                ", type='" + type + '\'' +
                ", state='" + state + '\'' +
                '}';
    }
}
