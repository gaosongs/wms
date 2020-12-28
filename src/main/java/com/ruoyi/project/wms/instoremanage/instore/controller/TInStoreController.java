package com.ruoyi.project.wms.instoremanage.instore.controller;

import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.aspectj.lang.annotation.Log;
import com.ruoyi.framework.aspectj.lang.enums.BusinessType;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.framework.web.page.TableDataInfo;
import com.ruoyi.project.wms.instoremanage.instore.domain.TInStore;
import com.ruoyi.project.wms.instoremanage.instore.service.ITInStoreService;
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
@RequestMapping("/instoremanage/instore")
public class TInStoreController extends BaseController
{
    private String prefix = "wms/instoremanage/instore";

    @Autowired
    private ITInStoreService tInStoreService;

    @RequiresPermissions("instoremanage:instore:view")
    @GetMapping()
    public String store()
    {
        return prefix + "/store";
    }

    /**
     * 查询【请填写功能名称】列表
     */
    @RequiresPermissions("instoremanage:instore:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(TInStore tInStore)
    {
        startPage();
        List<TInStore> list = tInStoreService.selectTInStoreList(tInStore);
        return getDataTable(list);
    }

    /**
     * 导出【请填写功能名称】列表
     */
    @RequiresPermissions("instoremanage:instore:export")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(TInStore tInStore)
    {
        List<TInStore> list = tInStoreService.selectTInStoreList(tInStore);
        ExcelUtil<TInStore> util = new ExcelUtil<TInStore>(TInStore.class);
        return util.exportExcel(list, "instore");
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
    @RequiresPermissions("instoremanage:instore:add")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(TInStore tInStore)
    {
        return toAjax(tInStoreService.insertTInStore(tInStore));
    }

    /**
     * 修改【请填写功能名称】
     */
    @GetMapping("/edit/{inid}")
    public String edit(@PathVariable("inid") Integer inid, ModelMap mmap)
    {
        TInStore tInStore = tInStoreService.selectTInStoreById(inid);
        mmap.put("tInStore", tInStore);
        return prefix + "/edit";
    }

    /**
     * 修改保存【请填写功能名称】
     */
    @RequiresPermissions("instoremanage:instore:edit")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(TInStore tInStore)
    {
        return toAjax(tInStoreService.updateTInStore(tInStore));
    }

    /**
     * 删除【请填写功能名称】
     */
    @RequiresPermissions("instoremanage:instore:remove")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(tInStoreService.deleteTInStoreByIds(ids));
    }
}
