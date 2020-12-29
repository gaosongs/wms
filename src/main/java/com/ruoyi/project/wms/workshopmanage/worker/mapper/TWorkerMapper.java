package com.ruoyi.project.wms.workshopmanage.worker.mapper;


import com.ruoyi.project.wms.workshopmanage.worker.domain.TWorker;

import java.util.List;

/**
 * 【请填写功能名称】Mapper接口
 * 
 * @author ruoyi
 * @date 2020-12-29
 */
public interface TWorkerMapper 
{
    /**
     * 查询【请填写功能名称】
     * 
     * @param wid 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    public TWorker selectTWorkerById(Long wid);

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param tWorker 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<TWorker> selectTWorkerList(TWorker tWorker);

    /**
     * 新增【请填写功能名称】
     * 
     * @param tWorker 【请填写功能名称】
     * @return 结果
     */
    public int insertTWorker(TWorker tWorker);

    /**
     * 修改【请填写功能名称】
     * 
     * @param tWorker 【请填写功能名称】
     * @return 结果
     */
    public int updateTWorker(TWorker tWorker);

    /**
     * 删除【请填写功能名称】
     * 
     * @param wid 【请填写功能名称】ID
     * @return 结果
     */
    public int deleteTWorkerById(Long wid);

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param wids 需要删除的数据ID
     * @return 结果
     */
    public int deleteTWorkerByIds(String[] wids);
}
