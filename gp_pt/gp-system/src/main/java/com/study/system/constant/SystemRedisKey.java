package com.study.system.constant;

/**
 * 系统模块涉及到的缓存 
 */
public class SystemRedisKey {
    
    /**
     * sysconfig缓存，后面需要添加configKey字段
     */
    public static String SYSTEM_CONFIG_PREFIX = "system:config:";
    
    /**
     * dictType下面所有的dictData的集合，后面需要跟上dictType字段
     */
    public static String SYSTEM_DICTDATA_TYPEPREFIX = "system:dictdata:type_";
    
    /**
     * 根据字典类型和字典键值查询字典数据信息
     * 方法是String getLabel(String dictType, String dictValue)  
     * 后跟dictType和dictValue   
     */
	public static String SYSTEM_DICTDATE_LABELPREFIX = "system:dictdata:label_";
	
	/**
	 * 临时存储操作日志的缓存
	 * AOP切面记录的操作日志先存储到redis，
	 * 然后定时同步到mysql
	 */
	public static String OPER_LOG_REDISKEY = "system:operlog_all";
	
	/**
	 * 所有的顶级菜单
	 */
	public static String SYSTEM_MENU_TOP_ALL = "system:menu:top_all";
	
	
	/**
	 * 所有承建单位
	 */
	public static String SYSTEM_DEPT_CJ = "system:dept:cj";

	/**
	 * 所有建设单位
	 */
	public static String SYSTEM_DEPT_JS = "system:dept:js";

	/**
	 * 所有监理单位
	 */
	public static String SYSTEM_DEPT_JL = "system:dept:jl";


}
