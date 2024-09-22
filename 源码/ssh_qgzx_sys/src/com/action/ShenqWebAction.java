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
import com.service.ShenqService;
import com.vo.Gangwei;
import com.vo.Loginuser;
import com.vo.Shenq;

import com.opensymphony.xwork2.ActionSupport;


public class ShenqWebAction extends ActionSupport {

	/**
	 * Service层实例
	 */
	private ShenqService shenqService;
	
	private GangweiService gangweiService;

	/**
	 * 日志
	 */
	private Logger log = Logger.getLogger(this.getClass());

	private Shenq shenq = new Shenq();
	
	private Long id;

	private String xscsp;
	
	private String dwsp;

	@SuppressWarnings("unchecked")
	public String queryShenq() {
		log.debug("queryShenq" + "开始");
		HttpServletRequest request = ServletActionContext.getRequest();
		initSelect(request);

		int resultSize = 0;
		PageBean pageBean = null;
		resultSize = shenqService.getCount(shenq);
		
//		Loginuser user = (Loginuser) request.getSession().getAttribute("currentUser");
		
		
		pageBean = PageBean.getPageBean(Constants.DISPLAYID_SHENQ,
				resultSize, request);
		List list = shenqService.findPageInfoShenq(shenq, pageBean);
		request.setAttribute(Constants.SHENQ_LIST, list);
		log.debug("queryShenq" + "结束");
		return Constants.LIST;
	}
	
	
	public String queryMySq() {
		log.debug("queryShenq" + "开始");
		HttpServletRequest request = ServletActionContext.getRequest();
		initSelect(request);

		int resultSize = 0;
		PageBean pageBean = null;
		
		Loginuser lu=(Loginuser) request.getSession().getAttribute("currentUser");
		shenq.setUid(lu.getId());
		
		
		
//		Loginuser user = (Loginuser) request.getSession().getAttribute("currentUser");
		
		resultSize = shenqService.getCount(shenq);
		pageBean = PageBean.getPageBean(Constants.DISPLAYID_SHENQ,
				resultSize, request);
		List list = shenqService.findPageInfoShenq(shenq, pageBean);
		request.setAttribute(Constants.SHENQ_LIST, list);
		log.debug("queryShenq" + "结束");
		return "mylist";
	}
	
	
	public String toEditGongziSh() {
		log.debug("toEditGongzi" + "开始");
		HttpServletRequest request = ServletActionContext.getRequest();
		shenq = shenqService.getShenq(id);
		initSelect(request);
		log.debug("toEditGongzi" + "结束");
		return "gzsh";
	}
	
	
	public String queryShenqDW() {
		log.debug("queryShenq" + "开始");
		HttpServletRequest request = ServletActionContext.getRequest();
		initSelect(request);

		int resultSize = 0;
		PageBean pageBean = null;
		resultSize = shenqService.getCount(shenq);
		
//		Loginuser user = (Loginuser) request.getSession().getAttribute("currentUser");
		
		shenq.setXscsp("同意");
		
		
		pageBean = PageBean.getPageBean(Constants.DISPLAYID_SHENQ,
				resultSize, request);
		resultSize = shenqService.getCount(shenq);
		List list = shenqService.findPageInfoShenq(shenq, pageBean);
		request.setAttribute(Constants.SHENQ_LIST, list);
		log.debug("queryShenq" + "结束");
		return "xsclist";
	}
	
	
	
	public String queryShenqSH() {
		log.debug("queryShenq" + "开始");
		HttpServletRequest request = ServletActionContext.getRequest();
		initSelect(request);

		int resultSize = 0;
		PageBean pageBean = null;
		
//		Loginuser user = (Loginuser) request.getSession().getAttribute("currentUser");
		
		shenq.setShenpi("审批通过");
		resultSize = shenqService.getCount(shenq);
		
		pageBean = PageBean.getPageBean(Constants.DISPLAYID_SHENQ,
				resultSize, request);
		
		List list = shenqService.findPageInfoShenq(shenq, pageBean);
		request.setAttribute(Constants.SHENQ_LIST, list);
		log.debug("queryShenq" + "结束");
		return "shlist";
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
	public String toAddShenq() {
		log.debug("toAddShenq" + "开始");
		HttpServletRequest request = ServletActionContext.getRequest();
		initSelect(request);
		Date date = new Date();
	 
		
		log.debug("toAddShenq" + "结束");
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
	public String addShenq() {
		log.debug("addShenq" + "开始");
		try {
			HttpServletRequest request = ServletActionContext.getRequest();
			
			Gangwei gw=gangweiService.getGangwei(id);
			
			Loginuser lu=(Loginuser) request.getSession().getAttribute("currentUser");
			
			shenq = new Shenq();
			
			shenq.setName(gw.getName());
			shenq.setDanwei(gw.getDanwei());
			shenq.setBaochou(gw.getBaochou());
			shenq.setRiqi(new Date().toLocaleString());
			shenq.setShenpi("提交申请");
			shenq.setUid(lu.getId());
			shenq.setUname(lu.getName());
			shenq.setGid(gw.getId());
			
			
			shenqService.save(shenq);
			
			shenq = new Shenq();
			request.setAttribute("messageInfo","提交申请成功！");
		} catch (Exception e) {
			e.printStackTrace();
			log.error("addShenq failed" + shenq.toString());
		}
		log.debug("addShenq" + "结束");
		return queryShenq();
	}
	
	
	
	public String xscShenq() {
		log.debug("xscShenq" + "开始");
		try {
			String sp=this.xscsp.trim();
			shenq=shenqService.getShenq(id);
			if(sp.equals("ty")){
				shenq.setXscsp("同意");
				shenq.setShenpi("审批中");
			}
			if(sp.equals("bty")){
				shenq.setXscsp("不同意");
				shenq.setShenpi("不同意");
			}
			
			
			shenqService.update(shenq);
			shenq = new Shenq();
		} catch (Exception e) {
			log.error("delShenq failed" + shenq.toString());
		}
		log.debug("delShenq" + "结束");
		return queryShenq();
	}
	
	
	public String dwShenq() {
		log.debug("xscShenq" + "开始");
		try {
			String sp=this.xscsp.trim();
			shenq=shenqService.getShenq(id);
			if(sp.equals("ty")){
				shenq.setDwsp("同意");
				shenq.setShenpi("审批通过");
			}
			if(sp.equals("bty")){
				shenq.setDwsp("不同意");
				shenq.setShenpi("不同意");
			}
			
			
			shenqService.update(shenq);
			shenq = new Shenq();
		} catch (Exception e) {
			log.error("delShenq failed" + shenq.toString());
		}
		log.debug("delShenq" + "结束");
		return queryShenqDW();
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
	public String delShenq() {
		log.debug("delShenq" + "开始");
		try {
			shenq.setId(id);
			shenqService.delete(shenq);
			shenq = new Shenq();
		} catch (Exception e) {
			log.error("delShenq failed" + shenq.toString());
		}
		log.debug("delShenq" + "结束");
		return queryShenq();
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
	public String toEditShenq() {
		log.debug("toEditShenq" + "开始");
		HttpServletRequest request = ServletActionContext.getRequest();
		shenq = shenqService.getShenq(id);
		initSelect(request);
		log.debug("toEditShenq" + "结束");
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
		shenq = shenqService.getShenq(id);
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
	public String viewShenq() {
		log.debug("viewShenq" + "开始");
		shenq = shenqService.getShenq(id);
		log.debug("viewShenq" + "结束");
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
	public String editShenq() {
		log.debug("editShenq" + "开始");
		try {
			
			shenqService.update(shenq);
			shenq = new Shenq();
		} catch (Exception e) {
			log.error("editShenq failed" + shenq.toString());
		}
		log.debug("editShenq" + "结束");
		return queryShenq();
	}

	
	
	/**
	 * @param ShenqService
	 *            the ShenqService to set
	 */
	public void setShenqService(ShenqService shenqService) {
		this.shenqService = shenqService;
	}

	public Shenq getShenq() {
		return shenq;
	}

	public void setShenq(Shenq shenq) {
		this.shenq = shenq;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public void initSelect(HttpServletRequest request) {
 
	}




	public GangweiService getGangweiService() {
		return gangweiService;
	}




	public void setGangweiService(GangweiService gangweiService) {
		this.gangweiService = gangweiService;
	}


	public String getXscsp() {
		return xscsp;
	}


	public void setXscsp(String xscsp) {
		this.xscsp = xscsp;
	}


	public String getDwsp() {
		return dwsp;
	}


	public void setDwsp(String dwsp) {
		this.dwsp = dwsp;
	}
	
	
	
	

}
