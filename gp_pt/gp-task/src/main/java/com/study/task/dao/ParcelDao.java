package com.study.task.dao;

import com.study.common.core.base.BaseDao;
import com.study.task.entity.Parcel;

public interface ParcelDao extends BaseDao<Parcel>{

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
