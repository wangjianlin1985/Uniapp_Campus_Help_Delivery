package com.study.framework.shiro.session;

import org.apache.shiro.session.mgt.SimpleSession;

import com.study.common.enums.OnlineStatus;

/**
 * 在线session
 */
public class OnlineSession extends SimpleSession {
	
	private static final long serialVersionUID = 1L;

	/** 用户ID */
	private Long userId;

	/** 用户名称 */
	private String loginName;
	
	private Long deptId;
	
	/** 身份证 */
    private String idcardno;
    
    /** 学工号 */
    private String userCode;
	
	/** 姓名 */
	private String userName;
	
	/** 部门名称 */
	private String deptName;
	
	/** 手机号 */
	private String phonenumber;
	
	/** 用户类型 */
	private Integer userType;
	
	/** 用户头像 */
	private String avatar;

	/** 登录IP地址 */
	private String host;

	/** 浏览器类型 */
	private String browser;

	/** 操作系统 */
	private String os;

	/** 在线状态 */
	private OnlineStatus status = OnlineStatus.on_line;

	/** 属性是否改变 优化session数据同步 */
	private transient boolean attributeChanged = false;

	@Override
	public String getHost() {
		return host;
	}

	@Override
	public void setHost(String host) {
		this.host = host;
	}

	public String getBrowser() {
		return browser;
	}

	public void setBrowser(String browser) {
		this.browser = browser;
	}

	public String getOs() {
		return os;
	}

	public void setOs(String os) {
		this.os = os;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public String getLoginName() {
		return loginName;
	}

	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}

	public Integer getUserType() {
        return userType;
    }

    public void setUserType(Integer userType) {
        this.userType = userType;
    }

    public String getPhonenumber() {
        return phonenumber;
    }

    public void setPhonenumber(String phonenumber) {
        this.phonenumber = phonenumber;
    }

    public String getDeptName() {
		return deptName;
	}

	public void setDeptName(String deptName) {
		this.deptName = deptName;
	}

	public OnlineStatus getStatus() {
		return status;
	}

	public void setStatus(OnlineStatus status) {
		this.status = status;
	}

	public void markAttributeChanged() {
		this.attributeChanged = true;
	}

	public void resetAttributeChanged() {
		this.attributeChanged = false;
	}

	public boolean isAttributeChanged() {
		return attributeChanged;
	}

	public String getAvatar() {
		return avatar;
	}

	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}
	
	public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }
    public String getIdcardno() {
        return idcardno;
    }

    public void setIdcardno(String idcardno) {
        this.idcardno = idcardno;
    }

    public String getUserCode() {
        return userCode;
    }

    public void setUserCode(String userCode) {
        this.userCode = userCode;
    }

    @Override
	public void setAttribute(Object key, Object value) {
		super.setAttribute(key, value);
	}

	@Override
	public Object removeAttribute(Object key) {
		return super.removeAttribute(key);
	}

	public Long getDeptId() {
		return deptId;
	}

	public void setDeptId(Long deptId) {
		this.deptId = deptId;
	}
	
}
