package com.ruoyi.project.wms.storemanage.materials.controller;

import java.util.List;
import com.ruoyi.project.wms.storemanage.materials.domain.TMaterials;
import com.ruoyi.project.wms.storemanage.materials.service.ITMaterialsService;
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
 * @date 2020-12-29
 */
@Controller
@RequestMapping("/storemanage/materials")
public class TMaterialsController extends BaseController
{
    private String prefix = "wms/storemanage/materials";

    @Autowired
    private ITMaterialsService tMaterialsService;

    @RequiresPermissions("storemanage:materials:view")
    @GetMapping()
    public String materials()
    {
        return prefix + "/materials";
    }

    /**
     * 查询【材料】列表
     */
    @RequiresPermissions("storemanage:materials:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(TMaterials tMaterials)
    {
        startPage();
        List<TMaterials> list = tMaterialsService.selectTMaterialsList(tMaterials);
        return getDataTable(list);
    }

    /**
     * 导出【请填写功能名称】列表
     */
    @RequiresPermissions("storemanage:materials:export")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(TMaterials tMaterials)
    {
        List<TMaterials> list = tMaterialsService.selectTMaterialsList(tMaterials);
        ExcelUtil<TMaterials> util = new ExcelUtil<TMaterials>(TMaterials.class);
        return util.exportExcel(list, "materials");
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
    @RequiresPermissions("storemanage:materials:add")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(TMaterials tMaterials)
    {
        return toAjax(tMaterialsService.insertTMaterials(tMaterials));
    }

    /**
     * 修改【请填写功能名称】
     */
    @GetMapping("/edit/{mid}")
    public String edit(@PathVariable("mid") Long mid, ModelMap mmap)
    {
        TMaterials tMaterials = tMaterialsService.selectTMaterialsById(mid);
        mmap.put("tMaterials", tMaterials);
        return prefix + "/edit";
    }

    /**
     * 修改保存【请填写功能名称】
     */
    @RequiresPermissions("storemanage:materials:edit")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(TMaterials tMaterials)
    {
        return toAjax(tMaterialsService.updateTMaterials(tMaterials));
    }

    /**
     * 删除【请填写功能名称】
     */
    @RequiresPermissions("storemanage:materials:remove")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(tMaterialsService.deleteTMaterialsByIds(ids));
    }
}
