package com.ruoyi.project.wms.workshopmanage.worker.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.framework.aspectj.lang.annotation.Excel;
import com.ruoyi.framework.web.domain.BaseEntity;
import java.util.Date;

/**
 * 【请填写功能名称】对象 t_worker
 * 
 * @author ruoyi
 * @date 2020-12-29
 */
public class TWorker extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 员工编号 */
    private Long wid;

    /** 员工姓名 */
    @Excel(name = "员工姓名")
    private String wname;

    /** 员工年龄 */
    @Excel(name = "员工年龄")
    private String wage;

    /** 员工性别 */
    @Excel(name = "员工性别")
    private String wsex;

    /** 入职日期 */
    @Excel(name = "入职日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date whiredate;

    /** 离职日期 */
    @Excel(name = "离职日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date wleavedate;

    /** 员工薪资 */
    @Excel(name = "员工薪资")
    private Double wsalary;

    public void setWid(Long wid) 
    {
        this.wid = wid;
    }

    public Long getWid() 
    {
        return wid;
    }
    public void setWname(String wname) 
    {
        this.wname = wname;
    }

    public String getWname() 
    {
        return wname;
    }
    public void setWage(String wage) 
    {
        this.wage = wage;
    }

    public String getWage() 
    {
        return wage;
    }
    public void setWsex(String wsex) 
    {
        this.wsex = wsex;
    }

    public String getWsex() 
    {
        return wsex;
    }
    public void setWhiredate(Date whiredate) 
    {
        this.whiredate = whiredate;
    }

    public Date getWhiredate() 
    {
        return whiredate;
    }
    public void setWleavedate(Date wleavedate) 
    {
        this.wleavedate = wleavedate;
    }

    public Date getWleavedate() 
    {
        return wleavedate;
    }
    public void setWsalary(Double wsalary) 
    {
        this.wsalary = wsalary;
    }

    public Double getWsalary() 
    {
        return wsalary;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("wid", getWid())
            .append("wname", getWname())
            .append("wage", getWage())
            .append("wsex", getWsex())
            .append("whiredate", getWhiredate())
            .append("wleavedate", getWleavedate())
            .append("wsalary", getWsalary())
            .toString();
    }
}
