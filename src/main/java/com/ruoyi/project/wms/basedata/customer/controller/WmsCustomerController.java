package com.ruoyi.project.wms.basedata.customer.controller;

import java.util.List;

import com.ruoyi.project.wms.basedata.customer.domain.WmsCustomer;
import com.ruoyi.project.wms.basedata.customer.service.IWmsCustomerService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.ruoyi.framework.aspectj.lang.annotation.Log;
import com.ruoyi.framework.aspectj.lang.enums.BusinessType;

import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.web.page.TableDataInfo;

/**
 * 【请填写功能名称】Controller
 * 
 * @author ruoyi
 * @date 2020-12-25
 */
@Controller
@RequestMapping("/basedata/customer")
public class WmsCustomerController extends BaseController
{
    private String prefix = "wms/basedata/customer";

    @Autowired
    private IWmsCustomerService wmsCustomerService;

    @RequiresPermissions("basedata:customer:view")
    @GetMapping()
    public String customer()
    {
        return prefix + "/customer";
    }

    /**
     * 查询【请填写功能名称】列表
     */
    @RequiresPermissions("basedata:customer:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(WmsCustomer wmsCustomer)
    {
        startPage();
        List<WmsCustomer> list = wmsCustomerService.selectWmsCustomerList(wmsCustomer);
        return getDataTable(list);
    }

    /**
     * 导出【请填写功能名称】列表
     */
    @RequiresPermissions("basedata:customer:export")
    @Log(title = "【客户信息导出】", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(WmsCustomer wmsCustomer)
    {
        List<WmsCustomer> list = wmsCustomerService.selectWmsCustomerList(wmsCustomer);
        ExcelUtil<WmsCustomer> util = new ExcelUtil<WmsCustomer>(WmsCustomer.class);
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
    @RequiresPermissions("basedata:customer:add")
    @Log(title = "【新增客户信息】", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(WmsCustomer wmsCustomer)
    {
        return toAjax(wmsCustomerService.insertWmsCustomer(wmsCustomer));
    }

    /**
     * 修改【请填写功能名称】
     */
    @GetMapping("/edit/{cid}")
    public String edit(@PathVariable("cid") Integer cid, ModelMap mmap)
    {
        WmsCustomer wmsCustomer = wmsCustomerService.selectWmsCustomerById(cid);
        mmap.put("wmsCustomer", wmsCustomer);
        return prefix + "/edit";
    }

    /**
     * 修改保存【请填写功能名称】
     */
    @RequiresPermissions("basedata:customer:edit")
    @Log(title = "【修改客户信息】", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(WmsCustomer wmsCustomer)
    {
        return toAjax(wmsCustomerService.updateWmsCustomer(wmsCustomer));
    }

    /**
     * 删除【请填写功能名称】
     */
    @RequiresPermissions("basedata:customer:remove")
    @Log(title = "【删除客户信息】", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(wmsCustomerService.deleteWmsCustomerByIds(ids));
    }
}
