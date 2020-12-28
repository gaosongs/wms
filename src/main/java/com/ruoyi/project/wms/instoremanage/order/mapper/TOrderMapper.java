package com.ruoyi.project.wms.instoremanage.order.mapper;


import com.ruoyi.project.wms.instoremanage.order.domain.TOrder;

import java.util.List;

/**
 * 【请填写功能名称】Mapper接口
 * 
 * @author ruoyi
 * @date 2020-12-28
 */
public interface TOrderMapper 
{
    /**
     * 查询【请填写功能名称】
     * 
     * @param oid 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    public TOrder selectTOrderById(Integer oid);

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param tOrder 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<TOrder> selectTOrderList(TOrder tOrder);

    /**
     * 新增【请填写功能名称】
     * 
     * @param tOrder 【请填写功能名称】
     * @return 结果
     */
    public int insertTOrder(TOrder tOrder);

    /**
     * 修改【请填写功能名称】
     * 
     * @param tOrder 【请填写功能名称】
     * @return 结果
     */
    public int updateTOrder(TOrder tOrder);

    /**
     * 删除【请填写功能名称】
     * 
     * @param oid 【请填写功能名称】ID
     * @return 结果
     */
    public int deleteTOrderById(Integer oid);

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param oids 需要删除的数据ID
     * @return 结果
     */
    public int deleteTOrderByIds(String[] oids);
}
