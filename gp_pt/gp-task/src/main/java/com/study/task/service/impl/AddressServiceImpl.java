package com.study.task.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.study.common.core.base.BaseServiceImpl;
import com.study.task.dao.AddressDao;
import com.study.task.entity.Address;
import com.study.task.service.AddressService;

@Service
public class AddressServiceImpl extends BaseServiceImpl<Address> implements AddressService{

	@Autowired
	private AddressDao dao;
	
	@Override
	public int cancelDefaul(Long userId) {
		return dao.cancelDefaul(userId);
	}

	@Override
	public int setDefault(Long id) {
		return dao.setDefault(id);
	}

	@Override
	public List<Address> listByUserId(Long userId) {
		return dao.listByUserId(userId);
	}

}
