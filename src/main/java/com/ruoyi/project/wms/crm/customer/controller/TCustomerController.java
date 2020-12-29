package com.ruoyi.project.wms.crm.customer.controller;


import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.aspectj.lang.annotation.Log;
import com.ruoyi.framework.aspectj.lang.enums.BusinessType;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.framework.web.page.TableDataInfo;
import com.ruoyi.project.wms.crm.customer.domain.TCustomer;
import com.ruoyi.project.wms.crm.customer.service.ITCustomerService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * 【客户管理】Controller
 * 
 * @author ruoyi
 * @date 2020-12-28
 */
@Controller
@RequestMapping("/crm/customer")
public class TCustomerController extends BaseController
{
    private String prefix = "wms/crm/customer";

    @Autowired
    private ITCustomerService tCustomerService;

    @RequiresPermissions("crm:customer:view")
    @GetMapping()
    public String customer()
    {
        return prefix + "/customer";
    }

    /**
     * 查询【请填写功能名称】列表
     */
    @RequiresPermissions("crm:customer:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(TCustomer tCustomer)
    {
        startPage();
        List<TCustomer> list = tCustomerService.selectTCustomerList(tCustomer);
        return getDataTable(list);
    }

    /**
     * 导出【请填写功能名称】列表
     */
    @RequiresPermissions("crm:customer:export")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(TCustomer tCustomer)
    {
        List<TCustomer> list = tCustomerService.selectTCustomerList(tCustomer);
        ExcelUtil<TCustomer> util = new ExcelUtil<TCustomer>(TCustomer.class);
        return util.exportExcel(list, "customer");
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
    @RequiresPermissions("crm:customer:add")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(TCustomer tCustomer)
    {
        return toAjax(tCustomerService.insertTCustomer(tCustomer));
    }

    /**
     * 修改【请填写功能名称】
     */
    @GetMapping("/edit/{cid}")
    public String edit(@PathVariable("cid") Integer cid, ModelMap mmap)
    {
        TCustomer tCustomer = tCustomerService.selectTCustomerById(cid);
        mmap.put("tCustomer", tCustomer);
        return prefix + "/edit";
    }

    /**
     * 修改保存【请填写功能名称】
     */
    @RequiresPermissions("crm:customer:edit")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(TCustomer tCustomer)
    {
        return toAjax(tCustomerService.updateTCustomer(tCustomer));
    }

    /**
     * 删除【请填写功能名称】
     */
    @RequiresPermissions("crm:customer:remove")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(tCustomerService.deleteTCustomerByIds(ids));
    }
}
