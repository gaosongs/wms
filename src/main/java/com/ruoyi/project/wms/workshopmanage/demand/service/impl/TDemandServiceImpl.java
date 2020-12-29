package com.ruoyi.project.wms.workshopmanage.demand.service.impl;

import com.ruoyi.common.utils.text.Convert;
import com.ruoyi.project.wms.workshopmanage.demand.domain.TDemand;
import com.ruoyi.project.wms.workshopmanage.demand.mapper.TDemandMapper;
import com.ruoyi.project.wms.workshopmanage.demand.service.ITDemandService;
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
public class TDemandServiceImpl implements ITDemandService
{
    @Autowired
    private TDemandMapper tDemandMapper;

    /**
     * 查询【请填写功能名称】
     * 
     * @param did 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    @Override
    public TDemand selectTDemandById(Long did)
    {
        return tDemandMapper.selectTDemandById(did);
    }

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param tDemand 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public List<TDemand> selectTDemandList(TDemand tDemand)
    {
        return tDemandMapper.selectTDemandList(tDemand);
    }

    /**
     * 新增【请填写功能名称】
     * 
     * @param tDemand 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int insertTDemand(TDemand tDemand)
    {
        return tDemandMapper.insertTDemand(tDemand);
    }

    /**
     * 修改【请填写功能名称】
     * 
     * @param tDemand 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int updateTDemand(TDemand tDemand)
    {
        return tDemandMapper.updateTDemand(tDemand);
    }

    /**
     * 删除【请填写功能名称】对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteTDemandByIds(String ids)
    {
        return tDemandMapper.deleteTDemandByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param did 【请填写功能名称】ID
     * @return 结果
     */
    @Override
    public int deleteTDemandById(Long did)
    {
        return tDemandMapper.deleteTDemandById(did);
    }
}
