package com.ruoyi.project.wms.storemanage.materials.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.framework.aspectj.lang.annotation.Excel;
import com.ruoyi.framework.web.domain.BaseEntity;

/**
 * 【请填写功能名称】对象 t_materials
 * 
 * @author ruoyi
 * @date 2020-12-29
 */
public class TMaterials extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 材料编号 */
    private Long mid;

    /** 材料名称 */
    @Excel(name = "材料名称")
    private String mname;

    /** 材料类型 */
    @Excel(name = "材料类型")
    private String mtype;

    /** 材料数量 */
    @Excel(name = "材料数量")
    private Long mnum;

    public void setMid(Long mid) 
    {
        this.mid = mid;
    }

    public Long getMid() 
    {
        return mid;
    }
    public void setMname(String mname) 
    {
        this.mname = mname;
    }

    public String getMname() 
    {
        return mname;
    }
    public void setMtype(String mtype) 
    {
        this.mtype = mtype;
    }

    public String getMtype() 
    {
        return mtype;
    }
    public void setMnum(Long mnum) 
    {
        this.mnum = mnum;
    }

    public Long getMnum() 
    {
        return mnum;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("mid", getMid())
            .append("mname", getMname())
            .append("mtype", getMtype())
            .append("mnum", getMnum())
            .toString();
    }
}
