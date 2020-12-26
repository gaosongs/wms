package com.ruoyi.project.system.store.mapper;

import com.ruoyi.project.system.store.domain.TInStore;
import java.util.List;

/**
 * 【请填写功能名称】Mapper接口
 * 
 * @author ruoyi
 * @date 2020-12-26
 */
public interface TInStoreMapper 
{
    /**
     * 查询【请填写功能名称】
     * 
     * @param inid 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    public TInStore selectTInStoreById(Integer inid);

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param tInStore 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<TInStore> selectTInStoreList(TInStore tInStore);

    /**
     * 新增【请填写功能名称】
     * 
     * @param tInStore 【请填写功能名称】
     * @return 结果
     */
    public int insertTInStore(TInStore tInStore);

    /**
     * 修改【请填写功能名称】
     * 
     * @param tInStore 【请填写功能名称】
     * @return 结果
     */
    public int updateTInStore(TInStore tInStore);

    /**
     * 删除【请填写功能名称】
     * 
     * @param inid 【请填写功能名称】ID
     * @return 结果
     */
    public int deleteTInStoreById(Integer inid);

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param inids 需要删除的数据ID
     * @return 结果
     */
    public int deleteTInStoreByIds(String[] inids);
}
