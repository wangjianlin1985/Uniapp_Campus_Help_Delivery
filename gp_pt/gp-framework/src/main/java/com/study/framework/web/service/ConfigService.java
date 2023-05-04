package com.study.framework.web.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.study.system.service.SysConfigService;

/**
 * 给前端界面用到的。
 */
@Service("config")
public class ConfigService {

	@Autowired
	private SysConfigService configService;

	/**
	 * 前端根据configKey获取configValue的值 用法：th:text="${@config.getKey('configKey')}"
	 * 
	 * @param configKey
	 * @return
	 */
	public String getKey(String configKey) {
		return configService.getConfigByKey(configKey);
	}

}
