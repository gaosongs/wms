package com.ruoyi.project.wms.workshopmanage.workshop.controller;


import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.aspectj.lang.annotation.Log;
import com.ruoyi.framework.aspectj.lang.enums.BusinessType;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.framework.web.page.TableDataInfo;
import com.ruoyi.project.wms.workshopmanage.workshop.domain.TWorkshop;
import com.ruoyi.project.wms.workshopmanage.workshop.service.ITWorkshopService;
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
@RequestMapping("/workshopmanage/workshop")
public class TWorkshopController extends BaseController
{
    private String prefix = "wms/workshopmanage/workshop";

    @Autowired
    private ITWorkshopService tWorkshopService;

    @RequiresPermissions("workshopmanage:workshop:view")
    @GetMapping()
    public String workshop()
    {
        return prefix + "/workshop";
    }

    /**
     * 查询【请填写功能名称】列表
     */
    @RequiresPermissions("workshopmanage:workshop:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(TWorkshop tWorkshop)
    {
        startPage();
        List<TWorkshop> list = tWorkshopService.selectTWorkshopList(tWorkshop);
        return getDataTable(list);
    }

    /**
     * 导出【请填写功能名称】列表
     */
    @RequiresPermissions("workshopmanage:workshop:export")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(TWorkshop tWorkshop)
    {
        List<TWorkshop> list = tWorkshopService.selectTWorkshopList(tWorkshop);
        ExcelUtil<TWorkshop> util = new ExcelUtil<TWorkshop>(TWorkshop.class);
        return util.exportExcel(list, "workshop");
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
    @RequiresPermissions("workshopmanage:workshop:add")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(TWorkshop tWorkshop)
    {
        return toAjax(tWorkshopService.insertTWorkshop(tWorkshop));
    }

    /**
     * 修改【请填写功能名称】
     */
    @GetMapping("/edit/{wsid}")
    public String edit(@PathVariable("wsid") Long wsid, ModelMap mmap)
    {
        TWorkshop tWorkshop = tWorkshopService.selectTWorkshopById(wsid);
        mmap.put("tWorkshop", tWorkshop);
        return prefix + "/edit";
    }

    /**
     * 修改保存【请填写功能名称】
     */
    @RequiresPermissions("workshopmanage:workshop:edit")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(TWorkshop tWorkshop)
    {
        return toAjax(tWorkshopService.updateTWorkshop(tWorkshop));
    }

    /**
     * 删除【请填写功能名称】
     */
    @RequiresPermissions("workshopmanage:workshop:remove")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(tWorkshopService.deleteTWorkshopByIds(ids));
    }
}
