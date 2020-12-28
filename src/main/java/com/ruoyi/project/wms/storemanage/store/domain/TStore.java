package com.ruoyi.project.wms.storemanage.store.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import com.ruoyi.framework.aspectj.lang.annotation.Excel;
import com.ruoyi.framework.web.domain.BaseEntity;

/**
 * 【库内管理】对象 t_store
 * 
 * @author ruoyi
 * @date 2020-12-28
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class TStore extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 库存货物编号 */
    private Integer sid;

    /** 货物名称 */
    @Excel(name = "货物名称")
    private String sname;

    /** 货物数量 */
    @Excel(name = "货物数量")
    private Integer snum;

    /** 货物类型 */
    @Excel(name = "货物类型")
    private String stype;

    /** 库存货物状态(1:存在,0:不存在) */
    @Excel(name = "库存货物状态(1:存在,0:不存在)")
    private String sstate;

    /** 储位编号 */
    @Excel(name = "储位编号")
    private Integer lid;

    /** 入库编号 */
    @Excel(name = "入库编号")
    private Integer inid;


}
