package com.novel.basic.cms.service;

import com.novel.basic.cms.model.CertificateInfo;

import java.util.List;

/**
 * 
 * @author dennis.sun
 * 币种  Service
 */
public interface CertificateInfoService {

	/**
	 * 查询所有凭证资料
	 * */
	List<CertificateInfo> findAllCertificateInfos();

	/**
	 * 根据Id查询凭证资料
	 * */
	CertificateInfo findCertificateInfoById(String id);

	/**
	 * 添加凭证资料
	 * */
	void addCertificateInfo(CertificateInfo certificateInfo);

	/**
	 * 批量添加凭证资料
	 * */
	void addBatchCertificateInfo(CertificateInfo certificateInfo, long fromNum, long toNum);

	/**
	 * 更新凭证资料
	 * */
	void updateCertificateInfo(CertificateInfo certificateInfo);

	/**
	 * 删除凭证资料
	 * */
	void deleteCertificateInfo(String[] marked);
}
