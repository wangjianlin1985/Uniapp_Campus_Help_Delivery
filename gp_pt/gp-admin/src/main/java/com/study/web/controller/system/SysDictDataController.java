package com.study.web.controller.system;

import java.util.List;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.study.common.annotation.Log;
import com.study.common.constant.PunctuationConstants;
import com.study.common.core.base.BaseController;
import com.study.common.core.domain.AjaxResult;
import com.study.common.core.page.TableDataInfo;
import com.study.common.core.text.Convert;
import com.study.common.enums.BusinessType;
import com.study.common.util.ExcelUtil;
import com.study.framework.util.ShiroUtils;
import com.study.system.constant.SystemRedisKey;
import com.study.system.entity.SysDictData;
import com.study.system.service.SysDictDataService;

/**
 * 数据字典值管理
 */
@Controller
@RequestMapping("/system/dict/data")
public class SysDictDataController extends BaseController {

	private static String prefix = "system/dict/data";

	@Autowired
	private SysDictDataService dictDataService;

	@RequiresPermissions("system:dict:view")
	@GetMapping()
	public String dictData() {
		return prefix + "/data";
	}

	@PostMapping("/list")
	@RequiresPermissions("system:dict:list")
	@ResponseBody
	public TableDataInfo list(SysDictData dictData) {
		startPage();
		List<SysDictData> list = dictDataService.list(dictData);
		return getDataTable(list);
	}

	@Log(title = "字典数据", businessType = BusinessType.EXPORT)
	@RequiresPermissions("system:dict:export")
	@PostMapping("/export")
	@ResponseBody
	public AjaxResult export(SysDictData dictData) {
		List<SysDictData> list = dictDataService.list(dictData);
		ExcelUtil<SysDictData> util = new ExcelUtil<SysDictData>(SysDictData.class);
		return util.exportExcel(list, "字典数据");
	}

	/**
	 * 新增字典类型
	 */
	@GetMapping("/add/{dictType}")
	public String add(@PathVariable("dictType") String dictType, ModelMap mmap) {
		mmap.put("dictType", dictType);
		return prefix + "/add";
	}

	/**
	 * 新增保存字典类型
	 */
	@Log(title = "字典数据", businessType = BusinessType.INSERT)
	@RequiresPermissions("system:dict:add")
	@PostMapping("/add")
	@ResponseBody
	public AjaxResult addSave(@Validated SysDictData dict) {
		// 删除缓存
		dictDataService.deleteRedis(SystemRedisKey.SYSTEM_DICTDATA_TYPEPREFIX + dict.getDictType());

		dict.setCreateBy(ShiroUtils.getLoginName());
		return toAjax(dictDataService.add(dict));
	}

	/**
	 * 修改字典类型
	 */
	@GetMapping("/edit/{dictCode}")
	public String edit(@PathVariable("dictCode") Long dictCode, ModelMap mmap) {
		mmap.put("dict", dictDataService.getById(dictCode));
		return prefix + "/edit";
	}

	/**
	 * 修改保存字典类型
	 */
	@Log(title = "字典数据", businessType = BusinessType.UPDATE)
	@RequiresPermissions("system:dict:edit")
	@PostMapping("/edit")
	@ResponseBody
	public AjaxResult editSave(@Validated SysDictData dict) {
		dict.setUpdateBy(ShiroUtils.getLoginName());
		dictDataService
				.deleteRedis(SystemRedisKey.SYSTEM_DICTDATE_LABELPREFIX + dict.getDictType() + dict.getDictValue());

		// 保存修改的同时删除缓存
		return toAjax(
				dictDataService.updateRedis(dict, SystemRedisKey.SYSTEM_DICTDATA_TYPEPREFIX + dict.getDictType()));
	}

	@Log(title = "字典数据", businessType = BusinessType.DELETE)
	@RequiresPermissions("system:dict:remove")
	@PostMapping("/remove")
	@ResponseBody
	public AjaxResult remove(String ids) {
		// 删除缓存
		SysDictData data = dictDataService.getById(Long.valueOf(ids.split(PunctuationConstants.COMMA)[0]));
		dictDataService.deleteRedis(SystemRedisKey.SYSTEM_DICTDATA_TYPEPREFIX + data.getDictType());
		dictDataService
				.deleteRedis(SystemRedisKey.SYSTEM_DICTDATE_LABELPREFIX + data.getDictType() + data.getDictValue());

		String deleteBy = ShiroUtils.getLoginName();
		dictDataService.deleteBatch(Convert.toLongArray(ids), deleteBy);
		return success();
	}
}
