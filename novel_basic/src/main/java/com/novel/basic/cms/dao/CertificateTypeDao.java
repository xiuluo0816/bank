package com.novel.basic.cms.dao;


import com.novel.basic.cms.model.CertificateType;

import java.util.List;

/**
 * 凭证类型Dao层
 */
public interface CertificateTypeDao {

    /**
     * desc : 查询凭证类型
     * @return List<CertificateType>
     */
    List<CertificateType> findAllCertificateTypes();

    /**
     * desc : 添加一个凭证类型
     * @param certificateType
     */
    void addCertificateType(CertificateType certificateType);

    /**
     * desc : 根据id查询凭证类型
     * @return CertificateType
     */
    CertificateType findCertificateTypeById(CertificateType certificateType);

    /**
     * desc : 编辑凭证类型
     */
    void updateCertificateType(CertificateType certificateType);

    /**
     * desc : 删除凭证类型
     */
    void deleteCertificateTypeByIds(List<Integer> certificateTypes);

}
