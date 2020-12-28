package com.ruoyi.project.wms.storemanage.store.controller;

import java.util.List;
import com.ruoyi.project.wms.storemanage.store.domain.TStore;
import com.ruoyi.project.wms.storemanage.store.service.ITStoreService;
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
 * @date 2020-12-28
 */
@Controller
@RequestMapping("/storemanage/store")
public class TStoreController extends BaseController
{
    private String prefix = "wms/storemanage/store";

    @Autowired
    private ITStoreService tStoreService;

    @RequiresPermissions("storemanage:store:view")
    @GetMapping()
    public String store()
    {
        return prefix + "/store";
    }

    /**
     * 查询【请填写功能名称】列表
     */
    @RequiresPermissions("storemanage:store:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(TStore tStore)
    {
        startPage();
        List<TStore> list = tStoreService.selectTStoreList(tStore);
        return getDataTable(list);
    }

    /**
     * 导出【请填写功能名称】列表
     */
    @RequiresPermissions("storemanage:store:export")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(TStore tStore)
    {
        List<TStore> list = tStoreService.selectTStoreList(tStore);
        ExcelUtil<TStore> util = new ExcelUtil<TStore>(TStore.class);
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
    @RequiresPermissions("storemanage:store:add")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(TStore tStore)
    {
        return toAjax(tStoreService.insertTStore(tStore));
    }

    /**
     * 修改【请填写功能名称】
     */
    @GetMapping("/edit/{sid}")
    public String edit(@PathVariable("sid") Integer sid, ModelMap mmap)
    {
        TStore tStore = tStoreService.selectTStoreById(sid);
        mmap.put("tStore", tStore);
        return prefix + "/edit";
    }

    /**
     * 修改保存【请填写功能名称】
     */
    @RequiresPermissions("storemanage:store:edit")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(TStore tStore)
    {
        return toAjax(tStoreService.updateTStore(tStore));
    }

    /**
     * 删除【请填写功能名称】
     */
    @RequiresPermissions("storemanage:store:remove")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(tStoreService.deleteTStoreByIds(ids));
    }
}
