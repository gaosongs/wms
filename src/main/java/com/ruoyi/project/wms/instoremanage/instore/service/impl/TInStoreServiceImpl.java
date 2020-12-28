package com.ruoyi.project.wms.instoremanage.instore.service.impl;

import java.util.List;

import com.ruoyi.project.wms.instoremanage.instore.domain.TInStore;
import com.ruoyi.project.wms.instoremanage.instore.mapper.TInStoreMapper;
import com.ruoyi.project.wms.instoremanage.instore.service.ITInStoreService;
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
public class TInStoreServiceImpl implements ITInStoreService
{
    @Autowired
    private TInStoreMapper tInStoreMapper;

    /**
     * 查询【请填写功能名称】
     * 
     * @param inid 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    @Override
    public TInStore selectTInStoreById(Integer inid)
    {
        return tInStoreMapper.selectTInStoreById(inid);
    }

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param tInStore 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public List<TInStore> selectTInStoreList(TInStore tInStore)
    {
        return tInStoreMapper.selectTInStoreList(tInStore);
    }

    /**
     * 新增【请填写功能名称】
     * 
     * @param tInStore 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int insertTInStore(TInStore tInStore)
    {
        return tInStoreMapper.insertTInStore(tInStore);
    }

    /**
     * 修改【请填写功能名称】
     * 
     * @param tInStore 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int updateTInStore(TInStore tInStore)
    {
        return tInStoreMapper.updateTInStore(tInStore);
    }

    /**
     * 删除【请填写功能名称】对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteTInStoreByIds(String ids)
    {
        return tInStoreMapper.deleteTInStoreByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param inid 【请填写功能名称】ID
     * @return 结果
     */
    @Override
    public int deleteTInStoreById(Integer inid)
    {
        return tInStoreMapper.deleteTInStoreById(inid);
    }
}
