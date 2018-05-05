package com.novel.basic.cms.dao.impl;

import com.novel.basic.cms.dao.CertificateInfoDao;
import com.novel.basic.cms.model.CertificateInfo;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * desc : 币种持久化层
 * @author dennis.sun
 */
@Service
public class CertificateInfoDaoImpl extends BaseDaoImpl implements CertificateInfoDao {

    @Override
    public List<CertificateInfo> findAllCertificateInfos() {
        return sqlSessionTemplate.selectList("findAllCertificateInfos");
    }

    @Override
    public CertificateInfo findCertificateInfoById(CertificateInfo certificateInfo) {
        return sqlSessionTemplate.selectOne("findCertificateInfoById", certificateInfo);
    }

    @Override
    public void addCertificateInfo(CertificateInfo certificateInfo) {
        sqlSessionTemplate.insert("addCertificateInfo", certificateInfo);
    }

    @Override
    public void addBatchCertificateInfo(List<CertificateInfo> certificateInfos) {
        for(CertificateInfo info : certificateInfos) {
            sqlSessionTemplate.insert("addCertificateInfo", info);
        }
    }

    @Override
    public void updateCertificateInfo(CertificateInfo certificateInfo) {
        sqlSessionTemplate.update("updateCertificateInfo", certificateInfo);
    }

    @Override
    public void deleteCertificateInfoByIds(List<Integer> certificateInfos) {
        for(int id: certificateInfos){
            sqlSessionTemplate.update("deleteCertificateInfoById", id);
        }
    }


}
