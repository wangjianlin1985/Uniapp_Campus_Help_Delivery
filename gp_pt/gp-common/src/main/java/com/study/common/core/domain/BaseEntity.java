package com.study.common.core.domain;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;
import java.util.Date;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonProperty.Access;
import com.study.common.enums.CommonStatus;

import lombok.Data;

@Data
public class BaseEntity implements Serializable{
    
	private static final long serialVersionUID = 1L;

	/** 搜索值 这个是bootstrap自带的那个seach JsonProperty这个属性可以让该值可以通过raw接受，但是又不用展示*/
	@JsonProperty(access = Access.WRITE_ONLY) 
	private String searchValue;
	
	/** 搜索值*/
    @JsonProperty(access = Access.WRITE_ONLY) 
    private String searchKey;
    
    /** 搜索开始时间 */
    @JsonIgnore
    private String searchStart;
    
    /** 搜索结束时间 */
    @JsonIgnore
    private String searchEnd;
	
	/** 创建者 */
	@JsonIgnore
	private String createBy;

	/** 创建时间 */
	@JsonIgnore
	private Date createTime;

	/** 更新者 */
	@JsonIgnore
	private String updateBy;

	/** 更新时间 */
	@JsonIgnore
	private Date updateTime;
	
	/** 查询时间 */
	@JsonIgnore
	private Date searchTime;

	/** 备注 */
	private String remark;
	
	/** 每页大小 */
	@JsonProperty(access = Access.WRITE_ONLY)
	private Integer pageSize;

    /** 第几页，这里不能用pageNum，因为会和分页插件冲突，冲突后，所有的查询都会默认带分页 */
	@JsonProperty(access = Access.WRITE_ONLY)
    private Integer pageNo;
	
    /** 请求参数 */
	@JsonProperty(access = Access.WRITE_ONLY) 
    private Map<String, Object> params;
    
    /** 删除标志（0代表存在 1代表删除） */
    @JsonIgnore
    private Integer deleteFlag;
    
    /** 删除者 */
    @JsonIgnore
    private String deleteBy;
    
    /** 删除时间 */
    @JsonIgnore
    private Date deleteTime;
    
    
    public BaseEntity() {
        this.deleteFlag = CommonStatus.OK.getCode();
    }
    
    public void preDelete(){
        this.deleteFlag = CommonStatus.DELETED.getCode();
    }
	
    
	public Integer getPageSize() {
	    if(pageSize == null || pageSize == 0) {
	        pageSize = 10;
	    }
	    return pageSize;
	}
	
	
	public Integer getPageNo() {
	    if(pageNo == null || pageNo == 0) {
	        pageNo = 1;
	    }
	    return pageNo;
	}
	

	public Map<String, Object> getParams() {
		if (params == null) {
			params = new HashMap<>();
		}
		return params;
	}



}
