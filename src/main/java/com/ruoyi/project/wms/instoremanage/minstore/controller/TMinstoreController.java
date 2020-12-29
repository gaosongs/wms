package com.ruoyi.project.wms.instoremanage.minstore.controller;

import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.aspectj.lang.annotation.Log;
import com.ruoyi.framework.aspectj.lang.enums.BusinessType;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.framework.web.page.TableDataInfo;
import com.ruoyi.project.wms.instoremanage.minstore.domain.TMinstore;
import com.ruoyi.project.wms.instoremanage.minstore.service.ITMinstoreService;
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
@RequestMapping("/instoremanage/minstore")
public class TMinstoreController extends BaseController
{
    private String prefix = "wms/instoremanage/minstore";

    @Autowired
    private ITMinstoreService tMinstoreService;

    @RequiresPermissions("instoremanage:minstore:view")
    @GetMapping()
    public String minstore()
    {
        return prefix + "/minstore";
    }

    /**
     * 查询【请填写功能名称】列表
     */
    @RequiresPermissions("instoremanage:minstore:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(TMinstore tMinstore)
    {
        startPage();
        List<TMinstore> list = tMinstoreService.selectTMinstoreList(tMinstore);
        return getDataTable(list);
    }

    /**
     * 导出【请填写功能名称】列表
     */
    @RequiresPermissions("instoremanage:minstore:export")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(TMinstore tMinstore)
    {
        List<TMinstore> list = tMinstoreService.selectTMinstoreList(tMinstore);
        ExcelUtil<TMinstore> util = new ExcelUtil<TMinstore>(TMinstore.class);
        return util.exportExcel(list, "minstore");
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
    @RequiresPermissions("instoremanage:minstore:add")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(TMinstore tMinstore)
    {
        return toAjax(tMinstoreService.insertTMinstore(tMinstore));
    }

    /**
     * 修改【请填写功能名称】
     */
    @GetMapping("/edit/{minid}")
    public String edit(@PathVariable("minid") Long minid, ModelMap mmap)
    {
        TMinstore tMinstore = tMinstoreService.selectTMinstoreById(minid);
        mmap.put("tMinstore", tMinstore);
        return prefix + "/edit";
    }

    /**
     * 修改保存【请填写功能名称】
     */
    @RequiresPermissions("instoremanage:minstore:edit")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(TMinstore tMinstore)
    {
        return toAjax(tMinstoreService.updateTMinstore(tMinstore));
    }

    /**
     * 删除【请填写功能名称】
     */
    @RequiresPermissions("instoremanage:minstore:remove")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(tMinstoreService.deleteTMinstoreByIds(ids));
    }
}
