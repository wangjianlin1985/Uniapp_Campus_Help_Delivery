package com.study.web.controller.system;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

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
import org.springframework.web.multipart.MultipartFile;

import com.study.common.annotation.Log;
import com.study.common.constant.PunctuationConstants;
import com.study.common.constant.UserConstants;
import com.study.common.core.base.BaseController;
import com.study.common.core.domain.AjaxResult;
import com.study.common.core.domain.Ztree;
import com.study.common.core.page.TableDataInfo;
import com.study.common.core.text.Convert;
import com.study.common.enums.BusinessType;
import com.study.common.exception.BusinessException;
import com.study.common.util.AESUtil;
import com.study.common.util.ExcelUtil;
import com.study.common.util.StringUtils;
import com.study.framework.shiro.service.SysPasswordService;
import com.study.framework.util.ShiroUtils;
import com.study.system.entity.SysPost;
import com.study.system.entity.SysRole;
import com.study.system.entity.SysUser;
import com.study.system.service.SysPostService;
import com.study.system.service.SysRoleService;
import com.study.system.service.SysUserService;

/**
 * 用户管理
 */

@Controller
@RequestMapping("/system/user")
public class SysUserController extends BaseController {
	
	private static String prefix = "system/user";

	@Autowired
	private SysUserService userService;

	@Autowired
	private SysRoleService roleService;

	@Autowired
	private SysPostService postService;

	@Autowired
	private SysPasswordService passwordService;

	@RequiresPermissions("system:user:view")
	@GetMapping()
	public String user() {
		return prefix + "/user";
	}

	@RequiresPermissions("system:user:list")
	@PostMapping("/list")
	@ResponseBody
	public TableDataInfo list(SysUser user) {
		startPage();
		List<SysUser> list = userService.list(user);
		return getDataTable(list);
	}
	
	
	/**
	 * 根据部门ID查询他所有的用户
	 * @param deptId
	 * @return
	 */
	@PostMapping("/listByDeptId/{deptId}")
	@ResponseBody
	public List<SysUser> listByDeptId(@PathVariable Long deptId) {
		SysUser user = new SysUser();
		user.setDeptId(deptId);
		List<SysUser> list = userService.list(user);
		return list;
	}

	@Log(title = "用户管理", businessType = BusinessType.EXPORT)
	@RequiresPermissions("system:user:export")
	@PostMapping("/export")
	@ResponseBody
	public AjaxResult export(SysUser user) {
	    List<SysUser> list = userService.list(user);
		ExcelUtil<SysUser> util = new ExcelUtil<SysUser>(SysUser.class);
		return util.exportExcel(list, "用户数据");
	}

	@Log(title = "用户管理", businessType = BusinessType.IMPORT)
	@RequiresPermissions("system:user:import")
	@PostMapping("/importData")
	@ResponseBody
	public AjaxResult importData(MultipartFile file, boolean updateSupport) throws Exception {
		ExcelUtil<SysUser> util = new ExcelUtil<SysUser>(SysUser.class);
		List<SysUser> userList = util.importExcel(file.getInputStream());
		String operName = ShiroUtils.getSysUser().getLoginName();
		String message = userService.importUser(userList, updateSupport, operName);
		return AjaxResult.success(message);
	}

	@RequiresPermissions("system:user:view")
	@GetMapping("/importTemplate")
	@ResponseBody
	public AjaxResult importTemplate() {
		ExcelUtil<SysUser> util = new ExcelUtil<SysUser>(SysUser.class);
		return util.importTemplateExcel("用户数据");
	}

	/**
	 * 新增用户
	 */
	@GetMapping("/add")
	public String add(ModelMap mmap) {
		mmap.put("roles", roleService.listAll(new SysRole()));
		mmap.put("posts", postService.listAll(new SysPost()));
		return prefix + "/add";
	}

	/**
	 * 新增保存用户
	 */
	@RequiresPermissions("system:user:add")
	@Log(title = "用户管理", businessType = BusinessType.INSERT)
	@PostMapping("/add")
	@ResponseBody
	public AjaxResult addSave(@Validated SysUser user) {
		if (UserConstants.USER_NAME_NOT_UNIQUE.equals(userService.checkLoginNameUnique(user))) {
			return error("新增用户'" + user.getLoginName() + "'失败，登录账号已存在");
		} else if (UserConstants.USER_IDCARDNO_NOT_UNIQUE.equals(userService.checkIdcardnoUnique(user))) {
            return error("新增用户'" + user.getLoginName() + "'失败，身份证号已存在");
        } else if(UserConstants.USER_CODE_NOT_UNIQUE.equals(userService.checkUsercodeUnique(user))) {
            return error("新增用户'" + user.getLoginName() + "'失败，学工号已存在");
        }
		user.setSalt(ShiroUtils.randomSalt());
		user.setPassword(passwordService.encryptPassword(user.getLoginName(), user.getPassword(), user.getSalt()));
		user.setOldpwd(AESUtil.encrypt(user.getPassword()));
		user.setCreateBy(ShiroUtils.getLoginName());
		
		return toAjax(userService.add(user));
	}

	/**
	 * 修改用户
	 */
	@GetMapping("/edit/{userId}")
	public String edit(@PathVariable("userId") Long userId, ModelMap mmap) {
		mmap.put("user", userService.getById(userId));
		mmap.put("roles", roleService.selectRolesByUserId(userId));
		mmap.put("posts", postService.selectPostsByUserId(userId));
		return prefix + "/edit";
	}

	/**
	 * 修改保存用户
	 */
	@RequiresPermissions("system:user:edit")
	@Log(title = "用户管理", businessType = BusinessType.UPDATE)
	@PostMapping("/edit")
	@ResponseBody
	public AjaxResult editSave(@Validated SysUser user) {
		if (StringUtils.isNotNull(user.getUserId()) && SysUser.isAdmin(user.getUserId())) {
			return error("不允许修改超级管理员用户");
		} else if (UserConstants.USER_IDCARDNO_NOT_UNIQUE.equals(userService.checkIdcardnoUnique(user))) {
            return error("修改用户'" + user.getLoginName() + "'失败，身份证号已存在");
        } else if(UserConstants.USER_CODE_NOT_UNIQUE.equals(userService.checkUsercodeUnique(user))) {
            return error("修改用户'" + user.getLoginName() + "'失败，学工号已存在");
        }
		user.setUpdateBy(ShiroUtils.getLoginName());
		return toAjax(userService.update(user));
	}

	@RequiresPermissions("system:user:resetPwd")
	@Log(title = "重置密码", businessType = BusinessType.UPDATE)
	@GetMapping("/resetPwd/{userId}")
	public String resetPwd(@PathVariable("userId") Long userId, ModelMap mmap) {
		mmap.put("user", userService.getById(userId));
		return prefix + "/resetPwd";
	}

	@RequiresPermissions("system:user:resetPwd")
	@Log(title = "重置密码", businessType = BusinessType.UPDATE)
	@PostMapping("/resetPwd")
	@ResponseBody
	public AjaxResult resetPwdSave(SysUser user) {
		user.setSalt(ShiroUtils.randomSalt());
		user.setOldpwd(AESUtil.encrypt(user.getPassword()));
		user.setPassword(passwordService.encryptPassword(user.getLoginName(), user.getPassword(), user.getSalt()));
		if (userService.resetUserPwd(user) > 0) {
			if (ShiroUtils.getUserId().equals(user.getUserId())) {
				ShiroUtils.setSysUser(userService.getById(user.getUserId()));
			}
			return success();
		}
		return error();
	}

	@RequiresPermissions("system:user:remove")
	@Log(title = "用户管理", businessType = BusinessType.DELETE)
	@PostMapping("/remove")
	@ResponseBody
	public AjaxResult remove(String ids) {
		try {
			for(String id : ids.split(PunctuationConstants.COMMA)) {
				if(SysUser.isAdmin(Long.valueOf(id))) {
					 throw new BusinessException("不允许删除超级管理员用户");
				}
			}
			return toAjax(userService.deleteBatch(Convert.toLongArray(ids), ShiroUtils.getLoginName()));
		} catch (Exception e) {
			return error(e.getMessage());
		}
	}

	/**
	 * 校验用户名
	 */
	@PostMapping("/checkLoginNameUnique")
	@ResponseBody
	public String checkLoginNameUnique(SysUser user) {
		return userService.checkLoginNameUnique(user);
	}

	/**
	 * 校验学工号
	 */
	@PostMapping("/checkUsercodeUnique")
	@ResponseBody
	public String checkUsercodeUnique(SysUser user) {
		return userService.checkUsercodeUnique(user);
	}

	/**
	 * 校验身份证
	 */
	@PostMapping("/checkIdcardnoUnique")
	@ResponseBody
	public String checkIdcardnoUnique(SysUser user) {
		return userService.checkIdcardnoUnique(user);
	}

	/**
	 * 用户状态修改
	 */
	@Log(title = "用户管理", businessType = BusinessType.UPDATE)
	@RequiresPermissions("system:user:edit")
	@PostMapping("/changeStatus")
	@ResponseBody
	public AjaxResult changeStatus(SysUser user) {
		return toAjax(userService.changeStatus(user));
	}
	
	/**
	 * 进入用户树结构，部门是根节点，用户是叶子节点
	 * @param request
	 * @param mmap
	 * @return
	 */
	@GetMapping("/selectUserTreeMultiple")
	public String selectUserTreeMultiple(HttpServletRequest request, ModelMap mmap) {
		String userId = request.getParameter("userId");
		if(StringUtils.isEmpty(userId)) {
			userId = "1"; 
		}
		String userType = request.getParameter("userType");
		mmap.put("user", userService.getById(Long.valueOf(userId)));
		mmap.put("userType", userType);
		return prefix + "/treeMultiple";
	}
	
	
	/**
     * 进入用户树结构，部门是根节点，用户是叶子节点
     * @param request
     * @param mmap
     * @return
     */
    @GetMapping("/selectUserTree")
    public String selectDeptTree(HttpServletRequest request, ModelMap mmap) {
        String userId = request.getParameter("userId");
        if(StringUtils.isEmpty(userId)) {
            userId = "1"; 
        }
        String userType = request.getParameter("userType");
        mmap.put("user", userService.getById(Long.valueOf(userId)));
        mmap.put("userType", userType);
        return prefix + "/tree";
    }
	
	
	@GetMapping("/treeData")
	@ResponseBody
	public List<Ztree> treeData(HttpServletRequest request) {
		String userType = request.getParameter("userType");
		List<Ztree> ztrees = userService.treeData(Integer.parseInt(userType));
		return ztrees;
	}

	
	/**
	 * 查询跟当前用户所在部门为同一个部门的所有用户
	 * @return
	 */
	@RequestMapping("listUserByCurrentDept")
	public List<SysUser> listByCurrentDept() {
		SysUser user = new SysUser();
		user.setDeptId(getDeptId());
		List<SysUser> list = userService.list(user);
		return list;
	}
	
	
	
	@RequestMapping("rzIndex")
	public String rzIndex() {
		return prefix + "/rz";
	}
	
	@ResponseBody
	@RequestMapping("rzList")
	public TableDataInfo rzList(SysUser user) {
		user.setUserType(2);
		user.setRz(0);
		List<SysUser> list = userService.list(user);
		return getDataTable(list);
	}
	
	@ResponseBody
	@RequestMapping("updateRz")
	public AjaxResult updateRz(SysUser user) {
		return toAjax(userService.updateRz(user));
	}
	
	
	
}
