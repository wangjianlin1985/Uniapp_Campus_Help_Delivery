package com.study.common.config;

import java.io.FileNotFoundException;
import java.util.HashMap;
import java.util.Map;

import com.study.common.util.StringUtils;
import com.study.common.util.YamlUtil;

/**
 * 全局配置
 */
public class Global {
	private static String NAME = "application.yml";

	/**
	 * 当前对象实例
	 */
	private static Global global;

	/**
	 * 保存全局属性值
	 */
	private static Map<String, String> map = new HashMap<String, String>();

	private Global() {
	}

	/**
	 * 静态工厂方法
	 */
	public static synchronized Global getInstance() {
		if (global == null) {
			global = new Global();
		}
		return global;
	}

	/**
	 * 获取配置
	 */
	public static String getConfig(String key) {
		String value = map.get(key);
		if (value == null) {
			Map<?, ?> yamlMap = null;
			try {
				yamlMap = YamlUtil.loadYaml(NAME);
				value = String.valueOf(YamlUtil.getProperty(yamlMap, key));
				map.put(key, value != null ? value : StringUtils.EMPTY);
			} catch (FileNotFoundException e) {
			}
		}
		return value;
	}

	/**
	 * 获取项目名称
	 */
	public static String getName() {
		return StringUtils.nvl(getConfig("gp.name"), "gp");
	}

	/**
	 * 获取项目版本
	 */
	public static String getVersion() {
		return StringUtils.nvl(getConfig("gp.version"), "1.0.0");
	}

	/**
	 * 获取版权年份
	 */
	public static String getCopyrightYear() {
		return StringUtils.nvl(getConfig("gp.copyrightYear"), "2019");
	}


	/**
	 * 获取ip地址开关
	 */
	public static Boolean isAddressEnabled() {
		return Boolean.valueOf(getConfig("gp.addressEnabled"));
	}

	/**
	 * 获取文件上传路径
	 */
	public static String getProfile() {
		return getConfig("gp.profile");
	}

	/**
	 * 获取头像上传路径
	 */
	public static String getAvatarPath() {
		return getProfile() + "/avatar";
	}
	
	/**
	 * 获取LOGO上传路径
	 */
	public static String getLogoPath() {
	    return getProfile() + "/logo";
	}
	

	/**
	 * 获取下载路径
	 */
	public static String getDownloadPath() {
		return getProfile() + "/download";
	}

	/**
	 * 获取上传路径
	 */
	public static String getUploadPath() {
		return getProfile() + "/upload";
	}
}
