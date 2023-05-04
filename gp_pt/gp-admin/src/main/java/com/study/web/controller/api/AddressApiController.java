package com.study.web.controller.api;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.study.common.core.base.BaseController;
import com.study.common.core.domain.AjaxResult;
import com.study.common.core.page.TableDataInfo;
import com.study.task.entity.Address;
import com.study.task.service.AddressService;

import cn.hutool.core.convert.Convert;

/**
 * 收获地址相关接口 
 */
@RestController
@RequestMapping("openapi/address")
@CrossOrigin
public class AddressApiController extends BaseController{

	@Autowired
	private AddressService addressService;
	
	// 我的地址列表
	@RequestMapping("listByUserId")
	public TableDataInfo listByUserId() {
		Long userId = getHeaderUserId();
		List<Address> list = addressService.listByUserId(userId);
		return getDataTable(list);
	}
	
	// 新增地址
	@RequestMapping("add")
	public AjaxResult add(@RequestBody Address address) {
		Long userId = getHeaderUserId();
		// 根据当前用户ID查他的地址数量，
		// 如果为0说明是第一次添加，则设置为默认地址，
		// 否则非默认
		List<Address> list = addressService.listByUserId(userId);
		if (list == null || list.size() == 0) {
			address.setStatus(1);
		} else {
			address.setStatus(0);
		}
		address.setUserId(userId);
		return toAjax(addressService.add(address));
	}
	
	
	// 修改地址
	@RequestMapping("update")
	public AjaxResult update(@RequestBody Address address) {
		return toAjax(addressService.update(address));
	}
	
	// 设置默认
	@RequestMapping("setDefault")
	@Transactional
	public AjaxResult setDefault(@RequestBody Map<String, Object> map) {
		Long id = Convert.toLong(map.get("id"));
		Long userId = getHeaderUserId();
		// 1 先把这个人的其他地址都设置为非默认
		int r = addressService.cancelDefaul(userId);
		// 2 再把选中的这个地址设置为默认
		r += addressService.setDefault(id);
		return toAjax(r);
	}
	
	// 删除某个地址
	@RequestMapping("delete")
	public AjaxResult delete(@RequestBody Map<String, Object> map) {
		Long id = Convert.toLong(map.get("id"));
		return toAjax(addressService.deleteById(id));
	}
}
