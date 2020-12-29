package com.ruoyi.project.wms.workshopmanage.worker.controller;


import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.aspectj.lang.annotation.Log;
import com.ruoyi.framework.aspectj.lang.enums.BusinessType;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.framework.web.page.TableDataInfo;
import com.ruoyi.project.wms.workshopmanage.worker.domain.TWorker;
import com.ruoyi.project.wms.workshopmanage.worker.service.ITWorkerService;
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
@RequestMapping("/workshopmanage/worker")
public class TWorkerController extends BaseController
{
    private String prefix = "wms/workshopmanage/worker";

    @Autowired
    private ITWorkerService tWorkerService;

    @RequiresPermissions("workshopmanage:worker:view")
    @GetMapping()
    public String worker()
    {
        return prefix + "/worker";
    }

    /**
     * 查询【请填写功能名称】列表
     */
    @RequiresPermissions("workshopmanage:worker:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(TWorker tWorker)
    {
        startPage();
        List<TWorker> list = tWorkerService.selectTWorkerList(tWorker);
        return getDataTable(list);
    }

    /**
     * 导出【请填写功能名称】列表
     */
    @RequiresPermissions("workshopmanage:worker:export")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(TWorker tWorker)
    {
        List<TWorker> list = tWorkerService.selectTWorkerList(tWorker);
        ExcelUtil<TWorker> util = new ExcelUtil<TWorker>(TWorker.class);
        return util.exportExcel(list, "worker");
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
    @RequiresPermissions("workshopmanage:worker:add")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(TWorker tWorker)
    {
        return toAjax(tWorkerService.insertTWorker(tWorker));
    }

    /**
     * 修改【请填写功能名称】
     */
    @GetMapping("/edit/{wid}")
    public String edit(@PathVariable("wid") Long wid, ModelMap mmap)
    {
        TWorker tWorker = tWorkerService.selectTWorkerById(wid);
        mmap.put("tWorker", tWorker);
        return prefix + "/edit";
    }

    /**
     * 修改保存【请填写功能名称】
     */
    @RequiresPermissions("workshopmanage:worker:edit")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(TWorker tWorker)
    {
        return toAjax(tWorkerService.updateTWorker(tWorker));
    }

    /**
     * 删除【请填写功能名称】
     */
    @RequiresPermissions("workshopmanage:worker:remove")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(tWorkerService.deleteTWorkerByIds(ids));
    }
}
