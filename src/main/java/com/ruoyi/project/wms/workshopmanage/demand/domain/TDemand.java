package com.ruoyi.project.wms.workshopmanage.demand.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.framework.aspectj.lang.annotation.Excel;
import com.ruoyi.framework.web.domain.BaseEntity;

/**
 * 【请填写功能名称】对象 t_demand
 * 
 * @author ruoyi
 * @date 2020-12-29
 */
public class TDemand extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 需求编号 */
    private Long did;

    /** 需求名称 */
    @Excel(name = "需求名称")
    private String dname;

    /** 需求数量 */
    @Excel(name = "需求数量")
    private Long dnum;

    /** 需求类型 */
    @Excel(name = "需求类型")
    private String dtype;

    public void setDid(Long did) 
    {
        this.did = did;
    }

    public Long getDid() 
    {
        return did;
    }
    public void setDname(String dname) 
    {
        this.dname = dname;
    }

    public String getDname() 
    {
        return dname;
    }
    public void setDnum(Long dnum) 
    {
        this.dnum = dnum;
    }

    public Long getDnum() 
    {
        return dnum;
    }
    public void setDtype(String dtype) 
    {
        this.dtype = dtype;
    }

    public String getDtype() 
    {
        return dtype;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("did", getDid())
            .append("dname", getDname())
            .append("dnum", getDnum())
            .append("dtype", getDtype())
            .toString();
    }
}
