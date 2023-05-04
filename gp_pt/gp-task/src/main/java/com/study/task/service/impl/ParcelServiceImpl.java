package com.study.task.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.study.common.core.base.BaseServiceImpl;
import com.study.task.dao.ParcelDao;
import com.study.task.entity.Parcel;
import com.study.task.service.ParcelService;

@Service
public class ParcelServiceImpl extends BaseServiceImpl<Parcel> implements ParcelService{

	@Autowired
	private ParcelDao dao;
	
	@Override
	public int updateJd(Parcel parcel) {
		return dao.updateJd(parcel);
	}

	@Override
	public int updatePs(Parcel parcel) {
		return dao.updatePs(parcel);
	}

	@Override
	public int updateWc(Parcel parcel) {
		return dao.updateWc(parcel);
	}

	@Override
	public int cancel(Parcel parcel) {
		return dao.cancel(parcel);
	}

	@Override
	public int updateUnjd(Parcel parcel) {
		return dao.updateUnjd(parcel);
	}

}
