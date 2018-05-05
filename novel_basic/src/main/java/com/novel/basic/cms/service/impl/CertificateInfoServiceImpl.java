package com.novel.basic.cms.service.impl;


import com.novel.basic.cms.dao.CertificateInfoDao;
import com.novel.basic.cms.dao.CertificateTypeDao;
import com.novel.basic.cms.dao.UserDao;
import com.novel.basic.cms.model.CertificateInfo;
import com.novel.basic.cms.service.CertificateInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * @author dennis.sun
 */
@Service
public class CertificateInfoServiceImpl implements CertificateInfoService {

    @Autowired
    CertificateInfoDao certificateInfoDaoImpl;

    @Autowired
    UserDao userDaoImpl;

    @Autowired
    CertificateTypeDao certificateTypeDao;

    @Override
    public List<CertificateInfo> findAllCertificateInfos() {
        List<CertificateInfo> certificateInfos = certificateInfoDaoImpl.findAllCertificateInfos();
        return certificateInfos;
    }

    @Override
    public CertificateInfo findCertificateInfoById(String id) {
        CertificateInfo certificateInfo = new CertificateInfo();
        certificateInfo.setId(Integer.parseInt(id));
        return certificateInfoDaoImpl.findCertificateInfoById(certificateInfo);
    }

    @Override
    public void addCertificateInfo(CertificateInfo certificateInfo) {
        certificateInfo.setCreatedBy("张三");
        certificateInfoDaoImpl.addCertificateInfo(certificateInfo);

    }

    @Override
    public void addBatchCertificateInfo(CertificateInfo certificateInfo, long fromNum, long toNum) {

        List<CertificateInfo> afterCloneInfos = cloneCertificateInfo(certificateInfo, fromNum, toNum);
        certificateInfoDaoImpl.addBatchCertificateInfo(afterCloneInfos);

    }

    @Override
    public void updateCertificateInfo(CertificateInfo certificateInfo) {
        certificateInfoDaoImpl.updateCertificateInfo(certificateInfo);
    }

    @Override
    public void deleteCertificateInfo(String[] marked) {
        List<Integer> certificateInfos = new ArrayList<>();
        for(String id : marked){
            certificateInfos.add(Integer.parseInt(id));
        }
        certificateInfoDaoImpl.deleteCertificateInfoByIds(certificateInfos);
    }

    /**
     * desc 创建多个凭证资料
     * @param certificateInfo
     * @param fromNum
     * @param toNum
     * @return
     */

    private List<CertificateInfo> cloneCertificateInfo(CertificateInfo certificateInfo, long fromNum, long toNum) {

        List<CertificateInfo> certificateInfos = new ArrayList<>();
        certificateInfo.setCreateTime(new Date());

        for(long i = fromNum; i <= toNum; i++) {
            CertificateInfo info = new CertificateInfo();
            info.setBusinessNum(certificateInfo.getBusinessNum());
            info.setUserId(certificateInfo.getUserId());
            info.setCertificateTypeId(certificateInfo.getCertificateTypeId());
            info.setCreatedBy("张三");
            info.setCreateTime(certificateInfo.getCreateTime());
            info.setPrintNum(i);
            info.setMark(certificateInfo.getMark());
            info.setStatus(0);
            info.setUseDate(certificateInfo.getUseDate());
            certificateInfos.add(info);
        }

        return certificateInfos;
    }

}
