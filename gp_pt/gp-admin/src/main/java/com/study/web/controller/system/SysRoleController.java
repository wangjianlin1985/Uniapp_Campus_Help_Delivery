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
import com.study.common.core.page.TableDataInfo;
import com.study.common.core.text.Convert;
import com.study.common.enums.BusinessType;
import com.study.common.util.ExcelUtil;
import com.study.framework.util.ShiroUtils;
import com.study.system.entity.SysRole;
import com.study.system.entity.SysUser;
import com.study.system.entity.SysUserRole;
import com.study.system.service.SysRoleService;
import com.study.system.service.SysUserService;

/**
 * 角色管理
 */
@Controller
@RequestMapping("/system/role")
public class SysRoleController extends BaseController {
	
    private static String prefix = "system/role";

	@Autowired
	private SysRoleService roleService;

	@Autowired
	private SysUserService userService;

	@RequiresPermissions("system:role:view")
	@GetMapping()
	public String role() {
		return prefix + "/role";
	}

	@RequiresPermissions("system:role:list")
	@PostMapping("/list")
	@ResponseBody
	public TableDataInfo list(SysRole role) {
		startPage();
		List<SysRole> list = roleService.list(role);
		return getDataTable(list);
	}

	@Log(title = "角色管理", businessType = BusinessType.EXPORT)
	@RequiresPermissions("system:role:export")
	@PostMapping("/export")
	@ResponseBody
	public AjaxResult export(SysRole role) {
		List<SysRole> list = roleService.list(role);
		ExcelUtil<SysRole> util = new ExcelUtil<SysRole>(SysRole.class);
		return util.exportExcel(list, "角色数据");
	}

	/**
	 * 新增角色
	 */
	@GetMapping("/add")
	public String add() {
		return prefix + "/add";
	}

	/**
	 * 新增保存角色
	 */
	@RequiresPermissions("system:role:add")
	@Log(title = "角色管理", businessType = BusinessType.INSERT)
	@PostMapping("/add")
	@ResponseBody
	public AjaxResult addSave(@Validated SysRole role) {
		if (UserConstants.ROLE_KEY_NOT_UNIQUE.equals(roleService.checkRoleKeyUnique(role))) {
			return error("新增角色'" + role.getRoleName() + "'失败，角色权限已存在");
		}
		role.setCreateBy(ShiroUtils.getLoginName());
		ShiroUtils.clearCachedAuthorizationInfo();
		return toAjax(roleService.add(role));

	}

	/**
	 * 修改角色
	 */
	@GetMapping("/edit/{roleId}")
	public String edit(@PathVariable("roleId") Long roleId, ModelMap mmap) {
		mmap.put("role", roleService.getById(roleId));
		return prefix + "/edit";
	}

	/**
	 * 修改保存角色
	 */
	@RequiresPermissions("system:role:edit")
	@Log(title = "角色管理", businessType = BusinessType.UPDATE)
	@PostMapping("/edit")
	@ResponseBody
	public AjaxResult editSave(@Validated SysRole role) {
		if (UserConstants.ROLE_KEY_NOT_UNIQUE.equals(roleService.checkRoleKeyUnique(role))) {
			return error("修改角色'" + role.getRoleName() + "'失败，角色权限已存在");
		}
		role.setUpdateBy(ShiroUtils.getLoginName());
		ShiroUtils.clearCachedAuthorizationInfo();
		return toAjax(roleService.update(role));
	}

	/**
	 * 角色分配数据权限
	 */
	@GetMapping("/authDataScope/{roleId}")
	public String authDataScope(@PathVariable("roleId") Long roleId, ModelMap mmap) {
		mmap.put("role", roleService.getById(roleId));
		return prefix + "/dataScope";
	}

	/**
	 * 保存角色分配数据权限
	 */
	@RequiresPermissions("system:role:edit")
	@Log(title = "角色管理", businessType = BusinessType.UPDATE)
	@PostMapping("/authDataScope")
	@ResponseBody
	public AjaxResult authDataScopeSave(SysRole role) {
		role.setUpdateBy(ShiroUtils.getLoginName());
		if (roleService.authDataScope(role) > 0) {
			ShiroUtils.setSysUser(userService.getById(ShiroUtils.getSysUser().getUserId()));
			return success();
		}
		return error();
	}

	@RequiresPermissions("system:role:remove")
	@Log(title = "角色管理", businessType = BusinessType.DELETE)
	@PostMapping("/remove")
	@ResponseBody
	public AjaxResult remove(String ids) {
		try {
			return toAjax(roleService.deleteBatch(Convert.toLongArray(ids), ShiroUtils.getLoginName()));
		} catch (Exception e) {
			return error(e.getMessage());
		}
	}

	/**
	 * 校验角色名称
	 */
	@PostMapping("/checkRoleNameUnique")
	@ResponseBody
	public String checkRoleNameUnique(SysRole role) {
		return UserConstants.ROLE_NAME_UNIQUE;
	}

	/**
	 * 校验角色权限
	 */
	@PostMapping("/checkRoleKeyUnique")
	@ResponseBody
	public String checkRoleKeyUnique(SysRole role) {
		return roleService.checkRoleKeyUnique(role);
	}

	/**
	 * 选择菜单树
	 */
	@GetMapping("/selectMenuTree")
	public String selectMenuTree() {
		return prefix + "/tree";
	}

	/**
	 * 角色状态修改
	 */
	@Log(title = "角色管理", businessType = BusinessType.UPDATE)
	@RequiresPermissions("system:role:edit")
	@PostMapping("/changeStatus")
	@ResponseBody
	public AjaxResult changeStatus(SysRole role) {
		return toAjax(roleService.changeStatus(role));
	}

	/**
	 * 分配用户
	 */
	@RequiresPermissions("system:role:edit")
	@GetMapping("/authUser/{roleId}")
	public String authUser(@PathVariable("roleId") Long roleId, ModelMap mmap) {
		mmap.put("role", roleService.getById(roleId));
		return prefix + "/authUser";
	}

	/**
	 * 查询已分配用户角色列表
	 */
	@RequiresPermissions("system:role:list")
	@PostMapping("/authUser/allocatedList")
	@ResponseBody
	public TableDataInfo allocatedList(SysUser user) {
		startPage();
		List<SysUser> list = userService.selectAllocatedList(user);
		return getDataTable(list);
	}

	/**
	 * 取消授权
	 */
	@Log(title = "角色管理", businessType = BusinessType.GRANT)
	@PostMapping("/authUser/cancel")
	@ResponseBody
	public AjaxResult cancelAuthUser(SysUserRole userRole) {
		return toAjax(roleService.deleteAuthUser(userRole));
	}

	/**
	 * 批量取消授权
	 */
	@Log(title = "角色管理", businessType = BusinessType.GRANT)
	@PostMapping("/authUser/cancelAll")
	@ResponseBody
	public AjaxResult cancelAuthUserAll(Long roleId, String userIds) {
		return toAjax(roleService.deleteAuthUsers(roleId, userIds));
	}

	/**
	 * 选择用户
	 */
	@GetMapping("/authUser/selectUser/{roleId}")
	public String selectUser(@PathVariable("roleId") Long roleId, ModelMap mmap) {
		mmap.put("role", roleService.getById(roleId));
		return prefix + "/selectUser";
	}

	/**
	 * 查询未分配用户角色列表
	 */
	@RequiresPermissions("system:role:list")
	@PostMapping("/authUser/unallocatedList")
	@ResponseBody
	public TableDataInfo unallocatedList(SysUser user) {
		startPage();
		List<SysUser> list = userService.selectUnallocatedList(user);
		return getDataTable(list);
	}

	/**
	 * 批量选择用户授权
	 */
	@Log(title = "角色管理", businessType = BusinessType.GRANT)
	@PostMapping("/authUser/selectAll")
	@ResponseBody
	public AjaxResult selectAuthUserAll(Long roleId, String userIds) {
		return toAjax(roleService.insertAuthUsers(roleId, userIds));
	}
}
