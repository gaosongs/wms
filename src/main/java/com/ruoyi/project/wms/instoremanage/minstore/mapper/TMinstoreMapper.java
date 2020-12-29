package com.ruoyi.project.wms.instoremanage.minstore.mapper;


import com.ruoyi.project.wms.instoremanage.minstore.domain.TMinstore;

import java.util.List;

/**
 * 【请填写功能名称】Mapper接口
 * 
 * @author ruoyi
 * @date 2020-12-29
 */
public interface TMinstoreMapper 
{
    /**
     * 查询【请填写功能名称】
     * 
     * @param minid 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    public TMinstore selectTMinstoreById(Long minid);

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param tMinstore 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<TMinstore> selectTMinstoreList(TMinstore tMinstore);

    /**
     * 新增【请填写功能名称】
     * 
     * @param tMinstore 【请填写功能名称】
     * @return 结果
     */
    public int insertTMinstore(TMinstore tMinstore);

    /**
     * 修改【请填写功能名称】
     * 
     * @param tMinstore 【请填写功能名称】
     * @return 结果
     */
    public int updateTMinstore(TMinstore tMinstore);

    /**
     * 删除【请填写功能名称】
     * 
     * @param minid 【请填写功能名称】ID
     * @return 结果
     */
    public int deleteTMinstoreById(Long minid);

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param minids 需要删除的数据ID
     * @return 结果
     */
    public int deleteTMinstoreByIds(String[] minids);
}
