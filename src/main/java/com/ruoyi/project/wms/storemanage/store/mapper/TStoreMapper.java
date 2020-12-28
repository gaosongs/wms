package com.ruoyi.project.wms.storemanage.store.mapper;

import com.ruoyi.project.wms.storemanage.store.domain.TStore;
import java.util.List;

/**
 * 【请填写功能名称】Mapper接口
 * 
 * @author ruoyi
 * @date 2020-12-28
 */
public interface TStoreMapper 
{
    /**
     * 查询【请填写功能名称】
     * 
     * @param sid 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    public TStore selectTStoreById(Integer sid);

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param tStore 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<TStore> selectTStoreList(TStore tStore);

    /**
     * 新增【请填写功能名称】
     * 
     * @param tStore 【请填写功能名称】
     * @return 结果
     */
    public int insertTStore(TStore tStore);

    /**
     * 修改【请填写功能名称】
     * 
     * @param tStore 【请填写功能名称】
     * @return 结果
     */
    public int updateTStore(TStore tStore);

    /**
     * 删除【请填写功能名称】
     * 
     * @param sid 【请填写功能名称】ID
     * @return 结果
     */
    public int deleteTStoreById(Integer sid);

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param sids 需要删除的数据ID
     * @return 结果
     */
    public int deleteTStoreByIds(String[] sids);
}
