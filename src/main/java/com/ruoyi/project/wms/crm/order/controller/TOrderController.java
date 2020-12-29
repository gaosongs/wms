package com.ruoyi.project.wms.crm.order.controller;

import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.aspectj.lang.annotation.Log;
import com.ruoyi.framework.aspectj.lang.enums.BusinessType;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.framework.web.page.TableDataInfo;
import com.ruoyi.project.wms.crm.order.domain.TOrder;
import com.ruoyi.project.wms.crm.order.service.ITOrderService;
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
@RequestMapping("/crm/order")
public class TOrderController extends BaseController
{
    private String prefix = "wms/crm/order";

    @Autowired
    private ITOrderService tOrderService;

    @RequiresPermissions("crm:order:view")
    @GetMapping()
    public String order()
    {
        return prefix + "/order";
    }

    /**
     * 查询【请填写功能名称】列表
     */
    @RequiresPermissions("crm:order:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(TOrder tOrder)
    {
        startPage();
        List<TOrder> list = tOrderService.selectTOrderList(tOrder);
        return getDataTable(list);
    }

    /**
     * 导出【请填写功能名称】列表
     */
    @RequiresPermissions("crm:order:export")
    @Log(title = "【导出用户订单信息】", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(TOrder tOrder)
    {
        List<TOrder> list = tOrderService.selectTOrderList(tOrder);
        ExcelUtil<TOrder> util = new ExcelUtil<TOrder>(TOrder.class);
        return util.exportExcel(list, "order");
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
    @RequiresPermissions("crm:order:add")
    @Log(title = "【新增用户订单信息】", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(TOrder tOrder)
    {
        return toAjax(tOrderService.insertTOrder(tOrder));
    }

    /**
     * 修改【请填写功能名称】
     */
    @GetMapping("/edit/{oid}")
    public String edit(@PathVariable("oid") Integer oid, ModelMap mmap)
    {
        TOrder tOrder = tOrderService.selectTOrderById(oid);
        mmap.put("tOrder", tOrder);
        return prefix + "/edit";
    }

    /**
     * 修改保存【请填写功能名称】
     */
    @RequiresPermissions("crm:order:edit")
    @Log(title = "【修改用户订单信息】", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(TOrder tOrder)
    {
        return toAjax(tOrderService.updateTOrder(tOrder));
    }

    /**
     * 删除【请填写功能名称】
     */
    @RequiresPermissions("crm:order:remove")
    @Log(title = "【删除用户订单信息】", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(tOrderService.deleteTOrderByIds(ids));
    }
}
