package com.ruoyi.project.wms.crm.customer.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.framework.aspectj.lang.annotation.Excel;
import com.ruoyi.framework.web.domain.BaseEntity;

/**
 * 【客户管理】对象 t_customer
 * 
 * @author ruoyi
 * @date 2020-12-28
 */
public class TCustomer extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 客户编号 */
    private Integer cid;

    /** 客户名称 */
    @Excel(name = "客户名称")
    private String cname;

    /** 客户类型 */
    @Excel(name = "客户类型")
    private String ctype;

    /** 客户地址 */
    @Excel(name = "客户地址")
    private String caddress;

    /** 客户电话 */
    @Excel(name = "客户电话")
    private String cphone;

    public void setCid(Integer cid) 
    {
        this.cid = cid;
    }

    public Integer getCid() 
    {
        return cid;
    }
    public void setCname(String cname) 
    {
        this.cname = cname;
    }

    public String getCname() 
    {
        return cname;
    }
    public void setCtype(String ctype) 
    {
        this.ctype = ctype;
    }

    public String getCtype() 
    {
        return ctype;
    }
    public void setCaddress(String caddress) 
    {
        this.caddress = caddress;
    }

    public String getCaddress() 
    {
        return caddress;
    }
    public void setCphone(String cphone) 
    {
        this.cphone = cphone;
    }

    public String getCphone() 
    {
        return cphone;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("cid", getCid())
            .append("cname", getCname())
            .append("ctype", getCtype())
            .append("caddress", getCaddress())
            .append("cphone", getCphone())
            .toString();
    }
}
