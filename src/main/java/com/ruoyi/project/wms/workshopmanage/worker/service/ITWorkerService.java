package com.ruoyi.project.wms.workshopmanage.worker.service;


import com.ruoyi.project.wms.workshopmanage.worker.domain.TWorker;
import java.util.List;

/**
 * 【请填写功能名称】Service接口
 * 
 * @author ruoyi
 * @date 2020-12-29
 */
public interface ITWorkerService 
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
     * 批量删除【请填写功能名称】
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteTWorkerByIds(String ids);

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param wid 【请填写功能名称】ID
     * @return 结果
     */
    public int deleteTWorkerById(Long wid);
}
