package com.novel.basic.cms.dao;


import com.novel.basic.cms.model.CertificateInfo;

import java.util.List;

/**
 * 凭证资料Dao层
 */
public interface CertificateInfoDao {

    /**
     * desc : 查询凭证资料
     * @return List<CertificateInfo>
     */
    List<CertificateInfo> findAllCertificateInfos();

    /**
     * desc : 根据id查询凭证资料
     * @return CertificateInfo
     */
    CertificateInfo findCertificateInfoById(CertificateInfo certificateInfo);

    /**
     * desc : 添加凭证资料
     * @param certificateInfos
     */
    void addCertificateInfo(CertificateInfo certificateInfos);

    /**
     * desc : 批量添加凭证资料
     * @param certificateInfos
     */
    void addBatchCertificateInfo(List<CertificateInfo> certificateInfos);

    /**
     * desc : 编辑凭证资料
     */
    void updateCertificateInfo(CertificateInfo certificateInfo);

    /**
     * desc : 删除凭证资料
     */
    void deleteCertificateInfoByIds(List<Integer> certificateInfos);
}
