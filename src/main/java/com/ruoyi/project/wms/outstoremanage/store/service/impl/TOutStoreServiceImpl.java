package com.ruoyi.project.wms.outstoremanage.store.service.impl;

import java.util.List;

import com.ruoyi.project.wms.outstoremanage.store.domain.TOutStore;
import com.ruoyi.project.wms.outstoremanage.store.mapper.TOutStoreMapper;
import com.ruoyi.project.wms.outstoremanage.store.service.ITOutStoreService;
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
public class TOutStoreServiceImpl implements ITOutStoreService
{
    @Autowired
    private TOutStoreMapper tOutStoreMapper;

    /**
     * 查询【请填写功能名称】
     * 
     * @param outid 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    @Override
    public TOutStore selectTOutStoreById(Integer outid)
    {
        return tOutStoreMapper.selectTOutStoreById(outid);
    }

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param tOutStore 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public List<TOutStore> selectTOutStoreList(TOutStore tOutStore)
    {
        return tOutStoreMapper.selectTOutStoreList(tOutStore);
    }

    /**
     * 新增【请填写功能名称】
     * 
     * @param tOutStore 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int insertTOutStore(TOutStore tOutStore)
    {
        return tOutStoreMapper.insertTOutStore(tOutStore);
    }

    /**
     * 修改【请填写功能名称】
     * 
     * @param tOutStore 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int updateTOutStore(TOutStore tOutStore)
    {
        return tOutStoreMapper.updateTOutStore(tOutStore);
    }

    /**
     * 删除【请填写功能名称】对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteTOutStoreByIds(String ids)
    {
        return tOutStoreMapper.deleteTOutStoreByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param outid 【请填写功能名称】ID
     * @return 结果
     */
    @Override
    public int deleteTOutStoreById(Integer outid)
    {
        return tOutStoreMapper.deleteTOutStoreById(outid);
    }
}
