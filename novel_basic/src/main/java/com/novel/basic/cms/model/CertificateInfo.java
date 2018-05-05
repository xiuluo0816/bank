package com.novel.basic.cms.model;

import java.util.Date;

/**
 * @author dennis.sun
 * 凭证资料 model
 * */
public class CertificateInfo {

	private int id;

	/**
	 * 领用日期
	 */
	private Date useDate;

	/**
	 * 凭证种类
	 */
	private String certificateTypeId;

	/**
	 * 领用人员
	 */
	private String userId;

	/**
	 * 印刷编号
	 */
	private long printNum;

	/**
	 * 业务编号
	 */
	private String businessNum;

	/**
	 * 凭证标志
	 */
	private int mark;

	/**
	 * 凭证状态（0：经办 1：待复核 2：待审批 3：审批完成）
	 */
	private int status;

	/**
	 * 创建人
	 */
	private String createdBy;

	/**
	 * 创建时间
	 */
	private Date createTime;

	/**
	 * 修改人
	 */
	private String  updateBy;

	/**
	 * 修改时间
	 */
	private Date updateTime;

	/**
	 * 是否删除
	 */
	private int isDeleted;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Date getUseDate() {
		return useDate;
	}

	public void setUseDate(Date useDate) {
		this.useDate = useDate;
	}

	public String getCertificateTypeId() {
		return certificateTypeId;
	}

	public void setCertificateTypeId(String certificateTypeId) {
		this.certificateTypeId = certificateTypeId;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public long getPrintNum() {
		return printNum;
	}

	public void setPrintNum(long printNum) {
		this.printNum = printNum;
	}

	public String getBusinessNum() {
		return businessNum;
	}

	public void setBusinessNum(String businessNum) {
		this.businessNum = businessNum;
	}

	public int getMark() {
		return mark;
	}

	public void setMark(int mark) {
		this.mark = mark;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public String getUpdateBy() {
		return updateBy;
	}

	public void setUpdateBy(String updateBy) {
		this.updateBy = updateBy;
	}

	public Date getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}

	public int getIsDeleted() {
		return isDeleted;
	}

	public void setIsDeleted(int isDeleted) {
		this.isDeleted = isDeleted;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public String getCreatedBy() {
		return createdBy;
	}

	public void setCreatedBy(String createdBy) {
		this.createdBy = createdBy;
	}
}