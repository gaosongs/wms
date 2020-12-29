package com.ruoyi.project.wms.workshopmanage.worker.service.impl;

import com.ruoyi.common.utils.text.Convert;
import com.ruoyi.project.wms.workshopmanage.worker.domain.TWorker;
import com.ruoyi.project.wms.workshopmanage.worker.mapper.TWorkerMapper;
import com.ruoyi.project.wms.workshopmanage.worker.service.ITWorkerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 【请填写功能名称】Service业务层处理
 * 
 * @author ruoyi
 * @date 2020-12-29
 */
@Service
public class TWorkerServiceImpl implements ITWorkerService
{
    @Autowired
    private TWorkerMapper tWorkerMapper;

    /**
     * 查询【请填写功能名称】
     * 
     * @param wid 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    @Override
    public TWorker selectTWorkerById(Long wid)
    {
        return tWorkerMapper.selectTWorkerById(wid);
    }

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param tWorker 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public List<TWorker> selectTWorkerList(TWorker tWorker)
    {
        return tWorkerMapper.selectTWorkerList(tWorker);
    }

    /**
     * 新增【请填写功能名称】
     * 
     * @param tWorker 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int insertTWorker(TWorker tWorker)
    {
        return tWorkerMapper.insertTWorker(tWorker);
    }

    /**
     * 修改【请填写功能名称】
     * 
     * @param tWorker 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int updateTWorker(TWorker tWorker)
    {
        return tWorkerMapper.updateTWorker(tWorker);
    }

    /**
     * 删除【请填写功能名称】对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteTWorkerByIds(String ids)
    {
        return tWorkerMapper.deleteTWorkerByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param wid 【请填写功能名称】ID
     * @return 结果
     */
    @Override
    public int deleteTWorkerById(Long wid)
    {
        return tWorkerMapper.deleteTWorkerById(wid);
    }
}
