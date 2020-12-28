package com.ruoyi.project.wms.outstoremanage.store.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.framework.aspectj.lang.annotation.Excel;
import com.ruoyi.framework.web.domain.BaseEntity;
import java.util.Date;

/**
 * 【请填写功能名称】对象 t_out_store
 * 
 * @author ruoyi
 * @date 2020-12-28
 */
public class TOutStore extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 出库编号 */
    private Integer outid;

    /** 货物数量 */
    @Excel(name = "货物数量")
    private String outname;

    /** 货物类型 */
    @Excel(name = "货物类型")
    private String outtype;

    /** 货物数量 */
    @Excel(name = "货物数量")
    private Long outnum;

    /** 出库时间 */
    @Excel(name = "出库时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date outtime;

    /** 库存货物编号 */
    @Excel(name = "库存货物编号")
    private Integer sid;

    public void setOutid(Integer outid) 
    {
        this.outid = outid;
    }

    public Integer getOutid() 
    {
        return outid;
    }
    public void setOutname(String outname) 
    {
        this.outname = outname;
    }

    public String getOutname() 
    {
        return outname;
    }
    public void setOuttype(String outtype) 
    {
        this.outtype = outtype;
    }

    public String getOuttype() 
    {
        return outtype;
    }
    public void setOutnum(Long outnum) 
    {
        this.outnum = outnum;
    }

    public Long getOutnum() 
    {
        return outnum;
    }
    public void setOuttime(Date outtime) 
    {
        this.outtime = outtime;
    }

    public Date getOuttime() 
    {
        return outtime;
    }
    public void setSid(Integer sid) 
    {
        this.sid = sid;
    }

    public Integer getSid() 
    {
        return sid;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("outid", getOutid())
            .append("outname", getOutname())
            .append("outtype", getOuttype())
            .append("outnum", getOutnum())
            .append("outtime", getOuttime())
            .append("sid", getSid())
            .toString();
    }
}
