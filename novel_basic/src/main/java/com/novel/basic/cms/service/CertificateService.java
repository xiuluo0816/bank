package com.novel.basic.cms.service;

import com.novel.basic.cms.model.CertificateType;

import java.util.List;

/**
 * 
 * @author dennis.sun
 * 币种  Service
 */
public interface CertificateService {

	/**
	 * 查询所有凭证类型
	 * */
	List<CertificateType> findAllCertificateTypes();

	/**
	 * 添加凭证类型
	 * */
	void addCertificateType(CertificateType certificateType);
	
	/**
	 * 根据Id查询凭证类型
	 * */
	CertificateType findCertificateTypeById(String id);
	
	/**
	 * 更新凭证类型
	 * */
	void updateCertificateType(CertificateType certificateType);

	/**
	 * 删除凭证类型
	 * */
	void deleteCertificateType(String[] marked);

}
