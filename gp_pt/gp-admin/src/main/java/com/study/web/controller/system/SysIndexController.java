package com.study.web.controller.system;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

import com.study.common.config.Global;
import com.study.common.core.base.BaseController;
import com.study.framework.util.ShiroUtils;
import com.study.system.entity.SysMenu;
import com.study.system.entity.SysMenuTop;
import com.study.system.entity.SysUser;
import com.study.system.service.SysMenuService;
import com.study.system.service.SysMenuTopService;

/**
 * PC端主页内容加载
 */
@Controller
public class SysIndexController extends BaseController {
	@Autowired
	private SysMenuService menuService;
	@Autowired
	private SysMenuTopService menuTopService;

	// 系统首页
	@GetMapping("/index")
	public String index(HttpServletRequest request, ModelMap mmap) {
		// 取身份信息
		SysUser user = ShiroUtils.getSysUser();
		// 根据用户id取出菜单
		List<SysMenu> menus = menuService.selectMenusByUser(user);

		// 查询顶部菜单
		List<SysMenuTop> menuTops = menuTopService.listAllRedis();
		Map<String, Object> tops = new HashMap<String, Object>();
		for (SysMenuTop mt : menuTops) {
			tops.put(mt.getMenuId() + "", mt);
		}
		Set<SysMenuTop> set = new LinkedHashSet<>();
		for (SysMenu menu : menus) {
			if ("M".equals(menu.getMenuType())) { // 目录
				Object o = tops.get(menu.getMenuTopId() + "");
				if (o != null) {
					set.add((SysMenuTop) o);
				}
			}
		}
		List<SysMenuTop> list = new ArrayList<>(set);
		Collections.sort(list, new Comparator<SysMenuTop>() {
			@Override
			public int compare(SysMenuTop o1, SysMenuTop o2) {
				return o2.getOrderNum().compareTo(o1.getOrderNum());
			}
		});
		mmap.put("topMenus", list);
		mmap.put("menus", menus);
		mmap.put("user", user);
		mmap.put("copyrightYear", Global.getCopyrightYear());
		return "index";
	}

	// 系统首页V2
	@GetMapping("/index_v2")
	public String index_v2(HttpServletRequest request, ModelMap mmap) {
		// 取身份信息
		SysUser user = ShiroUtils.getSysUser();
		// 根据用户id取出菜单
		List<SysMenu> menus = menuService.selectMenusByUser(user);

		// 查询顶部菜单
		List<SysMenuTop> menuTops = menuTopService.listAllRedis();
		Map<String, Object> tops = new HashMap<String, Object>();
		for (SysMenuTop mt : menuTops) {
			tops.put(mt.getMenuId() + "", mt);
		}
		Set<SysMenuTop> set = new LinkedHashSet<>();
		for (SysMenu menu : menus) {
			if ("M".equals(menu.getMenuType())) { // 目录
				Object o = tops.get(menu.getMenuTopId() + "");
				if (o != null) {
					set.add((SysMenuTop) o);
				}
			}
		}
		List<SysMenuTop> list = new ArrayList<>(set);
		Collections.sort(list, new Comparator<SysMenuTop>() {
			@Override
			public int compare(SysMenuTop o1, SysMenuTop o2) {
				return o2.getOrderNum().compareTo(o1.getOrderNum());
			}
		});
		mmap.put("topMenus", list);
		mmap.put("menus", menus);
		mmap.put("user", user);
		mmap.put("copyrightYear", Global.getCopyrightYear());
		return "index_v2";
	}

	// 系统介绍
	@GetMapping("/system/main")
	public String main(ModelMap mmap) {
		mmap.put("version", Global.getVersion());
		return "main";
	}

	@GetMapping("help")
	public String help() {
		return "help";
	}

}
