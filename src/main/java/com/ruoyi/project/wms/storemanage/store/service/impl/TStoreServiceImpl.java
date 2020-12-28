package com.ruoyi.project.wms.storemanage.store.service.impl;

import java.util.List;

import com.ruoyi.project.wms.storemanage.store.domain.TStore;
import com.ruoyi.project.wms.storemanage.store.mapper.TStoreMapper;
import com.ruoyi.project.wms.storemanage.store.service.ITStoreService;
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
public class TStoreServiceImpl implements ITStoreService
{
    @Autowired
    private TStoreMapper tStoreMapper;

    /**
     * 查询【请填写功能名称】
     * 
     * @param sid 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    @Override
    public TStore selectTStoreById(Integer sid)
    {
        return tStoreMapper.selectTStoreById(sid);
    }

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param tStore 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public List<TStore> selectTStoreList(TStore tStore)
    {
        return tStoreMapper.selectTStoreList(tStore);
    }

    /**
     * 新增【请填写功能名称】
     * 
     * @param tStore 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int insertTStore(TStore tStore)
    {
        return tStoreMapper.insertTStore(tStore);
    }

    /**
     * 修改【请填写功能名称】
     * 
     * @param tStore 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int updateTStore(TStore tStore)
    {
        return tStoreMapper.updateTStore(tStore);
    }

    /**
     * 删除【请填写功能名称】对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteTStoreByIds(String ids)
    {
        return tStoreMapper.deleteTStoreByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param sid 【请填写功能名称】ID
     * @return 结果
     */
    @Override
    public int deleteTStoreById(Integer sid)
    {
        return tStoreMapper.deleteTStoreById(sid);
    }
}
