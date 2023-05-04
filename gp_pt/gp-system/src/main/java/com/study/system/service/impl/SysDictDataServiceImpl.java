package com.study.system.service.impl;

import java.util.List;
import java.util.concurrent.TimeUnit;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.ValueOperations;
import org.springframework.stereotype.Service;

import com.study.common.core.base.BaseServiceImpl;
import com.study.system.constant.SystemRedisKey;
import com.study.system.dao.SysDictDataDao;
import com.study.system.entity.SysDictData;
import com.study.system.service.SysDictDataService;

@Service
@SuppressWarnings("unchecked")
public class SysDictDataServiceImpl extends BaseServiceImpl<SysDictData> implements SysDictDataService {

	@Autowired
	private SysDictDataDao dao;

	@Override
	public List<SysDictData> listByType(SysDictData dictData) {
		String key = SystemRedisKey.SYSTEM_DICTDATA_TYPEPREFIX + dictData.getDictType();
		ValueOperations<String, Object> operations = redisTemplate.opsForValue();
		Object o = operations.get(key);
		if (null == o) {
			synchronized (this) {
				o = operations.get(key);
				if (null == o) {
					o = dao.listByType(dictData);
					operations.set(key, o, 10, TimeUnit.DAYS);
				}
			}
		}
		return (List<SysDictData>) o;
	}

	@Override
	public int countByType(SysDictData dictData) {
		return dao.countByType(dictData);
	}

	@Override
	public String getDictLabel(String dictType, String dictValue) {
		String key = SystemRedisKey.SYSTEM_DICTDATE_LABELPREFIX + dictType + dictValue;
		ValueOperations<String, Object> operations = redisTemplate.opsForValue();
		Object o = operations.get(key);
		if (null == o) {
			synchronized (this) {
				o = operations.get(key);
				if (null == o) {
					o = dao.getDictLabel(dictType, dictValue);
					operations.set(key, o, 10, TimeUnit.DAYS);
				}
			}
		}
		return (String) o;
	}

	@Override
	public int updateDictDataType(String oldDictType, String newDictType) {
		return dao.updateDictDataType(oldDictType, newDictType);
	}

}
