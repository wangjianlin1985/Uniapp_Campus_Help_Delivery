package com.study.web.controller.system;

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
import com.study.common.core.base.BaseController;
import com.study.common.core.domain.AjaxResult;
import com.study.common.core.page.TableDataInfo;
import com.study.common.enums.BusinessType;
import com.study.common.enums.CommonStatus;
import com.study.framework.util.ShiroUtils;
import com.study.system.constant.SystemRedisKey;
import com.study.system.entity.SysMenu;
import com.study.system.entity.SysMenuTop;
import com.study.system.service.SysMenuService;
import com.study.system.service.SysMenuTopService;

/**
 *  顶部菜单管理
 */
@Controller
@RequestMapping("/system/menutop")
public class SysMenuTopController extends BaseController {
    
    private static String prefix = "system/menutop";
    
    @Autowired
    private SysMenuService menuService;
    @Autowired
    private SysMenuTopService menuTopService;

    @RequiresPermissions("system:menutop:view")
    @GetMapping()
    public String menu() {
        return prefix + "/menutop";
    }

    @RequiresPermissions("system:menutop:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(SysMenuTop menuTop) {
        return getDataTable(menuTopService.list(menuTop));
    }
    
    
    
    /**
     * 删除菜单
     */
    @Log(title = "顶部菜单管理", businessType = BusinessType.DELETE)
    @RequiresPermissions("system:menutop:remove")
    @GetMapping("/remove/{menuTopId}")
    @ResponseBody
    public AjaxResult remove(@PathVariable("menuTopId") Long menuTopId) {
        SysMenu menu = new SysMenu();
        menu.setMenuTopId(menuTopId);
        if (menuService.count(menu) > 0) {
            return AjaxResult.warn("存在菜单,不允许删除");
        }
        SysMenuTop mt = new SysMenuTop();
        mt.setMenuId(menuTopId);
        mt.setDeleteBy(ShiroUtils.getLoginName());
        mt.setDeleteFlag(CommonStatus.DELETED.getCode());
        menuTopService.deleteRedis(SystemRedisKey.SYSTEM_MENU_TOP_ALL);
        return toAjax(menuTopService.delete(mt));
    }

    /**
     * 新增
     */
    @GetMapping("/add")
    public String add() {
        return prefix + "/add";
    }

    /**
     * 新增保存菜单
     */
    @Log(title = "顶部菜单管理", businessType = BusinessType.INSERT)
    @RequiresPermissions("system:menutop:add")
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(@Validated SysMenuTop menu) {
        menu.setCreateBy(ShiroUtils.getLoginName());
        return toAjax(menuTopService.addRedis(menu,SystemRedisKey.SYSTEM_MENU_TOP_ALL));
    }

    /**
     * 修改菜单
     */
    @GetMapping("/edit/{menuId}")
    public String edit(@PathVariable("menuId") Long menuId, ModelMap mmap) {
        mmap.put("menu", menuTopService.getById(menuId));
        mmap.put("menuTopList", menuTopService.listAllRedis());
        return prefix + "/edit";
    }

    /**
     * 修改保存菜单
     */
    @Log(title = "顶部菜单管理", businessType = BusinessType.UPDATE)
    @RequiresPermissions("system:menutop:edit")
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(@Validated SysMenuTop menu) {
        menu.setUpdateBy(ShiroUtils.getLoginName());
        return toAjax(menuTopService.updateRedis(menu,SystemRedisKey.SYSTEM_MENU_TOP_ALL));
    }
    
    
}
