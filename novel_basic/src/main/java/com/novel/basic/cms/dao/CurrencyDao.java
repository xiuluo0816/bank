package com.novel.basic.cms.dao;


import com.novel.basic.cms.model.Currency;

import java.util.List;

/**
 * 币种Dao层
 */
public interface CurrencyDao {

    /**
     * desc : 查询币种
     * @return List<Currency>
     */
    List<Currency> findAll();

    /**
     * desc : 添加一个币种
     * @param currency
     */
    void add(Currency currency);

    /**
     * desc : 根据id查询币种
     * @return Currency
     */
    Currency findById(Currency currency);

    /**
     * desc : 编辑币种
     */
    void update(Currency currency);

    /**
     * desc : 删除币种
     */
    void deleteByIds(List<Integer> currencies);
}
