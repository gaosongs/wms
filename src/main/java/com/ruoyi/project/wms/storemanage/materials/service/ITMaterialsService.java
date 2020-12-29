package com.ruoyi.project.wms.storemanage.materials.service;

import com.ruoyi.project.wms.storemanage.materials.domain.TMaterials;
import java.util.List;

/**
 * 【请填写功能名称】Service接口
 * 
 * @author ruoyi
 * @date 2020-12-29
 */
public interface ITMaterialsService 
{
    /**
     * 查询【请填写功能名称】
     * 
     * @param mid 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    public TMaterials selectTMaterialsById(Long mid);

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param tMaterials 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<TMaterials> selectTMaterialsList(TMaterials tMaterials);

    /**
     * 新增【请填写功能名称】
     * 
     * @param tMaterials 【请填写功能名称】
     * @return 结果
     */
    public int insertTMaterials(TMaterials tMaterials);

    /**
     * 修改【请填写功能名称】
     * 
     * @param tMaterials 【请填写功能名称】
     * @return 结果
     */
    public int updateTMaterials(TMaterials tMaterials);

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteTMaterialsByIds(String ids);

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param mid 【请填写功能名称】ID
     * @return 结果
     */
    public int deleteTMaterialsById(Long mid);
}
