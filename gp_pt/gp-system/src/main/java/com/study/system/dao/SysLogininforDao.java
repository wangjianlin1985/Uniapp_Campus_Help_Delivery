package com.study.system.dao;

import com.study.common.core.base.BaseDao;
import com.study.system.entity.SysLogininfor;

public interface SysLogininforDao extends BaseDao<SysLogininfor>{

    // 清空
    int clean();
    
}
