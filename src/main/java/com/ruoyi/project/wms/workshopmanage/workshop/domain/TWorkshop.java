package com.ruoyi.project.wms.workshopmanage.workshop.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.framework.aspectj.lang.annotation.Excel;
import com.ruoyi.framework.web.domain.BaseEntity;

/**
 * 【请填写功能名称】对象 t_workshop
 * 
 * @author ruoyi
 * @date 2020-12-29
 */
public class TWorkshop extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 车间编号 */
    private Long wsid;

    /** 车间名称 */
    @Excel(name = "车间名称")
    private String wsname;

    /** 车间地址 */
    @Excel(name = "车间地址")
    private String wsaddress;

    /** 车间状态(1:空闲,2:繁忙) */
    @Excel(name = "车间状态(1:空闲,2:繁忙)")
    private String wsstate;

    public void setWsid(Long wsid) 
    {
        this.wsid = wsid;
    }

    public Long getWsid() 
    {
        return wsid;
    }
    public void setWsname(String wsname) 
    {
        this.wsname = wsname;
    }

    public String getWsname() 
    {
        return wsname;
    }
    public void setWsaddress(String wsaddress) 
    {
        this.wsaddress = wsaddress;
    }

    public String getWsaddress() 
    {
        return wsaddress;
    }
    public void setWsstate(String wsstate) 
    {
        this.wsstate = wsstate;
    }

    public String getWsstate() 
    {
        return wsstate;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("wsid", getWsid())
            .append("wsname", getWsname())
            .append("wsaddress", getWsaddress())
            .append("wsstate", getWsstate())
            .toString();
    }
}
