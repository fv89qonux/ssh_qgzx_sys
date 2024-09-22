package com.action;

import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.apache.struts2.ServletActionContext;

import com.common.Constants;

import com.common.PageBean;

import com.service.GangweiService;
import com.vo.Gangwei;

import com.opensymphony.xwork2.ActionSupport;


public class GangweiWebAction extends ActionSupport {

	/**
	 * Service层实例
	 */
	private GangweiService gangweiService;

	/**
	 * 日志
	 */
	private Logger log = Logger.getLogger(this.getClass());

	private Gangwei gangwei = new Gangwei();

	private Long id;

	@SuppressWarnings("unchecked")
	public String queryGangwei() {
		log.debug("queryGangwei" + "开始");
		HttpServletRequest request = ServletActionContext.getRequest();
		initSelect(request);

		int resultSize = 0;
		PageBean pageBean = null;
		
//		Loginuser user = (Loginuser) request.getSession().getAttribute("currentUser");
		
		resultSize = gangweiService.getCount(gangwei);
		pageBean = PageBean.getPageBean(Constants.DISPLAYID_GANGWEI,
				resultSize, request);
		List list = gangweiService.findPageInfoGangwei(gangwei, pageBean);
		request.setAttribute(Constants.GANGWEI_LIST, list);
		log.debug("queryGangwei" + "结束");
		return Constants.LIST;
	}
	
	
	public String queryGangweiSp() {
		log.debug("queryGangwei" + "开始");
		HttpServletRequest request = ServletActionContext.getRequest();
		initSelect(request);

		int resultSize = 0;
		PageBean pageBean = null;
		
//		Loginuser user = (Loginuser) request.getSession().getAttribute("currentUser");
		
		resultSize = gangweiService.getCount(gangwei);
		pageBean = PageBean.getPageBean(Constants.DISPLAYID_GANGWEI,
				resultSize, request);
		List list = gangweiService.findPageInfoGangwei(gangwei, pageBean);
		request.setAttribute(Constants.GANGWEI_LIST, list);
		log.debug("queryGangwei" + "结束");
		return "splist";
	}
	
	
	public String queryGangweiSq() {
		log.debug("queryGangwei" + "开始");
		HttpServletRequest request = ServletActionContext.getRequest();
		initSelect(request);

		int resultSize = 0;
		PageBean pageBean = null;
		
//		Loginuser user = (Loginuser) request.getSession().getAttribute("currentUser");
		
		resultSize = gangweiService.getCount(gangwei);
		pageBean = PageBean.getPageBean(Constants.DISPLAYID_GANGWEI,
				resultSize, request);
		gangwei.setShenpi("通过");
		List list = gangweiService.findPageInfoGangwei(gangwei, pageBean);
		request.setAttribute(Constants.GANGWEI_LIST, list);
		log.debug("queryGangwei" + "结束");
		return "sqlist";
	}
	
	
	
	public String queryGangweiTG() {
		log.debug("queryGangwei" + "开始");
		HttpServletRequest request = ServletActionContext.getRequest();
		initSelect(request);

		int resultSize = 0;
		PageBean pageBean = null;
		
//		Loginuser user = (Loginuser) request.getSession().getAttribute("currentUser");
		
		resultSize = gangweiService.getCount(gangwei);
		pageBean = PageBean.getPageBean(Constants.DISPLAYID_GANGWEI,
				resultSize, request);
		gangwei.setShenpi("通过");
		List list = gangweiService.findPageInfoGangwei(gangwei, pageBean);
		request.setAttribute(Constants.GANGWEI_LIST, list);
		log.debug("queryGangwei" + "结束");
		return "tglist";
	}
	
 
	

	/**
	 * 
	 * 进入增加界面
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	public String toAddGangwei() {
		log.debug("toAddGangwei" + "开始");
		HttpServletRequest request = ServletActionContext.getRequest();
		initSelect(request);
		Date date = new Date();
	 
		
		log.debug("toAddGangwei" + "结束");
		return Constants.ADD;
	}

	/**
	 * 
	 * 增加
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	public String addGangwei() {
		log.debug("addGangwei" + "开始");
		try {
			gangwei.setShenpi("未审批");
			
			gangweiService.save(gangwei);
			
			gangwei = new Gangwei();
		} catch (Exception e) {
			e.printStackTrace();
			log.error("addGangwei failed" + gangwei.toString());
		}
		log.debug("addGangwei" + "结束");
		return queryGangwei();
	}

	/**
	 * 
	 * 删除
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	public String delGangwei() {
		log.debug("delGangwei" + "开始");
		try {
			gangwei.setId(id);
			gangweiService.delete(gangwei);
			gangwei = new Gangwei();
		} catch (Exception e) {
			log.error("delGangwei failed" + gangwei.toString());
		}
		log.debug("delGangwei" + "结束");
		return queryGangwei();
	}

	/**
	 * 
	 * 进入编辑界面
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	public String toEditGangwei() {
		log.debug("toEditGangwei" + "开始");
		HttpServletRequest request = ServletActionContext.getRequest();
		gangwei = gangweiService.getGangwei(id);
		initSelect(request);
		log.debug("toEditGangwei" + "结束");
		return Constants.EDIT;
	}
	
	
	
	public String toEditGangweiSp() {
		log.debug("toEditGangwei" + "开始");
		HttpServletRequest request = ServletActionContext.getRequest();
		gangwei = gangweiService.getGangwei(id);
		initSelect(request);
		log.debug("toEditGangwei" + "结束");
		return "gangweisp";
	}
	
	
	public String editGangweiSp() {
		log.debug("editGangwei" + "开始");
		try {
			System.out.println(gangwei);
		   
			
			
			gangweiService.update(gangwei);
			gangwei = new Gangwei();
		} catch (Exception e) {
			log.error("editGangwei failed" + gangwei.toString());
		}
		log.debug("editGangwei" + "结束");
		return queryGangweiSp();
	}
	
	/**
	 * 
	 * 进入调整访问周期界面
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	public String tomodifyZQ() {
		log.debug("tomodifyZQ" + "开始");
		HttpServletRequest request = ServletActionContext.getRequest();
		gangwei = gangweiService.getGangwei(id);
		initSelect(request);
		log.debug("tomodifyZQ" + "结束");
		return "tomodifyZQ";
	}

	/**
	 * 
	 * 查看信息
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	public String viewGangwei() {
		log.debug("viewGangwei" + "开始");
		gangwei = gangweiService.getGangwei(id);
		log.debug("viewGangwei" + "结束");
		return Constants.VIEW;
	}

	/**
	 * 
	 * 编辑
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	public String editGangwei() {
		log.debug("editGangwei" + "开始");
		try {
			gangwei.setShenpi("未审批");
			
			gangweiService.update(gangwei);
			gangwei = new Gangwei();
		} catch (Exception e) {
			log.error("editGangwei failed" + gangwei.toString());
		}
		log.debug("editGangwei" + "结束");
		return queryGangwei();
	}

	
	
	/**
	 * @param GangweiService
	 *            the GangweiService to set
	 */
	public void setGangweiService(GangweiService gangweiService) {
		this.gangweiService = gangweiService;
	}

	public Gangwei getGangwei() {
		return gangwei;
	}

	public void setGangwei(Gangwei gangwei) {
		this.gangwei = gangwei;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public void initSelect(HttpServletRequest request) {
 
	}

}
