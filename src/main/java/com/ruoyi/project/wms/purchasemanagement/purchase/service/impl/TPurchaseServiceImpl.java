package com.ruoyi.project.wms.purchasemanagement.purchase.service.impl;

import com.ruoyi.common.utils.text.Convert;
import com.ruoyi.project.wms.purchasemanagement.purchase.domain.TPurchase;
import com.ruoyi.project.wms.purchasemanagement.purchase.mapper.TPurchaseMapper;
import com.ruoyi.project.wms.purchasemanagement.purchase.service.ITPurchaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 【请填写功能名称】Service业务层处理
 * 
 * @author ruoyi
 * @date 2020-12-29
 */
@Service
public class TPurchaseServiceImpl implements ITPurchaseService
{
    @Autowired
    private TPurchaseMapper tPurchaseMapper;

    /**
     * 查询【请填写功能名称】
     * 
     * @param pid 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    @Override
    public TPurchase selectTPurchaseById(Long pid)
    {
        return tPurchaseMapper.selectTPurchaseById(pid);
    }

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param tPurchase 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public List<TPurchase> selectTPurchaseList(TPurchase tPurchase)
    {
        return tPurchaseMapper.selectTPurchaseList(tPurchase);
    }

    /**
     * 新增【请填写功能名称】
     * 
     * @param tPurchase 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int insertTPurchase(TPurchase tPurchase)
    {
        return tPurchaseMapper.insertTPurchase(tPurchase);
    }

    /**
     * 修改【请填写功能名称】
     * 
     * @param tPurchase 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int updateTPurchase(TPurchase tPurchase)
    {
        return tPurchaseMapper.updateTPurchase(tPurchase);
    }

    /**
     * 删除【请填写功能名称】对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteTPurchaseByIds(String ids)
    {
        return tPurchaseMapper.deleteTPurchaseByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param pid 【请填写功能名称】ID
     * @return 结果
     */
    @Override
    public int deleteTPurchaseById(Long pid)
    {
        return tPurchaseMapper.deleteTPurchaseById(pid);
    }
}
