package com.study.system.dao;

import com.study.common.core.base.BaseDao;
import com.study.system.entity.SysDictType;

public interface SysDictTypeDao extends BaseDao<SysDictType>{
    
    /**
     * 根据dictType判断是否唯一
     * @param dictType
     * @return
     */
    SysDictType checkDictTypeUnique(SysDictType dictType);

}
