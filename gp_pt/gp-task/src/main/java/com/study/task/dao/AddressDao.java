package com.study.task.dao;

import java.util.List;

import com.study.common.core.base.BaseDao;
import com.study.task.entity.Address;

public interface AddressDao extends BaseDao<Address>{

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
	 * 查询某个用户的地址
	 * @param userId
	 * @return
	 */
	List<Address> listByUserId(Long userId);


}
