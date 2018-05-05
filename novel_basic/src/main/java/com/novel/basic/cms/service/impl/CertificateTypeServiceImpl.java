package com.novel.basic.cms.service.impl;


import com.novel.basic.cms.dao.CertificateTypeDao;
import com.novel.basic.cms.model.CertificateType;
import com.novel.basic.cms.service.CertificateTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * @author dennis.sun
 */
@Service
public class CertificateTypeServiceImpl implements CertificateTypeService {


    @Autowired
    CertificateTypeDao certificateTypeDaoImpl;

    @Override
    public List<CertificateType> findAllCertificateTypes() {
        List<CertificateType> certificateTypes = certificateTypeDaoImpl.findAllCertificateTypes();
        return certificateTypes;
    }

    @Override
    public void addCertificateType(CertificateType certificateType) {
        certificateTypeDaoImpl.addCertificateType(certificateType);
    }

    @Override
    public CertificateType findCertificateTypeById(String id) {
        CertificateType certificateType = new CertificateType();
        certificateType.setId(Integer.parseInt(id));
        return certificateTypeDaoImpl.findCertificateTypeById(certificateType);
    }

    @Override
    public void updateCertificateType(CertificateType certificateType) {
        certificateTypeDaoImpl.updateCertificateType(certificateType);
    }

    @Override
    public void deleteCertificateType(String[] marked) {
        List<Integer> certificateTypes = new ArrayList<>();
        for(String id : marked){
            certificateTypes.add(Integer.parseInt(id));
        }
        certificateTypeDaoImpl.deleteCertificateTypeByIds(certificateTypes);
    }

}
