package com.ruoyi.project.wms.crm.customer.service;


import com.ruoyi.project.wms.crm.customer.domain.TCustomer;

import java.util.List;

/**
 * 【客户管理】Service接口
 * 
 * @author ruoyi
 * @date 2020-12-28
 */
public interface ITCustomerService 
{
    /**
     * 查询【客户管理】
     * 
     * @param cid 【客户】ID
     * @return 【客户信息】
     */
    public TCustomer selectTCustomerById(Integer cid);

    /**
     * 查询【客户信息】列表
     *
     * @param tCustomer 【客户信息】
     * @return 【客户信息】集合
     */
    public List<TCustomer> selectTCustomerList(TCustomer tCustomer);

    /**
     * 新增【客户信息】
     * 
     * @param tCustomer 【客户信息】
     * @return 结果
     */
    public int insertTCustomer(TCustomer tCustomer);

    /**
     * 修改【客户信息】
     * 
     * @param tCustomer 【客户信息】
     * @return 结果
     */
    public int updateTCustomer(TCustomer tCustomer);

    /**
     * 批量删除【客户信息】
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteTCustomerByIds(String ids);

    /**
     * 删除【客户信息】信息
     * 
     * @param cid 【客户信息】ID
     * @return 结果
     */
    public int deleteTCustomerById(Integer cid);
}
