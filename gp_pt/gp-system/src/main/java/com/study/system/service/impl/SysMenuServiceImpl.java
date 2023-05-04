package com.study.system.service.impl;

import java.text.MessageFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.study.common.core.base.BaseServiceImpl;
import com.study.common.core.domain.Ztree;
import com.study.common.util.StringUtils;
import com.study.system.dao.SysMenuDao;
import com.study.system.dao.SysRoleMenuDao;
import com.study.system.entity.SysMenu;
import com.study.system.entity.SysRole;
import com.study.system.entity.SysUser;
import com.study.system.service.SysMenuService;

@Service
public class SysMenuServiceImpl extends BaseServiceImpl<SysMenu> implements SysMenuService {

	public static final String PREMISSION_STRING = "perms[\"{0}\"]";

	@Autowired
	private SysMenuDao menuDao;
	@Autowired
	private SysRoleMenuDao roleMenuDao;

	@Override
	public Set<String> selectPermsByUserId(SysUser user) {
		List<String> perms = menuDao.selectPermsByUserId(user);
		Set<String> permsSet = new HashSet<>();
		for (String perm : perms) {
			if (StringUtils.isNotEmpty(perm)) {
				permsSet.addAll(Arrays.asList(perm.trim().split(",")));
			}
		}
		return permsSet;
	}

	@Override
	public List<SysMenu> selectMenusByUser(SysUser user) {
		List<SysMenu> menus = new LinkedList<SysMenu>();
		// 管理员显示所有菜单信息
		if (user.isAdmin()) {
			menus = menuDao.selectMenuNormalAll();
		} else {
			menus = menuDao.selectMenusByUserId(user);
		}
		return getChildPerms(menus, 0);
	}

	@Override
	public List<SysMenu> selectMenuList(SysMenu menu, Long userId) {
		List<SysMenu> menuList = null;
		if (SysUser.isAdmin(userId)) {
			menuList = menuDao.list(menu);
		} else {
			menu.getParams().put("userId", userId);
			menuList = menuDao.selectMenuListByUserId(menu);
		}
		return menuList;
	}

	@Override
	public List<Ztree> roleMenuTreeData(SysRole role, Long userId) {
		Long roleId = role.getRoleId();
		List<Ztree> ztrees = new ArrayList<Ztree>();
		List<SysMenu> menuList = selectMenuAll(userId);
		if (StringUtils.isNotNull(roleId)) {
			List<String> roleMenuList = menuDao.selectMenuTree(role);
			ztrees = initZtree(menuList, roleMenuList, true);
		} else {
			ztrees = initZtree(menuList, null, true);
		}
		return ztrees;
	}

	@Override
	public List<Ztree> menuTreeData(Long userId) {
		List<SysMenu> menuList = selectMenuAll(userId);
		List<Ztree> ztrees = initZtree(menuList);
		return ztrees;
	}

	@Override
	public Map<String, String> selectPermsAll(Long userId) {
		LinkedHashMap<String, String> section = new LinkedHashMap<>();
		List<SysMenu> permissions = selectMenuAll(userId);
		if (StringUtils.isNotEmpty(permissions)) {
			for (SysMenu menu : permissions) {
				section.put(menu.getUrl(), MessageFormat.format(PREMISSION_STRING, menu.getPerms()));
			}
		}
		return section;
	}

	@Override
	public int selectCountMenuByParentId(SysMenu menu) {
		return menuDao.selectCountMenuByParentId(menu);
	}

	@Override
	public int selectCountRoleMenuByMenuId(Long menuId) {
		return roleMenuDao.selectCountRoleMenuByMenuId(menuId);
	}

	/**
	 * 对象转菜单树
	 * 
	 * @param menuList 菜单列表
	 * @return 树结构列表
	 */
	public List<Ztree> initZtree(List<SysMenu> menuList) {
		return initZtree(menuList, null, false);
	}

	/**
	 * 对象转菜单树
	 * 
	 * @param menuList     菜单列表
	 * @param roleMenuList 角色已存在菜单列表
	 * @param permsFlag    是否需要显示权限标识
	 * @return 树结构列表
	 */
	public List<Ztree> initZtree(List<SysMenu> menuList, List<String> roleMenuList, boolean permsFlag) {
		List<Ztree> ztrees = new ArrayList<Ztree>();
		boolean isCheck = StringUtils.isNotNull(roleMenuList);
		for (SysMenu menu : menuList) {
			Ztree ztree = new Ztree();
			ztree.setId(menu.getMenuId());
			ztree.setpId(menu.getParentId());
			ztree.setName(transMenuName(menu, roleMenuList, permsFlag));
			ztree.setTitle(menu.getMenuName());
			if (isCheck) {
				ztree.setChecked(roleMenuList.contains(menu.getMenuId() + menu.getPerms()));
			}
			ztrees.add(ztree);
		}
		return ztrees;
	}

	public String transMenuName(SysMenu menu, List<String> roleMenuList, boolean permsFlag) {
		StringBuffer sb = new StringBuffer();
		sb.append(menu.getMenuName());
		if (permsFlag) {
			sb.append("<font color=\"#888\">&nbsp;&nbsp;&nbsp;" + menu.getPerms() + "</font>");
		}
		return sb.toString();
	}

	/**
	 * 根据父节点的ID获取所有子节点
	 * 
	 * @param list     分类表
	 * @param parentId 传入的父节点ID
	 * @return String
	 */
	public List<SysMenu> getChildPerms(List<SysMenu> list, int parentId) {
		List<SysMenu> returnList = new ArrayList<SysMenu>();
		for (Iterator<SysMenu> iterator = list.iterator(); iterator.hasNext();) {
			SysMenu t = (SysMenu) iterator.next();
			// 一、根据传入的某个父节点ID,遍历该父节点的所有子节点
			if (t.getParentId() == parentId) {
				recursionFn(list, t);
				returnList.add(t);
			}
		}
		return returnList;
	}

	/**
	 * 递归列表
	 * 
	 * @param list
	 * @param t
	 */
	private void recursionFn(List<SysMenu> list, SysMenu t) {
		// 得到子节点列表
		List<SysMenu> childList = getChildList(list, t);
		t.setChildren(childList);
		for (SysMenu tChild : childList) {
			if (hasChild(list, tChild)) {
				// 判断是否有子节点
				Iterator<SysMenu> it = childList.iterator();
				while (it.hasNext()) {
					SysMenu n = (SysMenu) it.next();
					recursionFn(list, n);
				}
			}
		}
	}

	/**
	 * 得到子节点列表
	 */
	private List<SysMenu> getChildList(List<SysMenu> list, SysMenu t) {
		List<SysMenu> tlist = new ArrayList<SysMenu>();
		Iterator<SysMenu> it = list.iterator();
		while (it.hasNext()) {
			SysMenu n = (SysMenu) it.next();
			if (n.getParentId().longValue() == t.getMenuId().longValue()) {
				tlist.add(n);
			}
		}
		return tlist;
	}

	/**
	 * 判断是否有子节点
	 */
	private boolean hasChild(List<SysMenu> list, SysMenu t) {
		return getChildList(list, t).size() > 0 ? true : false;
	}

	@Override
	public List<SysMenu> selectMenuAll(Long userId) {
		List<SysMenu> menuList = null;
		if (SysUser.isAdmin(userId)) {
			menuList = menuDao.listAll(new SysMenu());
		} else {
			SysUser user = new SysUser();
			user.setUserId(userId);
			menuList = menuDao.listMenuAllByUserId(user);
		}
		return menuList;
	}

}
