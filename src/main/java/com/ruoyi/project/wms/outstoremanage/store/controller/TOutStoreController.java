package com.ruoyi.project.wms.outstoremanage.store.controller;

import java.util.List;

import com.ruoyi.project.wms.outstoremanage.store.domain.TOutStore;
import com.ruoyi.project.wms.outstoremanage.store.service.ITOutStoreService;
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
@RequestMapping("/outstoremanage/store")
public class TOutStoreController extends BaseController
{
    private String prefix = "wms/outstoremanage/store";

    @Autowired
    private ITOutStoreService tOutStoreService;

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
    public TableDataInfo list(TOutStore tOutStore)
    {
        startPage();
        List<TOutStore> list = tOutStoreService.selectTOutStoreList(tOutStore);
        return getDataTable(list);
    }

    /**
     * 导出【请填写功能名称】列表
     */
    @RequiresPermissions("system:store:export")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(TOutStore tOutStore)
    {
        List<TOutStore> list = tOutStoreService.selectTOutStoreList(tOutStore);
        ExcelUtil<TOutStore> util = new ExcelUtil<TOutStore>(TOutStore.class);
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
    public AjaxResult addSave(TOutStore tOutStore)
    {
        return toAjax(tOutStoreService.insertTOutStore(tOutStore));
    }

    /**
     * 修改【请填写功能名称】
     */
    @GetMapping("/edit/{outid}")
    public String edit(@PathVariable("outid") Integer outid, ModelMap mmap)
    {
        TOutStore tOutStore = tOutStoreService.selectTOutStoreById(outid);
        mmap.put("tOutStore", tOutStore);
        return prefix + "/edit";
    }

    /**
     * 修改保存【请填写功能名称】
     */
    @RequiresPermissions("system:store:edit")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(TOutStore tOutStore)
    {
        return toAjax(tOutStoreService.updateTOutStore(tOutStore));
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
        return toAjax(tOutStoreService.deleteTOutStoreByIds(ids));
    }
}
