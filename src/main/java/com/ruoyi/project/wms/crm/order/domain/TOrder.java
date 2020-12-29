package com.ruoyi.project.wms.crm.order.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.framework.aspectj.lang.annotation.Excel;
import com.ruoyi.framework.web.domain.BaseEntity;
import java.util.Date;

/**
 * 【请填写功能名称】对象 t_order
 * 
 * @author ruoyi
 * @date 2020-12-28
 */
public class TOrder extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 订单编号 */
    private Integer oid;

    /** 货物名称 */
    @Excel(name = "货物名称")
    private String oname;

    /** 货物类型 */
    @Excel(name = "货物类型")
    private String otype;

    /** 货物数量 */
    @Excel(name = "货物数量")
    private Integer onum;

    /** 货源地址 */
    @Excel(name = "货源地址")
    private String ocaddress;

    /** 目的地地址 */
    @Excel(name = "目的地地址")
    private String oaddress;

    /** 下单时间 */
    @Excel(name = "下单时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date otime;

    /** 客户编号 */
    @Excel(name = "客户编号")
    private Long cid;

    public void setOid(Integer oid) 
    {
        this.oid = oid;
    }

    public Integer getOid() 
    {
        return oid;
    }
    public void setOname(String oname) 
    {
        this.oname = oname;
    }

    public String getOname() 
    {
        return oname;
    }
    public void setOtype(String otype) 
    {
        this.otype = otype;
    }

    public String getOtype() 
    {
        return otype;
    }
    public void setOnum(Integer onum) 
    {
        this.onum = onum;
    }

    public Integer getOnum() 
    {
        return onum;
    }
    public void setOcaddress(String ocaddress) 
    {
        this.ocaddress = ocaddress;
    }

    public String getOcaddress() 
    {
        return ocaddress;
    }
    public void setOaddress(String oaddress) 
    {
        this.oaddress = oaddress;
    }

    public String getOaddress() 
    {
        return oaddress;
    }
    public void setOtime(Date otime) 
    {
        this.otime = otime;
    }

    public Date getOtime() 
    {
        return otime;
    }
    public void setCid(Long cid) 
    {
        this.cid = cid;
    }

    public Long getCid() 
    {
        return cid;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("oid", getOid())
            .append("oname", getOname())
            .append("otype", getOtype())
            .append("onum", getOnum())
            .append("ocaddress", getOcaddress())
            .append("oaddress", getOaddress())
            .append("otime", getOtime())
            .append("cid", getCid())
            .toString();
    }
}
