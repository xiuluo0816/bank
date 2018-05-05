package com.novel.basic.cms.service;

import com.novel.basic.cms.model.Currency;

import java.util.List;

/**
 * 
 * @author dennis.sun
 * 币种  Service
 */
public interface CurrencyService {

	/**
	 * 查询所有币种
	 * */
	List<Currency> findAll();

	/**
	 * 添加币种
	 * */
	void add(Currency currency);
	
	/**
	 * 根据Id查询
	 * */
	Currency findById(String id);
	
	/**
	 * 更新币种
	 * */
	void update(Currency currency);

	/**
	 * 删除币种
	 * */
	void delete(String[] marked);

}
