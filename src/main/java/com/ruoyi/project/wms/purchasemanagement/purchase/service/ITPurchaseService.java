package com.ruoyi.project.wms.purchasemanagement.purchase.service;

import com.ruoyi.project.wms.purchasemanagement.purchase.domain.TPurchase;

import java.util.List;

/**
 * 【请填写功能名称】Service接口
 * 
 * @author ruoyi
 * @date 2020-12-29
 */
public interface ITPurchaseService 
{
    /**
     * 查询【请填写功能名称】
     * 
     * @param pid 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    public TPurchase selectTPurchaseById(Long pid);

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param tPurchase 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<TPurchase> selectTPurchaseList(TPurchase tPurchase);

    /**
     * 新增【请填写功能名称】
     * 
     * @param tPurchase 【请填写功能名称】
     * @return 结果
     */
    public int insertTPurchase(TPurchase tPurchase);

    /**
     * 修改【请填写功能名称】
     * 
     * @param tPurchase 【请填写功能名称】
     * @return 结果
     */
    public int updateTPurchase(TPurchase tPurchase);

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteTPurchaseByIds(String ids);

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param pid 【请填写功能名称】ID
     * @return 结果
     */
    public int deleteTPurchaseById(Long pid);
}
