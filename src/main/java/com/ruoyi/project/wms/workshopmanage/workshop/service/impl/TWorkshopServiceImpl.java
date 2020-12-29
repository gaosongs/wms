package com.ruoyi.project.wms.workshopmanage.workshop.service.impl;


import com.ruoyi.common.utils.text.Convert;
import com.ruoyi.project.wms.workshopmanage.workshop.domain.TWorkshop;
import com.ruoyi.project.wms.workshopmanage.workshop.mapper.TWorkshopMapper;
import com.ruoyi.project.wms.workshopmanage.workshop.service.ITWorkshopService;
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
public class TWorkshopServiceImpl implements ITWorkshopService
{
    @Autowired
    private TWorkshopMapper tWorkshopMapper;

    /**
     * 查询【请填写功能名称】
     * 
     * @param wsid 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    @Override
    public TWorkshop selectTWorkshopById(Long wsid)
    {
        return tWorkshopMapper.selectTWorkshopById(wsid);
    }

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param tWorkshop 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public List<TWorkshop> selectTWorkshopList(TWorkshop tWorkshop)
    {
        return tWorkshopMapper.selectTWorkshopList(tWorkshop);
    }

    /**
     * 新增【请填写功能名称】
     * 
     * @param tWorkshop 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int insertTWorkshop(TWorkshop tWorkshop)
    {
        return tWorkshopMapper.insertTWorkshop(tWorkshop);
    }

    /**
     * 修改【请填写功能名称】
     * 
     * @param tWorkshop 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int updateTWorkshop(TWorkshop tWorkshop)
    {
        return tWorkshopMapper.updateTWorkshop(tWorkshop);
    }

    /**
     * 删除【请填写功能名称】对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteTWorkshopByIds(String ids)
    {
        return tWorkshopMapper.deleteTWorkshopByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param wsid 【请填写功能名称】ID
     * @return 结果
     */
    @Override
    public int deleteTWorkshopById(Long wsid)
    {
        return tWorkshopMapper.deleteTWorkshopById(wsid);
    }
}
