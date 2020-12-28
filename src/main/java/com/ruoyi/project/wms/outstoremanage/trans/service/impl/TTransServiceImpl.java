package com.ruoyi.project.wms.outstoremanage.trans.service.impl;

import java.util.List;

import com.ruoyi.project.wms.outstoremanage.trans.domain.TTrans;
import com.ruoyi.project.wms.outstoremanage.trans.mapper.TTransMapper;
import com.ruoyi.project.wms.outstoremanage.trans.service.ITTransService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ruoyi.common.utils.text.Convert;

/**
 * 【请填写功能名称】Service业务层处理
 * 
 * @author ruoyi
 * @date 2020-12-28
 */
@Service
public class TTransServiceImpl implements ITTransService
{
    @Autowired
    private TTransMapper tTransMapper;

    /**
     * 查询【请填写功能名称】
     * 
     * @param tid 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    @Override
    public TTrans selectTTransById(Integer tid)
    {
        return tTransMapper.selectTTransById(tid);
    }

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param tTrans 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public List<TTrans> selectTTransList(TTrans tTrans)
    {
        return tTransMapper.selectTTransList(tTrans);
    }

    /**
     * 新增【请填写功能名称】
     * 
     * @param tTrans 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int insertTTrans(TTrans tTrans)
    {
        return tTransMapper.insertTTrans(tTrans);
    }

    /**
     * 修改【请填写功能名称】
     * 
     * @param tTrans 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int updateTTrans(TTrans tTrans)
    {
        return tTransMapper.updateTTrans(tTrans);
    }

    /**
     * 删除【请填写功能名称】对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteTTransByIds(String ids)
    {
        return tTransMapper.deleteTTransByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param tid 【请填写功能名称】ID
     * @return 结果
     */
    @Override
    public int deleteTTransById(Integer tid)
    {
        return tTransMapper.deleteTTransById(tid);
    }
}
