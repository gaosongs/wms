package com.ruoyi.project.wms.workshopmanage.workshop.service;


import com.ruoyi.project.wms.workshopmanage.workshop.domain.TWorkshop;

import java.util.List;

/**
 * 【请填写功能名称】Service接口
 * 
 * @author ruoyi
 * @date 2020-12-29
 */
public interface ITWorkshopService 
{
    /**
     * 查询【请填写功能名称】
     * 
     * @param wsid 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    public TWorkshop selectTWorkshopById(Long wsid);

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param tWorkshop 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<TWorkshop> selectTWorkshopList(TWorkshop tWorkshop);

    /**
     * 新增【请填写功能名称】
     * 
     * @param tWorkshop 【请填写功能名称】
     * @return 结果
     */
    public int insertTWorkshop(TWorkshop tWorkshop);

    /**
     * 修改【请填写功能名称】
     * 
     * @param tWorkshop 【请填写功能名称】
     * @return 结果
     */
    public int updateTWorkshop(TWorkshop tWorkshop);

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteTWorkshopByIds(String ids);

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param wsid 【请填写功能名称】ID
     * @return 结果
     */
    public int deleteTWorkshopById(Long wsid);
}
