package com.ruoyi.project.wms.instoremanage.customer.service.impl;


import com.ruoyi.common.utils.text.Convert;
import com.ruoyi.project.wms.instoremanage.customer.domain.TCustomer;
import com.ruoyi.project.wms.instoremanage.customer.mapper.TCustomerMapper;
import com.ruoyi.project.wms.instoremanage.customer.service.ITCustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 【请填写功能名称】Service业务层处理
 * 
 * @author ruoyi
 * @date 2020-12-28
 */
@Service
public class TCustomerServiceImpl implements ITCustomerService
{
    @Autowired
    private TCustomerMapper tCustomerMapper;

    /**
     * 查询【请填写功能名称】
     * 
     * @param cid 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    @Override
    public TCustomer selectTCustomerById(Integer cid)
    {
        return tCustomerMapper.selectTCustomerById(cid);
    }

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param tCustomer 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public List<TCustomer> selectTCustomerList(TCustomer tCustomer)
    {
        return tCustomerMapper.selectTCustomerList(tCustomer);
    }

    /**
     * 新增【请填写功能名称】
     * 
     * @param tCustomer 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int insertTCustomer(TCustomer tCustomer)
    {
        return tCustomerMapper.insertTCustomer(tCustomer);
    }

    /**
     * 修改【请填写功能名称】
     * 
     * @param tCustomer 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int updateTCustomer(TCustomer tCustomer)
    {
        return tCustomerMapper.updateTCustomer(tCustomer);
    }

    /**
     * 删除【请填写功能名称】对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteTCustomerByIds(String ids)
    {
        return tCustomerMapper.deleteTCustomerByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param cid 【请填写功能名称】ID
     * @return 结果
     */
    @Override
    public int deleteTCustomerById(Integer cid)
    {
        return tCustomerMapper.deleteTCustomerById(cid);
    }
}
