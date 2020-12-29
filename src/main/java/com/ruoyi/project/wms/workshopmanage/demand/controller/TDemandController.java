package com.ruoyi.project.wms.workshopmanage.demand.controller;

import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.aspectj.lang.annotation.Log;
import com.ruoyi.framework.aspectj.lang.enums.BusinessType;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.framework.web.page.TableDataInfo;
import com.ruoyi.project.wms.workshopmanage.demand.domain.TDemand;
import com.ruoyi.project.wms.workshopmanage.demand.service.ITDemandService;
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
 * @date 2020-12-29
 */
@Controller
@RequestMapping("/workshopmanage/demand")
public class TDemandController extends BaseController
{
    private String prefix = "wms/workshopmanage/demand";

    @Autowired
    private ITDemandService tDemandService;

    @RequiresPermissions("workshopmanage:demand:view")
    @GetMapping()
    public String demand()
    {
        return prefix + "/demand";
    }

    /**
     * 查询【请填写功能名称】列表
     */
    @RequiresPermissions("workshopmanage:demand:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(TDemand tDemand)
    {
        startPage();
        List<TDemand> list = tDemandService.selectTDemandList(tDemand);
        return getDataTable(list);
    }

    /**
     * 导出【请填写功能名称】列表
     */
    @RequiresPermissions("workshopmanage:demand:export")
    @Log(title = "【导出需求信息】", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(TDemand tDemand)
    {
        List<TDemand> list = tDemandService.selectTDemandList(tDemand);
        ExcelUtil<TDemand> util = new ExcelUtil<TDemand>(TDemand.class);
        return util.exportExcel(list, "demand");
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
    @RequiresPermissions("workshopmanage:demand:add")
    @Log(title = "【新增需求信息】", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(TDemand tDemand)
    {
        return toAjax(tDemandService.insertTDemand(tDemand));
    }

    /**
     * 修改【请填写功能名称】
     */
    @GetMapping("/edit/{did}")
    public String edit(@PathVariable("did") Long did, ModelMap mmap)
    {
        TDemand tDemand = tDemandService.selectTDemandById(did);
        mmap.put("tDemand", tDemand);
        return prefix + "/edit";
    }

    /**
     * 修改保存【请填写功能名称】
     */
    @RequiresPermissions("workshopmanage:demand:edit")
    @Log(title = "【修改需求信息】", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(TDemand tDemand)
    {
        return toAjax(tDemandService.updateTDemand(tDemand));
    }

    /**
     * 删除【请填写功能名称】
     */
    @RequiresPermissions("workshopmanage:demand:remove")
    @Log(title = "【删除需求信息】", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(tDemandService.deleteTDemandByIds(ids));
    }
}
