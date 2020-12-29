package com.ruoyi.project.wms.crm.customer.mapper;

import com.ruoyi.project.wms.crm.customer.domain.TCustomer;

import java.util.List;

/**
 * 【请填写功能名称】Mapper接口
 * 
 * @author ruoyi
 * @date 2020-12-28
 */
public interface TCustomerMapper 
{
    /**
     * 查询【请填写功能名称】
     * 
     * @param cid 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    public TCustomer selectTCustomerById(Integer cid);

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param tCustomer 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<TCustomer> selectTCustomerList(TCustomer tCustomer);

    /**
     * 新增【请填写功能名称】
     * 
     * @param tCustomer 【请填写功能名称】
     * @return 结果
     */
    public int insertTCustomer(TCustomer tCustomer);

    /**
     * 修改【请填写功能名称】
     * 
     * @param tCustomer 【请填写功能名称】
     * @return 结果
     */
    public int updateTCustomer(TCustomer tCustomer);

    /**
     * 删除【请填写功能名称】
     * 
     * @param cid 【请填写功能名称】ID
     * @return 结果
     */
    public int deleteTCustomerById(Integer cid);

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param cids 需要删除的数据ID
     * @return 结果
     */
    public int deleteTCustomerByIds(String[] cids);
}
