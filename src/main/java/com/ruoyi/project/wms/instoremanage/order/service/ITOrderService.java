package com.ruoyi.project.wms.instoremanage.order.service;


import com.ruoyi.project.wms.instoremanage.order.domain.TOrder;

import java.util.List;

/**
 * 【请填写功能名称】Service接口
 * 
 * @author ruoyi
 * @date 2020-12-28
 */
public interface ITOrderService 
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
     * 批量删除【请填写功能名称】
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteTOrderByIds(String ids);

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param oid 【请填写功能名称】ID
     * @return 结果
     */
    public int deleteTOrderById(Integer oid);
}
