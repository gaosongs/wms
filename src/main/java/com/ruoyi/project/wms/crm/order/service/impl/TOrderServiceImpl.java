package com.ruoyi.project.wms.crm.order.service.impl;

import java.util.List;

import com.ruoyi.project.wms.crm.order.domain.TOrder;
import com.ruoyi.project.wms.crm.order.mapper.TOrderMapper;
import com.ruoyi.project.wms.crm.order.service.ITOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.common.utils.text.Convert;

/**
 * 【请填写功能名称】Service业务层处理
 * 
 * @author ruoyi
 * @date 2020-12-28
 */
@Service
public class TOrderServiceImpl implements ITOrderService
{
    @Autowired
    private TOrderMapper tOrderMapper;

    /**
     * 查询【请填写功能名称】
     * 
     * @param oid 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    @Override
    public TOrder selectTOrderById(Integer oid)
    {
        return tOrderMapper.selectTOrderById(oid);
    }

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param tOrder 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public List<TOrder> selectTOrderList(TOrder tOrder)
    {
        return tOrderMapper.selectTOrderList(tOrder);
    }

    /**
     * 新增【请填写功能名称】
     * 
     * @param tOrder 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int insertTOrder(TOrder tOrder)
    {
        return tOrderMapper.insertTOrder(tOrder);
    }

    /**
     * 修改【请填写功能名称】
     * 
     * @param tOrder 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int updateTOrder(TOrder tOrder)
    {
        return tOrderMapper.updateTOrder(tOrder);
    }

    /**
     * 删除【请填写功能名称】对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteTOrderByIds(String ids)
    {
        return tOrderMapper.deleteTOrderByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param oid 【请填写功能名称】ID
     * @return 结果
     */
    @Override
    public int deleteTOrderById(Integer oid)
    {
        return tOrderMapper.deleteTOrderById(oid);
    }
}
