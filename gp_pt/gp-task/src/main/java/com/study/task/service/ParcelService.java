package com.study.task.service;

import com.study.common.core.base.BaseService;
import com.study.task.entity.Parcel;

public interface ParcelService extends BaseService<Parcel>{
	

	/**接单*/
	int updateJd(Parcel parcel);
	
	int updateUnjd(Parcel parcel);
	
	/**配送*/
	int updatePs(Parcel parcel);
	
	/**完成*/
	int updateWc(Parcel parcel);
	
	/**取消*/
	int cancel(Parcel parcel);

}
