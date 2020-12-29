package com.ruoyi.project.wms.shopmanage.demand.mapper;


import com.ruoyi.project.wms.shopmanage.demand.domain.TDemand;

import java.util.List;

/**
 * 【请填写功能名称】Mapper接口
 * 
 * @author ruoyi
 * @date 2020-12-29
 */
public interface TDemandMapper 
{
    /**
     * 查询【请填写功能名称】
     * 
     * @param did 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    public TDemand selectTDemandById(Long did);

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param tDemand 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<TDemand> selectTDemandList(TDemand tDemand);

    /**
     * 新增【请填写功能名称】
     * 
     * @param tDemand 【请填写功能名称】
     * @return 结果
     */
    public int insertTDemand(TDemand tDemand);

    /**
     * 修改【请填写功能名称】
     * 
     * @param tDemand 【请填写功能名称】
     * @return 结果
     */
    public int updateTDemand(TDemand tDemand);

    /**
     * 删除【请填写功能名称】
     * 
     * @param did 【请填写功能名称】ID
     * @return 结果
     */
    public int deleteTDemandById(Long did);

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param dids 需要删除的数据ID
     * @return 结果
     */
    public int deleteTDemandByIds(String[] dids);
}
