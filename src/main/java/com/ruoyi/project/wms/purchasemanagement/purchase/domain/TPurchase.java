package com.ruoyi.project.wms.purchasemanagement.purchase.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.framework.aspectj.lang.annotation.Excel;
import com.ruoyi.framework.web.domain.BaseEntity;
import java.util.Date;

/**
 * 【请填写功能名称】对象 t_purchase
 * 
 * @author ruoyi
 * @date 2020-12-29
 */
public class TPurchase extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 进货编号 */
    private Long pid;

    /** 进货名称 */
    @Excel(name = "进货名称")
    private String pname;

    /** 进货类型 */
    @Excel(name = "进货类型")
    private String ptype;

    /** 进货数量 */
    @Excel(name = "进货数量")
    private Long pnum;

    /** 进货时间 */
    @Excel(name = "进货时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date ptime;

    /** 进货地址 */
    @Excel(name = "进货地址")
    private String paddress;

    public void setPid(Long pid) 
    {
        this.pid = pid;
    }

    public Long getPid() 
    {
        return pid;
    }
    public void setPname(String pname) 
    {
        this.pname = pname;
    }

    public String getPname() 
    {
        return pname;
    }
    public void setPtype(String ptype) 
    {
        this.ptype = ptype;
    }

    public String getPtype() 
    {
        return ptype;
    }
    public void setPnum(Long pnum) 
    {
        this.pnum = pnum;
    }

    public Long getPnum() 
    {
        return pnum;
    }
    public void setPtime(Date ptime) 
    {
        this.ptime = ptime;
    }

    public Date getPtime() 
    {
        return ptime;
    }
    public void setPaddress(String paddress) 
    {
        this.paddress = paddress;
    }

    public String getPaddress() 
    {
        return paddress;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("pid", getPid())
            .append("pname", getPname())
            .append("ptype", getPtype())
            .append("pnum", getPnum())
            .append("ptime", getPtime())
            .append("paddress", getPaddress())
            .toString();
    }
}
