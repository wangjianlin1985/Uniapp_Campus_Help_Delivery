package com.study.task.service;

import java.util.List;

import com.study.common.core.base.BaseService;
import com.study.task.entity.Address;

public interface AddressService extends BaseService<Address>{
	
	/**
	 * 取消设置某个用户的所有地址默认状态
	 * @param userId
	 * @return
	 */
	int cancelDefaul(Long userId);
	
	/**
	 * 设置某个地址状态为默认
	 * @param id
	 * @return
	 */
	int setDefault(Long id);
	
	/**
	 * 查询某个人的地址，
	 * 如果是第一个地址的话，则设置默认地址
	 * @param userId
	 * @return
	 */
	List<Address> listByUserId(Long userId);

}
