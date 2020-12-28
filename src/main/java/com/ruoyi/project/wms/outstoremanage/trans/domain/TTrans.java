package com.ruoyi.project.wms.outstoremanage.trans.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.framework.aspectj.lang.annotation.Excel;
import com.ruoyi.framework.web.domain.BaseEntity;
import java.util.Date;

/**
 * 【请填写功能名称】对象 t_trans
 * 
 * @author ruoyi
 * @date 2020-12-28
 */
public class TTrans extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 运输单编号 */
    private Integer tid;

    /** 货物名称 */
    @Excel(name = "货物名称")
    private String tname;

    /** 货物数量 */
    @Excel(name = "货物数量")
    private Long tnum;

    /** 货物类型 */
    @Excel(name = "货物类型")
    private String ttype;

    /** 目的地地址 */
    @Excel(name = "目的地地址")
    private String taddress;

    /** 运输时间 */
    @Excel(name = "运输时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date ttime;

    /** 订单编号 */
    @Excel(name = "订单编号")
    private Integer oid;

    public void setTid(Integer tid) 
    {
        this.tid = tid;
    }

    public Integer getTid() 
    {
        return tid;
    }
    public void setTname(String tname) 
    {
        this.tname = tname;
    }

    public String getTname() 
    {
        return tname;
    }
    public void setTnum(Long tnum) 
    {
        this.tnum = tnum;
    }

    public Long getTnum() 
    {
        return tnum;
    }
    public void setTtype(String ttype) 
    {
        this.ttype = ttype;
    }

    public String getTtype() 
    {
        return ttype;
    }
    public void setTaddress(String taddress) 
    {
        this.taddress = taddress;
    }

    public String getTaddress() 
    {
        return taddress;
    }
    public void setTtime(Date ttime) 
    {
        this.ttime = ttime;
    }

    public Date getTtime() 
    {
        return ttime;
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
            .append("tid", getTid())
            .append("tname", getTname())
            .append("tnum", getTnum())
            .append("ttype", getTtype())
            .append("taddress", getTaddress())
            .append("ttime", getTtime())
            .append("oid", getOid())
            .toString();
    }
}
