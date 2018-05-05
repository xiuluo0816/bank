package com.novel.basic.cms.dao.impl;

import com.novel.basic.cms.dao.CurrencyDao;
import com.novel.basic.cms.model.Currency;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * desc : 币种持久化层
 * @author dennis.sun
 */
@Service
public class CurrencyDaoImpl extends BaseDaoImpl implements CurrencyDao {

    @Override
    public List<Currency> findAll() {
        return sqlSessionTemplate.selectList("findAllCurrencies");
    }

    @Override
    public void add(Currency currency) {
        currency.setCreateTime(new Date());
        currency.setCreatedBy("张三");
        sqlSessionTemplate.insert("createCurrency", currency);
    }

    @Override
    public Currency findById(Currency currency) {
        return sqlSessionTemplate.selectOne("queryCurrencyById", currency);
    }

    @Override
    public void update(Currency currency) {
        sqlSessionTemplate.update("updateCurrencyById", currency);
    }

    @Override
    public void deleteByIds(List<Integer> currencies) {
        for(int id: currencies){
            sqlSessionTemplate.update("deleteCurrencyById", id);
        }
    }


}
