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

import com.service.GongziService;
import com.vo.Gongzi;

import com.opensymphony.xwork2.ActionSupport;


public class GongziWebAction extends ActionSupport {

	/**
	 * Service层实例
	 */
	private GongziService gongziService;

	/**
	 * 日志
	 */
	private Logger log = Logger.getLogger(this.getClass());

	private Gongzi gongzi = new Gongzi();

	private Long id;

	@SuppressWarnings("unchecked")
	public String queryGongzi() {
		log.debug("queryGongzi" + "开始");
		HttpServletRequest request = ServletActionContext.getRequest();
		initSelect(request);

		int resultSize = 0;
		PageBean pageBean = null;
		
//		Loginuser user = (Loginuser) request.getSession().getAttribute("currentUser");
		
		resultSize = gongziService.getCount(gongzi);
		pageBean = PageBean.getPageBean(Constants.DISPLAYID_GONGZI,
				resultSize, request);
		List list = gongziService.findPageInfoGongzi(gongzi, pageBean);
		request.setAttribute(Constants.GONGZI_LIST, list);
		log.debug("queryGongzi" + "结束");
		return Constants.LIST;
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
	public String toAddGongzi() {
		log.debug("toAddGongzi" + "开始");
		HttpServletRequest request = ServletActionContext.getRequest();
		initSelect(request);
		Date date = new Date();
	 
		
		log.debug("toAddGongzi" + "结束");
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
	public String addGongzi() {
		log.debug("addGongzi" + "开始");
		try {
			
			gongziService.save(gongzi);
			
			gongzi = new Gongzi();
		} catch (Exception e) {
			e.printStackTrace();
			log.error("addGongzi failed" + gongzi.toString());
		}
		log.debug("addGongzi" + "结束");
		return queryGongzi();
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
	public String delGongzi() {
		log.debug("delGongzi" + "开始");
		try {
			gongzi.setId(id);
			gongziService.delete(gongzi);
			gongzi = new Gongzi();
		} catch (Exception e) {
			log.error("delGongzi failed" + gongzi.toString());
		}
		log.debug("delGongzi" + "结束");
		return queryGongzi();
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
	public String toEditGongzi() {
		log.debug("toEditGongzi" + "开始");
		HttpServletRequest request = ServletActionContext.getRequest();
		gongzi = gongziService.getGongzi(id);
		initSelect(request);
		log.debug("toEditGongzi" + "结束");
		return Constants.EDIT;
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
		gongzi = gongziService.getGongzi(id);
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
	public String viewGongzi() {
		log.debug("viewGongzi" + "开始");
		gongzi = gongziService.getGongzi(id);
		log.debug("viewGongzi" + "结束");
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
	public String editGongzi() {
		log.debug("editGongzi" + "开始");
		try {
			
			gongziService.update(gongzi);
			gongzi = new Gongzi();
		} catch (Exception e) {
			log.error("editGongzi failed" + gongzi.toString());
		}
		log.debug("editGongzi" + "结束");
		return queryGongzi();
	}

	
	
	/**
	 * @param GongziService
	 *            the GongziService to set
	 */
	public void setGongziService(GongziService gongziService) {
		this.gongziService = gongziService;
	}

	public Gongzi getGongzi() {
		return gongzi;
	}

	public void setGongzi(Gongzi gongzi) {
		this.gongzi = gongzi;
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
