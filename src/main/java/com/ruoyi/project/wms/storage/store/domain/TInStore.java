package com.ruoyi.project.system.store.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.framework.aspectj.lang.annotation.Excel;
import com.ruoyi.framework.web.domain.BaseEntity;
import java.util.Date;

/**
 * 【请填写功能名称】对象 t_in_store
 * 
 * @author ruoyi
 * @date 2020-12-26
 */
public class TInStore extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 入库编号 */
    private Integer inid;

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
            .append("intime", getIntime())
            .append("oid", getOid())
            .toString();
    }
}
