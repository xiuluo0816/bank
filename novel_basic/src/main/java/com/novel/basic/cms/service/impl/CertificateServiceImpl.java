package com.novel.basic.cms.service.impl;


import com.novel.basic.cms.dao.CertificateDao;
import com.novel.basic.cms.model.CertificateType;
import com.novel.basic.cms.service.CertificateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * @author dennis.sun
 */
@Service
public class CertificateServiceImpl implements CertificateService {


    @Autowired
    CertificateDao certificateDaoImpl;

    @Override
    public List<CertificateType> findAllCertificateTypes() {
        List<CertificateType> certificateTypes = certificateDaoImpl.findAllCertificateTypes();
        return certificateTypes;
    }

    @Override
    public void addCertificateType(CertificateType certificateType) {
        certificateDaoImpl.addCertificateType(certificateType);
    }

    @Override
    public CertificateType findCertificateTypeById(String id) {
        CertificateType certificateType = new CertificateType();
        certificateType.setId(Integer.parseInt(id));
        return certificateDaoImpl.findCertificateTypeById(certificateType);
    }

    @Override
    public void updateCertificateType(CertificateType certificateType) {
        certificateDaoImpl.updateCertificateType(certificateType);
    }

    @Override
    public void deleteCertificateType(String[] marked) {
        List<Integer> certificateTypes = new ArrayList<>();
        for(String id : marked){
            certificateTypes.add(Integer.parseInt(id));
        }
        certificateDaoImpl.deleteCertificateTypeByIds(certificateTypes);
    }
}
