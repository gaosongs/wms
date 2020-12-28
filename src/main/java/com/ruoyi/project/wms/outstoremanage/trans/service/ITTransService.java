package com.ruoyi.project.wms.outstoremanage.trans.service;


import com.ruoyi.project.wms.outstoremanage.trans.domain.TTrans;

import java.util.List;

/**
 * 【请填写功能名称】Service接口
 *
 * @author ruoyi
 * @date 2020-12-28
 */
public interface ITTransService
{
    /**
     * 查询【请填写功能名称】
     *
     * @param tid 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    public TTrans selectTTransById(Integer tid);

    /**
     * 查询【请填写功能名称】列表
     *
     * @param tTrans 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<TTrans> selectTTransList(TTrans tTrans);

    /**
     * 新增【请填写功能名称】
     *
     * @param tTrans 【请填写功能名称】
     * @return 结果
     */
    public int insertTTrans(TTrans tTrans);

    /**
     * 修改【请填写功能名称】
     *
     * @param tTrans 【请填写功能名称】
     * @return 结果
     */
    public int updateTTrans(TTrans tTrans);

    /**
     * 批量删除【请填写功能名称】
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteTTransByIds(String ids);

    /**
     * 删除【请填写功能名称】信息
     *
     * @param tid 【请填写功能名称】ID
     * @return 结果
     */
    public int deleteTTransById(Integer tid);
}
