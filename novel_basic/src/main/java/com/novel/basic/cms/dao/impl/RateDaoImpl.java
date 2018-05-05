package com.novel.basic.cms.dao.impl;

import com.novel.basic.cms.dao.RateDao;
import com.novel.basic.cms.model.Rate;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * desc : 利率持久化层
 * @author dennis.sun
 */
@Service
public class RateDaoImpl extends BaseDaoImpl implements RateDao {

    @Override
    public List<Rate> findAll() {
        return sqlSessionTemplate.selectList("findAllRates");
    }

    @Override
    public void add(Rate rate) {
        rate.setCreateTime(new Date());
        rate.setCreatedBy("张三");
        sqlSessionTemplate.insert("createRate", rate);
    }

    @Override
    public Rate findById(Rate rate) {
        return sqlSessionTemplate.selectOne("queryRateById", rate);
    }

    @Override
    public void update(Rate rate) {
        sqlSessionTemplate.update("updateRateById", rate);
    }

    @Override
    public void deleteByIds(List<Integer> rates) {
        for(int id: rates){
            sqlSessionTemplate.update("deleteRateById", id);
        }
    }


}
