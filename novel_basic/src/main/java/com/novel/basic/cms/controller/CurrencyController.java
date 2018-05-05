package com.novel.basic.cms.controller;

import com.novel.basic.cms.model.Currency;
import com.novel.basic.cms.model.User;
import com.novel.basic.cms.service.CurrencyService;
import com.novel.basic.cms.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * desc : 币种管理
 */
@Controller
public class CurrencyController {

	@Resource
	private CurrencyService currencyService;

	@Resource
	private UserService userService;
	
	/**
	 * 利率管理查询
	 * @return
	 */
	@RequestMapping(value = "/currency", method ={RequestMethod.POST,RequestMethod.GET})
	public ModelAndView findCurrency(ModelMap modelMap) throws Exception {
		List<Currency> currencies = currencyService.findAll();
		modelMap.addAttribute("currencies", currencies);
		return new ModelAndView("/currency/currency", modelMap);
	}
	
	/**
	 * put
	 * @return
	 */
	@RequestMapping(value = "/currency", method ={RequestMethod.PUT})
	public ModelAndView put(HttpServletRequest request, ModelMap modelMap, String[] marked) throws Exception {

		String userName =  request.getSession().getAttribute("loginName").toString();
		User user = userService.findByUsername(userName);
		modelMap.addAttribute("user", user);

		if(marked!=null && marked.length>0){
			modelMap.put("currency", currencyService.findById(marked[0]));
			//edit
			return new ModelAndView("/currency/edit", modelMap);
		}
		// add 
		return new ModelAndView("/currency/add", modelMap);
	}
	
	/**
	 * 添加利率
	 * @return
	 */
	@RequestMapping(value = "/currency/add", method ={RequestMethod.POST})
	public @ResponseBody boolean add(Currency currency) throws Exception {
		try {
			currencyService.add(currency);
			return true;
		} catch (Exception e) {
			return false;
		}
	}
	
	/**
	 * 编辑
	 * @return
	 */
	@RequestMapping(value = "/currency/edit", method ={RequestMethod.POST})
	public @ResponseBody boolean edit(Currency currency) throws Exception {
		try {
			currencyService.update(currency);
			return true;
		} catch (Exception e) {
			return false;
		}
	}
	
	/**
	 * 删除
	 * @return
	 */
	@RequestMapping(value = "/currency", method ={RequestMethod.DELETE})
	public @ResponseBody boolean delete(String[] marked) throws Exception {
		try {
			currencyService.delete(marked);
			return true;
		} catch (Exception e) {
			return false;
		}
	}
}
