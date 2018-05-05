package com.novel.basic.cms.dao.impl;

import com.novel.basic.cms.dao.CertificateTypeDao;
import com.novel.basic.cms.model.CertificateType;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * desc : 凭证类型持久化层
 * @author dennis.sun
 */
@Service
public class CertificateTypeDaoImpl extends BaseDaoImpl implements CertificateTypeDao {

    @Override
    public List<CertificateType> findAllCertificateTypes() {
        return sqlSessionTemplate.selectList("findAllCertificateTypes");
    }

    @Override
    public void addCertificateType(CertificateType certificateType) {
        certificateType.setCreateTime(new Date());
        certificateType.setCreatedBy("张三");
        sqlSessionTemplate.insert("addCertificateType", certificateType);
    }

    @Override
    public CertificateType findCertificateTypeById(CertificateType certificateType) {
        return sqlSessionTemplate.selectOne("findCertificateTypeById", certificateType);
    }

    @Override
    public void updateCertificateType(CertificateType certificateType) {
        sqlSessionTemplate.update("updateCertificateType", certificateType);
    }

    @Override
    public void deleteCertificateTypeByIds(List<Integer> certificateTypes) {
        for(int id: certificateTypes){
            sqlSessionTemplate.update("deleteCertificateTypeById", id);
        }
    }

}
