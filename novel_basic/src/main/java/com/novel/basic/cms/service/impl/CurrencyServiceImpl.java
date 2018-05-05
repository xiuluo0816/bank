package com.novel.basic.cms.service.impl;


import com.novel.basic.cms.dao.CurrencyDao;
import com.novel.basic.cms.model.Currency;
import com.novel.basic.cms.service.CurrencyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * @author dennis.sun
 */
@Service
public class CurrencyServiceImpl implements CurrencyService {


    @Autowired
    CurrencyDao currencyDaoImpl;

    @Override
    public List<Currency> findAll() {
        List<Currency> currencies = currencyDaoImpl.findAll();
        return currencies;
    }

    @Override
    public void add(Currency currency) {
        currencyDaoImpl.add(currency);
    }

    @Override
    public Currency findById(String id) {
        Currency currency = new Currency();
        currency.setId(Integer.parseInt(id));
        return currencyDaoImpl.findById(currency);
    }

    @Override
    public void update(Currency currency) {
        currencyDaoImpl.update(currency);
    }

    @Override
    public void delete(String[] marked) {
        List<Integer> currencies = new ArrayList<>();
        for(String id : marked){
            currencies.add(Integer.parseInt(id));
        }
        currencyDaoImpl.deleteByIds(currencies);
    }
}
