package com.study.common.util;

import java.beans.BeanInfo;
import java.beans.Introspector;
import java.beans.PropertyDescriptor;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.study.common.constant.PermissionConstants;

/**
 * 权限工具类
 */
public class PermissionUtils {

	private static final Logger log = LoggerFactory.getLogger(PermissionUtils.class);
	
	public static final String LOGIN_NAME = "loginName";
	
	public static final String USER_NAME = "userName";
	
	public static final String PHONENUMBER = "phonenumer";
	
	public static final String IDCARDNO  = "idcardno";
	
	public static final String USER_CODE = "userCode";
	
	public static final String DEPT_ID = "deptId";
	
	/**
	 * 查看数据的权限
	 */
	public static final String VIEW_PERMISSION = "no.view.permission";

	/**
	 * 创建数据的权限
	 */
	public static final String CREATE_PERMISSION = "no.create.permission";

	/**
	 * 修改数据的权限
	 */
	public static final String UPDATE_PERMISSION = "no.update.permission";

	/**
	 * 删除数据的权限
	 */
	public static final String DELETE_PERMISSION = "no.delete.permission";

	/**
	 * 导出数据的权限
	 */
	public static final String EXPORT_PERMISSION = "no.export.permission";

	/**
	 * 其他数据的权限
	 */
	public static final String PERMISSION = "no.permission";

	/**
	 * 权限错误消息提醒
	 * 
	 * @param permissionsStr 错误信息
	 * @return 提示信息
	 */
	public static String getMsg(String permissionsStr) {
		String permission = StringUtils.substringBetween(permissionsStr, "[", "]");
		String msg = MessageUtils.message(PERMISSION, permission);
		if (StringUtils.endsWithIgnoreCase(permission, PermissionConstants.ADD_PERMISSION)) {
			msg = MessageUtils.message(CREATE_PERMISSION, permission);
		} else if (StringUtils.endsWithIgnoreCase(permission, PermissionConstants.EDIT_PERMISSION)) {
			msg = MessageUtils.message(UPDATE_PERMISSION, permission);
		} else if (StringUtils.endsWithIgnoreCase(permission, PermissionConstants.REMOVE_PERMISSION)) {
			msg = MessageUtils.message(DELETE_PERMISSION, permission);
		} else if (StringUtils.endsWithIgnoreCase(permission, PermissionConstants.EXPORT_PERMISSION)) {
			msg = MessageUtils.message(EXPORT_PERMISSION, permission);
		} else if (StringUtils.endsWithAny(permission,
				new String[] { PermissionConstants.VIEW_PERMISSION, PermissionConstants.LIST_PERMISSION })) {
			msg = MessageUtils.message(VIEW_PERMISSION, permission);
		}
		return msg;
	}

	/**
	 * 返回用户属性值
	 *
	 * @param property 属性名称
	 * @return 用户属性值
	 */
	public static Object getPrincipalProperty(String property) {
		Subject subject = SecurityUtils.getSubject();
		if (subject != null) {
			Object principal = subject.getPrincipal();
			try {
				BeanInfo bi = Introspector.getBeanInfo(principal.getClass());
				for (PropertyDescriptor pd : bi.getPropertyDescriptors()) {
					if (pd.getName().equals(property) == true) {
						return pd.getReadMethod().invoke(principal, (Object[]) null);
					}
				}
			} catch (Exception e) {
				log.error("Error reading property [{}] from principal of type [{}]", property,
						principal.getClass().getName());
			}
		}
		return null;
	}
	
	/**
	 * 获取登录名
	 * @return
	 */
	public static String getLoginName() {
	    Object object = getPrincipalProperty(LOGIN_NAME);
	    if(object == null) {
	        return "";
	    } else {
	        return (String)object;
        }
	}
	
	/**
     * 获取姓名
     * @return
     */
    public static String getUserName() {
        Object object = getPrincipalProperty(USER_NAME);
        if(object == null) {
            return "";
        } else {
            return (String)object;
        }
    }
    
    /**
     * 获取手机号
     * @return
     */
    public static String getPhonenumber() {
        Object object = getPrincipalProperty(PHONENUMBER);
        if(object == null) {
            return "";
        } else {
            return (String)object;
        }
    }
    
    
    /**
     * 获取身份证
     * @return
     */
    public static String getIdcardno() {
        Object object = getPrincipalProperty(IDCARDNO);
        if(object == null) {
            return "";
        } else {
            return (String)object;
        }
    }
    
    /**
     * 获取学工号
     * @return
     */
    public static String getUserCode() {
        Object object = getPrincipalProperty(USER_CODE);
        if(object == null) {
            return "";
        } else {
            return (String)object;
        }
    }
    
    public static Long getDeptId() {
        Object object = getPrincipalProperty(DEPT_ID);
        if(object == null) {
            return 0L;
        } else {
            return (Long)object;
        }
    }
    
    
    
	
}
