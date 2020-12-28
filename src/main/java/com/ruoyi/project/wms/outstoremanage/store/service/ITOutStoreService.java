package com.ruoyi.project.wms.outstoremanage.store.service;

import com.ruoyi.project.wms.outstoremanage.store.domain.TOutStore;

import java.util.List;

/**
 * 【请填写功能名称】Service接口
 * 
 * @author ruoyi
 * @date 2020-12-28
 */
public interface ITOutStoreService 
{
    /**
     * 查询【请填写功能名称】
     * 
     * @param outid 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    public TOutStore selectTOutStoreById(Integer outid);

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param tOutStore 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<TOutStore> selectTOutStoreList(TOutStore tOutStore);

    /**
     * 新增【请填写功能名称】
     * 
     * @param tOutStore 【请填写功能名称】
     * @return 结果
     */
    public int insertTOutStore(TOutStore tOutStore);

    /**
     * 修改【请填写功能名称】
     * 
     * @param tOutStore 【请填写功能名称】
     * @return 结果
     */
    public int updateTOutStore(TOutStore tOutStore);

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteTOutStoreByIds(String ids);

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param outid 【请填写功能名称】ID
     * @return 结果
     */
    public int deleteTOutStoreById(Integer outid);
}
