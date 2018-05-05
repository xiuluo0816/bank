package com.novel.basic.cms.controller;

import com.novel.basic.cms.model.CertificateInfo;
import com.novel.basic.cms.model.CertificateType;
import com.novel.basic.cms.model.User;
import com.novel.basic.cms.service.CertificateInfoService;
import com.novel.basic.cms.service.CertificateTypeService;
import com.novel.basic.cms.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.List;

/**
 * desc : 凭证管理
 */
@Controller
public class CertificateController {

	@Resource
	private CertificateTypeService certificateTypeService;

	@Resource
	private CertificateInfoService certificateInfoService;

	@Resource
	private UserService userService;
	
	/**
	 * 凭证类型查询
	 * @return
	 */
	@RequestMapping(value = "/certificateType", method ={RequestMethod.POST,RequestMethod.GET})
	public ModelAndView findCertificateType(ModelMap modelMap) throws Exception {
		List<CertificateType> certificateTypes = certificateTypeService.findAllCertificateTypes();
		modelMap.addAttribute("certificateTypes", certificateTypes);
		return new ModelAndView("/certificate/certificateType/certificateType", modelMap);
	}
	
	/**
	 * put
	 * @return
	 */
	@RequestMapping(value = "/certificateType", method ={RequestMethod.PUT})
	public ModelAndView put(HttpServletRequest request, ModelMap modelMap, String[] marked) throws Exception {

		String userName =  request.getSession().getAttribute("loginName").toString();
		User user = userService.findByUsername(userName);
		modelMap.addAttribute("user", user);

		if(marked!=null && marked.length>0){
			modelMap.put("certificateType", certificateTypeService.findCertificateTypeById(marked[0]));
			//edit
			return new ModelAndView("/certificate/certificateType/edit", modelMap);
		}
		// add 
		return new ModelAndView("/certificate/certificateType/add", modelMap);
	}
	
	/**
	 * 添加凭证类型
	 * @return
	 */
	@RequestMapping(value = "/certificateType/add", method ={RequestMethod.POST})
	public @ResponseBody boolean add(CertificateType certificateType) throws Exception {
		try {
			certificateTypeService.addCertificateType(certificateType);
			return true;
		} catch (Exception e) {
			return false;
		}
	}
	
	/**
	 * 编辑
	 * @return
	 */
	@RequestMapping(value = "/certificateType/edit", method ={RequestMethod.POST})
	public @ResponseBody boolean edit(CertificateType certificateType) throws Exception {
		try {
			certificateTypeService.updateCertificateType(certificateType);
			return true;
		} catch (Exception e) {
			return false;
		}
	}
	
	/**
	 * 删除
	 * @return
	 */
	@RequestMapping(value = "/certificateType", method ={RequestMethod.DELETE})
	public @ResponseBody boolean delete(String[] marked) throws Exception {
		try {
			certificateTypeService.deleteCertificateType(marked);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	/**
	 * 凭证资料查询
	 * @return
	 */
	@RequestMapping(value = "/certificateInfo", method ={RequestMethod.POST,RequestMethod.GET})
	public ModelAndView findCertificateInfo(HttpServletRequest request, ModelMap modelMap) throws Exception {
		List<CertificateInfo> certificateInfos = certificateInfoService.findAllCertificateInfos();
		List<User> users = userService.findAllUsers();
		List<CertificateType> certificateTypes = certificateTypeService.findAllCertificateTypes();
		String userName =  request.getSession().getAttribute("loginName").toString();
		User user = userService.findByUsername(userName);
		modelMap.addAttribute("user", user);
		modelMap.addAttribute("certificateInfos", certificateInfos);
		modelMap.addAttribute("certificateTypes", certificateTypes);
		modelMap.addAttribute("users", users);
		return new ModelAndView("/certificate/certificateInfo/certificateInfo", modelMap);
	}

	/**
	 * put 凭证资料
	 * @return
	 */
	@RequestMapping(value = "/certificateInfo", method ={RequestMethod.PUT})
	public ModelAndView putCertificateInfo(HttpServletRequest request, ModelMap modelMap, String[] marked) throws Exception {

		String userName =  request.getSession().getAttribute("loginName").toString();
		User user = userService.findByUsername(userName);
		modelMap.addAttribute("user", user);
		modelMap.addAttribute("useDate", new Date());

		List<CertificateType> certificateTypes = certificateTypeService.findAllCertificateTypes();
		modelMap.addAttribute("certificateTypes", certificateTypes);

		List<User> users = userService.findAllUsers();
		modelMap.addAttribute("users", users);

		if(marked!=null && marked.length>0){
			modelMap.put("certificateInfo", certificateInfoService.findCertificateInfoById(marked[0]));
			//edit
			return new ModelAndView("/certificate/certificateInfo/edit", modelMap);
		}
		// add
		return new ModelAndView("/certificate/certificateInfo/add", modelMap);
	}

	/**
	 * put 凭证资料
	 * @return
	 */
	@RequestMapping(value = "/certificateInfo/addBatch", method ={RequestMethod.PUT})
	public ModelAndView addBatchCertificateInfo(HttpServletRequest request, ModelMap modelMap) throws Exception {

		String userName =  request.getSession().getAttribute("loginName").toString();
		User user = userService.findByUsername(userName);
		modelMap.addAttribute("user", user);
		modelMap.addAttribute("useDate", new Date());

		List<CertificateType> certificateTypes = certificateTypeService.findAllCertificateTypes();
		modelMap.addAttribute("certificateTypes", certificateTypes);

		List<User> users = userService.findAllUsers();
		modelMap.addAttribute("users", users);

		// add
		return new ModelAndView("/certificate/certificateInfo/addBatch", modelMap);
	}


	/**
	 * 逐个添加凭证资料
	 * @return
	 */
	@RequestMapping(value = "/certificateInfo/add", method ={RequestMethod.POST})
	public @ResponseBody boolean addCertificateInfo(CertificateInfo certificateInfo) throws Exception {
		try {
			certificateInfoService.addCertificateInfo(certificateInfo);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	/**
	 * 添加凭证资料
	 * @return
	 */
	@RequestMapping(value = "/certificateInfo/addBatch", method ={RequestMethod.POST})
	public @ResponseBody boolean addBatchCertificateInfo(CertificateInfo certificateInfo, long fromNum, long toNum) throws Exception {
		try {
			certificateInfoService.addBatchCertificateInfo(certificateInfo, fromNum, toNum);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	/**
	 * 编辑凭证资料
	 * @return
	 */
	@RequestMapping(value = "/certificateInfo/edit", method ={RequestMethod.POST})
	public @ResponseBody boolean editCertificateInfo(CertificateInfo certificateInfo) throws Exception {
		try {
			certificateInfoService.updateCertificateInfo(certificateInfo);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	/**
	 * 删除凭证资料
	 * @return
	 */
	@RequestMapping(value = "/certificateInfo", method ={RequestMethod.DELETE})
	public @ResponseBody boolean deleteCertificateInfo(String[] marked) throws Exception {
		try {
			certificateInfoService.deleteCertificateInfo(marked);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

}
