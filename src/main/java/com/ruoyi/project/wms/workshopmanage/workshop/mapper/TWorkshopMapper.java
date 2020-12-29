package com.ruoyi.project.wms.workshopmanage.workshop.mapper;


import com.ruoyi.project.wms.workshopmanage.workshop.domain.TWorkshop;

import java.util.List;

/**
 * 【请填写功能名称】Mapper接口
 * 
 * @author ruoyi
 * @date 2020-12-29
 */
public interface TWorkshopMapper 
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
     * 删除【请填写功能名称】
     * 
     * @param wsid 【请填写功能名称】ID
     * @return 结果
     */
    public int deleteTWorkshopById(Long wsid);

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param wsids 需要删除的数据ID
     * @return 结果
     */
    public int deleteTWorkshopByIds(String[] wsids);
}
