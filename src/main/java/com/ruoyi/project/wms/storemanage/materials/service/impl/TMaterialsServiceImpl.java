package com.ruoyi.project.wms.storemanage.materials.service.impl;

import java.util.List;

import com.ruoyi.project.wms.storemanage.materials.domain.TMaterials;
import com.ruoyi.project.wms.storemanage.materials.mapper.TMaterialsMapper;
import com.ruoyi.project.wms.storemanage.materials.service.ITMaterialsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.common.utils.text.Convert;

/**
 * 【请填写功能名称】Service业务层处理
 * 
 * @author ruoyi
 * @date 2020-12-29
 */
@Service
public class TMaterialsServiceImpl implements ITMaterialsService
{
    @Autowired
    private TMaterialsMapper tMaterialsMapper;

    /**
     * 查询【请填写功能名称】
     * 
     * @param mid 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    @Override
    public TMaterials selectTMaterialsById(Long mid)
    {
        return tMaterialsMapper.selectTMaterialsById(mid);
    }

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param tMaterials 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public List<TMaterials> selectTMaterialsList(TMaterials tMaterials)
    {
        return tMaterialsMapper.selectTMaterialsList(tMaterials);
    }

    /**
     * 新增【请填写功能名称】
     * 
     * @param tMaterials 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int insertTMaterials(TMaterials tMaterials)
    {
        return tMaterialsMapper.insertTMaterials(tMaterials);
    }

    /**
     * 修改【请填写功能名称】
     * 
     * @param tMaterials 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int updateTMaterials(TMaterials tMaterials)
    {
        return tMaterialsMapper.updateTMaterials(tMaterials);
    }

    /**
     * 删除【请填写功能名称】对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteTMaterialsByIds(String ids)
    {
        return tMaterialsMapper.deleteTMaterialsByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param mid 【请填写功能名称】ID
     * @return 结果
     */
    @Override
    public int deleteTMaterialsById(Long mid)
    {
        return tMaterialsMapper.deleteTMaterialsById(mid);
    }
}
