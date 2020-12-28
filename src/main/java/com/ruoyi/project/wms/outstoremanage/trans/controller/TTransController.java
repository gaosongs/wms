package com.ruoyi.project.wms.outstoremanage.trans.controller;

import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.aspectj.lang.annotation.Log;
import com.ruoyi.framework.aspectj.lang.enums.BusinessType;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.framework.web.page.TableDataInfo;
import com.ruoyi.project.wms.outstoremanage.trans.domain.TTrans;
import com.ruoyi.project.wms.outstoremanage.trans.service.ITTransService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * 【请填写功能名称】Controller
 * 
 * @author ruoyi
 * @date 2020-12-28
 */
@Controller
@RequestMapping("/outstoremanage/trans")
public class TTransController extends BaseController
{
    private String prefix = "wms/outstoremanage/trans";

    @Autowired
    private ITTransService tTransService;

    @RequiresPermissions("outstoremanage:trans:view")
    @GetMapping()
    public String trans()
    {
        return prefix + "/trans";
    }

    /**
     * 查询【请填写功能名称】列表
     */
    @RequiresPermissions("outstoremanage:trans:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(TTrans tTrans)
    {
        startPage();
        List<TTrans> list = tTransService.selectTTransList(tTrans);
        return getDataTable(list);
    }

    /**
     * 导出【请填写功能名称】列表
     */
    @RequiresPermissions("outstoremanage:trans:export")
    @Log(title = "【导出运输信息】", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(TTrans tTrans)
    {
        List<TTrans> list = tTransService.selectTTransList(tTrans);
        ExcelUtil<TTrans> util = new ExcelUtil<TTrans>(TTrans.class);
        return util.exportExcel(list, "trans");
    }

    /**
     * 新增【请填写功能名称】
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存【请填写功能名称】
     */
    @RequiresPermissions("outstoremanage:trans:add")
    @Log(title = "【新增运输信息】", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(TTrans tTrans)
    {
        return toAjax(tTransService.insertTTrans(tTrans));
    }

    /**
     * 修改【请填写功能名称】
     */
    @GetMapping("/edit/{tid}")
    public String edit(@PathVariable("tid") Integer tid, ModelMap mmap)
    {
        TTrans tTrans = tTransService.selectTTransById(tid);
        mmap.put("tTrans", tTrans);
        return prefix + "/edit";
    }

    /**
     * 修改保存【请填写功能名称】
     */
    @RequiresPermissions("outstoremanage:trans:edit")
    @Log(title = "【修改运输信息】", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(TTrans tTrans)
    {
        return toAjax(tTransService.updateTTrans(tTrans));
    }

    /**
     * 删除【请填写功能名称】
     */
    @RequiresPermissions("outstoremanage:trans:remove")
    @Log(title = "【删除运输信息】", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(tTransService.deleteTTransByIds(ids));
    }
}
