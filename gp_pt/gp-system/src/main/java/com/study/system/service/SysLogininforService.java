package com.study.system.service;

import com.study.common.core.base.BaseService;
import com.study.system.entity.SysLogininfor;

public interface SysLogininforService extends BaseService<SysLogininfor>{

    /**
     * 清空
     * @return
     */
    int clean();
    
}
