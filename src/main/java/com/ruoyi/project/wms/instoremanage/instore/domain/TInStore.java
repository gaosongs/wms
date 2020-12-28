package com.ruoyi.project.wms.instoremanage.instore.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.framework.aspectj.lang.annotation.Excel;
import com.ruoyi.framework.web.domain.BaseEntity;
import java.util.Date;

/**
 * 【请填写功能名称】对象 t_in_store
 * 
 * @author ruoyi
 * @date 2020-12-28
 */
public class TInStore extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 入库编号 */
    private Integer inid;

    /** 货物名称 */
    @Excel(name = "货物名称")
    private String inname;

    /** 货物类型 */
    @Excel(name = "货物类型")
    private String intype;

    /** 货物数量 */
    @Excel(name = "货物数量")
    private Integer innum;

    /** 入库时间 */
    @Excel(name = "入库时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date intime;

    /** 订单编号 */
    @Excel(name = "订单编号")
    private Integer oid;

    public void setInid(Integer inid) 
    {
        this.inid = inid;
    }

    public Integer getInid() 
    {
        return inid;
    }
    public void setInname(String inname) 
    {
        this.inname = inname;
    }

    public String getInname() 
    {
        return inname;
    }
    public void setIntype(String intype) 
    {
        this.intype = intype;
    }

    public String getIntype() 
    {
        return intype;
    }
    public void setInnum(Integer innum) 
    {
        this.innum = innum;
    }

    public Integer getInnum() 
    {
        return innum;
    }
    public void setIntime(Date intime) 
    {
        this.intime = intime;
    }

    public Date getIntime() 
    {
        return intime;
    }
    public void setOid(Integer oid) 
    {
        this.oid = oid;
    }

    public Integer getOid() 
    {
        return oid;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("inid", getInid())
            .append("inname", getInname())
            .append("intype", getIntype())
            .append("innum", getInnum())
            .append("intime", getIntime())
            .append("oid", getOid())
            .toString();
    }
}
