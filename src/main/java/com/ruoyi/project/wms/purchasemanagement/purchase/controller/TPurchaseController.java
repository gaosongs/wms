package com.ruoyi.project.wms.purchasemanagement.purchase.controller;

import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.aspectj.lang.annotation.Log;
import com.ruoyi.framework.aspectj.lang.enums.BusinessType;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.framework.web.page.TableDataInfo;
import com.ruoyi.project.wms.purchasemanagement.purchase.domain.TPurchase;
import com.ruoyi.project.wms.purchasemanagement.purchase.service.ITPurchaseService;
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
@RequestMapping("/purchasemanagement/purchase")
public class TPurchaseController extends BaseController
{
    private String prefix = "wms/purchasemanagement/purchase";

    @Autowired
    private ITPurchaseService tPurchaseService;

    @RequiresPermissions("system:purchase:view")
    @GetMapping()
    public String purchase()
    {
        return prefix + "/purchase";
    }

    /**
     * 查询【请填写功能名称】列表
     */
    @RequiresPermissions("system:purchase:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(TPurchase tPurchase)
    {
        startPage();
        List<TPurchase> list = tPurchaseService.selectTPurchaseList(tPurchase);
        return getDataTable(list);
    }

    /**
     * 导出【请填写功能名称】列表
     */
    @RequiresPermissions("system:purchase:export")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(TPurchase tPurchase)
    {
        List<TPurchase> list = tPurchaseService.selectTPurchaseList(tPurchase);
        ExcelUtil<TPurchase> util = new ExcelUtil<TPurchase>(TPurchase.class);
        return util.exportExcel(list, "purchase");
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
    @RequiresPermissions("system:purchase:add")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(TPurchase tPurchase)
    {
        return toAjax(tPurchaseService.insertTPurchase(tPurchase));
    }

    /**
     * 修改【请填写功能名称】
     */
    @GetMapping("/edit/{pid}")
    public String edit(@PathVariable("pid") Long pid, ModelMap mmap)
    {
        TPurchase tPurchase = tPurchaseService.selectTPurchaseById(pid);
        mmap.put("tPurchase", tPurchase);
        return prefix + "/edit";
    }

    /**
     * 修改保存【请填写功能名称】
     */
    @RequiresPermissions("system:purchase:edit")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(TPurchase tPurchase)
    {
        return toAjax(tPurchaseService.updateTPurchase(tPurchase));
    }

    /**
     * 删除【请填写功能名称】
     */
    @RequiresPermissions("system:purchase:remove")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(tPurchaseService.deleteTPurchaseByIds(ids));
    }
}
