package com.study.system.service;

import com.study.common.core.base.BaseService;
import com.study.system.entity.SysDictType;

public interface SysDictTypeService extends BaseService<SysDictType> {
    
    /**
     * 检查名称是否唯一
     * @param dictType
     * @return
     */
    String checkDictTypeUnique(SysDictType dictType);
}
