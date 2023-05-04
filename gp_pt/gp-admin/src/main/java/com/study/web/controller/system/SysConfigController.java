package com.study.web.controller.system;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.study.common.annotation.Log;
import com.study.common.config.Global;
import com.study.common.constant.UserConstants;
import com.study.common.core.base.BaseController;
import com.study.common.core.domain.AjaxResult;
import com.study.common.core.page.TableDataInfo;
import com.study.common.enums.BusinessType;
import com.study.common.util.ExcelUtil;
import com.study.common.util.file.FileUploadUtils;
import com.study.framework.util.ShiroUtils;
import com.study.system.constant.SystemRedisKey;
import com.study.system.entity.SysConfig;
import com.study.system.service.SysConfigService;

/**
 *  配置参数管理
 */
@Controller
@RequestMapping("/system/config")
public class SysConfigController extends BaseController {
	
    private static String prefix = "system/config";

	@Autowired
	private SysConfigService configService;
	
	/**
	 * 项目参数
	 */
	@RequestMapping("projectConfig")
	public String projectConfig(ModelMap mmap) {
		SysConfig sysNameConfig = new SysConfig();
		sysNameConfig.setConfigKey("sys.name");
		mmap.put("sysNameConfig",configService.get(sysNameConfig));
		
		SysConfig sysCopyrightConfig = new SysConfig();
		sysCopyrightConfig.setConfigKey("sys.copyright");
		mmap.put("sysCopyrightConfig",configService.get(sysCopyrightConfig));
		
		SysConfig sysLogoConfig = new SysConfig();
		sysLogoConfig.setConfigKey("sys.logo");
		mmap.put("sysLogoConfig",configService.get(sysLogoConfig));
		
		SysConfig wxLonginbgConfig = new SysConfig();
		wxLonginbgConfig.setConfigKey("app_login_bg");
		mmap.put("applonginbg", configService.get(wxLonginbgConfig));
		
		return prefix + "/projectConfig";
	}
	
	/**
             * 上传LOGO
     */
    @Log(title = "参数管理", businessType = BusinessType.UPDATE)
    @PostMapping("/uploadLogo")
    @ResponseBody
    public AjaxResult updateAvatar(@RequestParam("logo") MultipartFile logo) {
        try {
            if (!logo.isEmpty()) {
                String path = FileUploadUtils.upload(Global.getLogoPath(), logo);
                Map<String, Object> map = new HashMap<>();
                map.put("path", path);
                return AjaxResult.success(map);
            }
            return error();
        } catch (Exception e) {
            return error(e.getMessage());
        }
    }
	
    @ResponseBody
    @RequestMapping("getByKey/{key}")
    public AjaxResult getByKey(@PathVariable String key) {
    	String value = configService.getConfigByKey(key);
    	Map<String, Object> map = new HashMap<>();
    	map.put("value", value);
    	return AjaxResult.success(map);
    }
	

	@RequiresPermissions("system:config:view")
	@GetMapping()
	public String config() {
		return prefix + "/config";
	}

	/**
	 * 查询参数配置列表
	 */
	@RequiresPermissions("system:config:list")
	@PostMapping("/list")
	@ResponseBody
	public TableDataInfo list(SysConfig config) {
		startPage();
		List<SysConfig> list = configService.list(config);
		return getDataTable(list);
	}

	@Log(title = "参数管理", businessType = BusinessType.EXPORT)
	@RequiresPermissions("system:config:export")
	@PostMapping("/export")
	@ResponseBody
	public AjaxResult export(SysConfig config) {
		List<SysConfig> list = configService.list(config);
		ExcelUtil<SysConfig> util = new ExcelUtil<SysConfig>(SysConfig.class);
		return util.exportExcel(list, "参数数据");
	}

	/**
	 * 新增参数配置
	 */
	@GetMapping("/add")
	public String add() {
		return prefix + "/add";
	}

	/**
	 * 新增保存参数配置
	 */
	@RequiresPermissions("system:config:add")
	@Log(title = "参数管理", businessType = BusinessType.INSERT)
	@PostMapping("/add")
	@ResponseBody
	public AjaxResult addSave(@Validated SysConfig config) {
		if (UserConstants.CONFIG_KEY_NOT_UNIQUE.equals(configService.checkConfigKeyUnique(config))) {
			return error("新增参数'" + config.getConfigName() + "'失败，参数键名已存在");
		}
		config.setCreateBy(ShiroUtils.getLoginName());
		return toAjax(configService.add(config));
	}

	/**
	 * 修改参数配置
	 */
	@GetMapping("/edit/{configId}")
	public String edit(@PathVariable("configId") Long configId, ModelMap mmap) {
		mmap.put("config", configService.getById(configId));
		return prefix + "/edit";
	}

	/**
	 * 修改保存参数配置
	 */
	@RequiresPermissions("system:config:edit")
	@Log(title = "参数管理", businessType = BusinessType.UPDATE)
	@PostMapping("/edit")
	@ResponseBody
	public AjaxResult editSave(@Validated SysConfig config) {
		if (UserConstants.CONFIG_KEY_NOT_UNIQUE.equals(configService.checkConfigKeyUnique(config))) {
			return error("修改参数'" + config.getConfigName() + "'失败，参数键名已存在");
		}
		// 删除缓存
		configService.deleteRedis(SystemRedisKey.SYSTEM_CONFIG_PREFIX + config.getConfigKey());
		config.setUpdateBy(ShiroUtils.getLoginName());
		return toAjax(configService.update(config));
	}

	/**
	 * 删除参数配置
	 */
	@RequiresPermissions("system:config:remove")
	@Log(title = "参数管理", businessType = BusinessType.DELETE)
	@PostMapping("/remove")
	@ResponseBody
	@Transactional
	public AjaxResult remove(String ids) {
		String deleteBy = ShiroUtils.getLoginName();
		for(String id : ids.split(",")) {
			// 查询
			SysConfig config = configService.getById(Long.valueOf(id));
			// 删除缓存
			configService.deleteRedis(SystemRedisKey.SYSTEM_CONFIG_PREFIX + config.getConfigKey());
			// 删除
			config.setDeleteBy(deleteBy);
			config.preDelete();
			configService.delete(config);
		}
		return success();
	}

	/**
	 * 校验参数键名
	 */
	@PostMapping("/checkConfigKeyUnique")
	@ResponseBody
	public String checkConfigKeyUnique(SysConfig config) {
		return configService.checkConfigKeyUnique(config);
	}
}
