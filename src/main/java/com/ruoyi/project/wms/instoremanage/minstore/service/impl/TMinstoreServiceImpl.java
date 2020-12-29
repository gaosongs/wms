package com.ruoyi.project.wms.instoremanage.minstore.service.impl;

import com.ruoyi.common.utils.text.Convert;
import com.ruoyi.project.wms.instoremanage.minstore.domain.TMinstore;
import com.ruoyi.project.wms.instoremanage.minstore.mapper.TMinstoreMapper;
import com.ruoyi.project.wms.instoremanage.minstore.service.ITMinstoreService;
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
public class TMinstoreServiceImpl implements ITMinstoreService
{
    @Autowired
    private TMinstoreMapper tMinstoreMapper;

    /**
     * 查询【请填写功能名称】
     * 
     * @param minid 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    @Override
    public TMinstore selectTMinstoreById(Long minid)
    {
        return tMinstoreMapper.selectTMinstoreById(minid);
    }

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param tMinstore 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public List<TMinstore> selectTMinstoreList(TMinstore tMinstore)
    {
        return tMinstoreMapper.selectTMinstoreList(tMinstore);
    }

    /**
     * 新增【请填写功能名称】
     * 
     * @param tMinstore 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int insertTMinstore(TMinstore tMinstore)
    {
        return tMinstoreMapper.insertTMinstore(tMinstore);
    }

    /**
     * 修改【请填写功能名称】
     * 
     * @param tMinstore 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int updateTMinstore(TMinstore tMinstore)
    {
        return tMinstoreMapper.updateTMinstore(tMinstore);
    }

    /**
     * 删除【请填写功能名称】对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteTMinstoreByIds(String ids)
    {
        return tMinstoreMapper.deleteTMinstoreByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param minid 【请填写功能名称】ID
     * @return 结果
     */
    @Override
    public int deleteTMinstoreById(Long minid)
    {
        return tMinstoreMapper.deleteTMinstoreById(minid);
    }
}
