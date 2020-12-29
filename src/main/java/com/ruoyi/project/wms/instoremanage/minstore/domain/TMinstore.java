package com.ruoyi.project.wms.instoremanage.minstore.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.framework.aspectj.lang.annotation.Excel;
import com.ruoyi.framework.web.domain.BaseEntity;
import java.util.Date;

/**
 * 【请填写功能名称】对象 t_minstore
 * 
 * @author ruoyi
 * @date 2020-12-29
 */
public class TMinstore extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 材料入库编号 */
    private Long minid;

    /** 材料名称 */
    @Excel(name = "材料名称")
    private String minname;

    /** 材料类型 */
    @Excel(name = "材料类型")
    private String mintype;

    /** 材料数量 */
    @Excel(name = "材料数量")
    private Long minnum;

    /** 入库时间 */
    @Excel(name = "入库时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date mintime;

    public void setMinid(Long minid) 
    {
        this.minid = minid;
    }

    public Long getMinid() 
    {
        return minid;
    }
    public void setMinname(String minname) 
    {
        this.minname = minname;
    }

    public String getMinname() 
    {
        return minname;
    }
    public void setMintype(String mintype) 
    {
        this.mintype = mintype;
    }

    public String getMintype() 
    {
        return mintype;
    }
    public void setMinnum(Long minnum) 
    {
        this.minnum = minnum;
    }

    public Long getMinnum() 
    {
        return minnum;
    }
    public void setMintime(Date mintime) 
    {
        this.mintime = mintime;
    }

    public Date getMintime() 
    {
        return mintime;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("minid", getMinid())
            .append("minname", getMinname())
            .append("mintype", getMintype())
            .append("minnum", getMinnum())
            .append("mintime", getMintime())
            .toString();
    }
}
