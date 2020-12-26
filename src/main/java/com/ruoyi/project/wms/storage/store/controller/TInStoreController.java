package com.ruoyi.project.system.store.controller;

import java.util.List;
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
import com.ruoyi.project.system.store.domain.TInStore;
import com.ruoyi.project.system.store.service.ITInStoreService;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.web.page.TableDataInfo;

/**
 * 【请填写功能名称】Controller
 * 
 * @author ruoyi
 * @date 2020-12-26
 */
@Controller
@RequestMapping("/system/store")
public class TInStoreController extends BaseController
{
    private String prefix = "system/store";

    @Autowired
    private ITInStoreService tInStoreService;

    @RequiresPermissions("system:store:view")
    @GetMapping()
    public String store()
    {
        return prefix + "/store";
    }

    /**
     * 查询【请填写功能名称】列表
     */
    @RequiresPermissions("system:store:list")
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
    @RequiresPermissions("system:store:export")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(TInStore tInStore)
    {
        List<TInStore> list = tInStoreService.selectTInStoreList(tInStore);
        ExcelUtil<TInStore> util = new ExcelUtil<TInStore>(TInStore.class);
        return util.exportExcel(list, "store");
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
    @RequiresPermissions("system:store:add")
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
    @RequiresPermissions("system:store:edit")
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
    @RequiresPermissions("system:store:remove")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(tInStoreService.deleteTInStoreByIds(ids));
    }
}
