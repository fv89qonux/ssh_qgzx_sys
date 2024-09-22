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
	
import com.service.GuanbiService;	
import com.vo.Guanbi;	
	
import com.opensymphony.xwork2.ActionSupport;	
	
	
public class GuanbiWebAction extends ActionSupport {	
	
	/**	
	 * Service层实例	
	 */	
	private GuanbiService guanbiService;	
	
	/**	
	 * 日志	
	 */	
	private Logger log = Logger.getLogger(this.getClass());	
	
	private Guanbi guanbi = new Guanbi();	
	
	private Long id;	
	
	@SuppressWarnings("unchecked")	
	public String queryGuanbi() {	
		log.debug("queryGuanbi" + "开始");	
		HttpServletRequest request = ServletActionContext.getRequest();	
		initSelect(request);	
	
		int resultSize = 0;	
		PageBean pageBean = null;	
			
//		Loginuser user = (Loginuser) request.getSession().getAttribute("currentUser");	
			
		resultSize = guanbiService.getCount(guanbi);	
		pageBean = PageBean.getPageBean("guanbi",	
				resultSize, request);	
		List list = guanbiService.findPageInfoGuanbi(guanbi, pageBean);	
		request.setAttribute("guanbi_list", list);	
		log.debug("queryGuanbi" + "结束");	
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
	public String toAddGuanbi() {	
		log.debug("toAddGuanbi" + "开始");	
		HttpServletRequest request = ServletActionContext.getRequest();	
		initSelect(request);	
		Date date = new Date();	
	 	
			
		log.debug("toAddGuanbi" + "结束");	
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
	public String addGuanbi() {	
		log.debug("addGuanbi" + "开始");	
		try {	
				
			guanbiService.save(guanbi);	
				
			guanbi = new Guanbi();	
		} catch (Exception e) {	
			e.printStackTrace();	
			log.error("addGuanbi failed" + guanbi.toString());	
		}	
		log.debug("addGuanbi" + "结束");	
		return queryGuanbi();	
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
	public String delGuanbi() {	
		log.debug("delGuanbi" + "开始");	
		try {	
			guanbi.setId(id);	
			guanbiService.delete(guanbi);	
			guanbi = new Guanbi();	
		} catch (Exception e) {	
			log.error("delGuanbi failed" + guanbi.toString());	
		}	
		log.debug("delGuanbi" + "结束");	
		return queryGuanbi();	
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
	public String toEditGuanbi() {	
		log.debug("toEditGuanbi" + "开始");	
		HttpServletRequest request = ServletActionContext.getRequest();	
		guanbi = guanbiService.getGuanbi(id);	
		initSelect(request);	
		log.debug("toEditGuanbi" + "结束");	
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
		guanbi = guanbiService.getGuanbi(id);	
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
	public String viewGuanbi() {	
		log.debug("viewGuanbi" + "开始");	
		guanbi = guanbiService.getGuanbi(id);	
		log.debug("viewGuanbi" + "结束");	
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
	public String editGuanbi() {	
		log.debug("editGuanbi" + "开始");	
		try {	
				
			guanbiService.update(guanbi);	
			guanbi = new Guanbi();	
		} catch (Exception e) {	
			log.error("editGuanbi failed" + guanbi.toString());	
		}	
		log.debug("editGuanbi" + "结束");	
		return queryGuanbi();	
	}	
	
		
		
	/**	
	 * @param GuanbiService	
	 *            the GuanbiService to set	
	 */	
	public void setGuanbiService(GuanbiService guanbiService) {	
		this.guanbiService = guanbiService;	
	}	
	
	public Guanbi getGuanbi() {	
		return guanbi;	
	}	
	
	public void setGuanbi(Guanbi guanbi) {	
		this.guanbi = guanbi;	
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
