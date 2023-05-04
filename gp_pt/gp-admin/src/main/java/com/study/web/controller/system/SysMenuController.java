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
import com.study.common.constant.UserConstants;
import com.study.common.core.base.BaseController;
import com.study.common.core.domain.AjaxResult;
import com.study.common.core.domain.Ztree;
import com.study.common.enums.BusinessType;
import com.study.common.enums.CommonStatus;
import com.study.framework.util.ShiroUtils;
import com.study.system.entity.SysMenu;
import com.study.system.entity.SysRole;
import com.study.system.service.SysMenuService;
import com.study.system.service.SysMenuTopService;

/**
 * 菜单管理
 */
@Controller
@RequestMapping("/system/menu")
public class SysMenuController extends BaseController {
	
    private static String prefix = "system/menu";

	@Autowired
	private SysMenuService menuService;
	@Autowired
	private SysMenuTopService menuTopService;

	@RequiresPermissions("system:menu:view")
	@GetMapping()
	public String menu() {
		return prefix + "/menu";
	}

	@RequiresPermissions("system:menu:list")
	@PostMapping("/list")
	@ResponseBody
	public List<SysMenu> list(SysMenu menu) {
		Long userId = ShiroUtils.getUserId();
		List<SysMenu> menuList = menuService.selectMenuList(menu, userId);
		return menuList;
	}

	/**
	 * 删除菜单
	 */
	@Log(title = "菜单管理", businessType = BusinessType.DELETE)
	@RequiresPermissions("system:menu:remove")
	@GetMapping("/remove/{menuId}")
	@ResponseBody
	public AjaxResult remove(@PathVariable("menuId") Long menuId) {
		SysMenu menu = new SysMenu();
		menu.setMenuId(menuId);
		
		if (menuService.selectCountMenuByParentId(menu) > 0) {
			return AjaxResult.warn("存在子菜单,不允许删除");
		}
		if (menuService.selectCountRoleMenuByMenuId(menuId) > 0) {
			return AjaxResult.warn("菜单已分配,不允许删除");
		} 
		ShiroUtils.clearCachedAuthorizationInfo();
		
		menu.setDeleteBy(ShiroUtils.getLoginName());
		menu.setDeleteFlag(CommonStatus.DELETED.getCode());
		return toAjax(menuService.delete(menu));
	}

	/**
	 * 新增
	 */
	@GetMapping("/add/{parentId}")
	public String add(@PathVariable("parentId") Long parentId, ModelMap mmap) {
		SysMenu menu = null;
		if (0L != parentId) {
			menu = menuService.getById(parentId);
		} else {
			menu = new SysMenu();
			menu.setMenuId(0L);
			menu.setMenuName("主目录");
		}
		mmap.put("menu", menu);
		mmap.put("menuTopList", menuTopService.listAllRedis());
		return prefix + "/add";
	}

	/**
	 * 新增保存菜单
	 */
	@Log(title = "菜单管理", businessType = BusinessType.INSERT)
	@RequiresPermissions("system:menu:add")
	@PostMapping("/add")
	@ResponseBody
	public AjaxResult addSave(@Validated SysMenu menu) {
		menu.setCreateBy(ShiroUtils.getLoginName());
		ShiroUtils.clearCachedAuthorizationInfo();
		return toAjax(menuService.add(menu));
	}

	/**
	 * 修改菜单
	 */
	@GetMapping("/edit/{menuId}")
	public String edit(@PathVariable("menuId") Long menuId, ModelMap mmap) {
		mmap.put("menu", menuService.getById(menuId));
		mmap.put("menuTopList", menuTopService.listAllRedis());
		return prefix + "/edit";
	}

	/**
	 * 修改保存菜单
	 */
	@Log(title = "菜单管理", businessType = BusinessType.UPDATE)
	@RequiresPermissions("system:menu:edit")
	@PostMapping("/edit")
	@ResponseBody
	public AjaxResult editSave(@Validated SysMenu menu) {
		menu.setUpdateBy(ShiroUtils.getLoginName());
		ShiroUtils.clearCachedAuthorizationInfo();
		return toAjax(menuService.update(menu));
	}

	/**
	 * 选择菜单图标
	 */
	@GetMapping("/icon")
	public String icon() {
		return prefix + "/icon";
	}

	/**
	 * 校验菜单名称
	 */
	@PostMapping("/checkMenuNameUnique")
	@ResponseBody
	public String checkMenuNameUnique(SysMenu menu) {
		return UserConstants.MENU_NAME_UNIQUE;
	}

	/**
	 * 加载角色菜单列表树
	 */
	@GetMapping("/roleMenuTreeData")
	@ResponseBody
	public List<Ztree> roleMenuTreeData(SysRole role) {
		Long userId = ShiroUtils.getUserId();
		List<Ztree> ztrees = menuService.roleMenuTreeData(role, userId);
		return ztrees;
	}

	/**
	 * 加载所有菜单列表树
	 */
	@GetMapping("/menuTreeData")
	@ResponseBody
	public List<Ztree> menuTreeData() {
		Long userId = ShiroUtils.getUserId();
		List<Ztree> ztrees = menuService.menuTreeData(userId);
		return ztrees;
	}

	/**
	 * 选择菜单树
	 */
	@GetMapping("/selectMenuTree/{menuId}")
	public String selectMenuTree(@PathVariable("menuId") Long menuId, ModelMap mmap) {
		mmap.put("menu", menuService.getById(menuId));
		return prefix + "/tree";
	}

}
