package com.study.system.dao;

import com.study.common.core.base.BaseDao;
import com.study.system.entity.SysConfig;

public interface SysConfigDao extends BaseDao<SysConfig>{
    
    /**
     * 根据configKey查询Sysconfig
     * @param configKey
     * @return
     */
    SysConfig checkConfigKeyUnique(SysConfig config);
    
    /**
     * 通过configKey获取configValue的值
     * @param configKey
     * @return
     */
    String getConfigByKey(SysConfig config);
    
}
