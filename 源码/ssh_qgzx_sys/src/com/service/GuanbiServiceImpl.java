package com.service;	
	
import java.util.List;	
	
import com.common.PageBean;	
import com.dao.GuanbiDAO;	
import com.vo.Guanbi;	
	
public class GuanbiServiceImpl implements GuanbiService {	
	private GuanbiDAO guanbiDAO;	
	
	public void save(Guanbi guanbi) {	
		guanbiDAO.save(guanbi);	
	}	
	
	public void update(Guanbi guanbi) {	
		guanbiDAO.update(guanbi);	
	}	
	
	public Guanbi getGuanbi(Guanbi guanbi) {	
		return guanbiDAO.getGuanbi(guanbi);	
	}	
	
	public Guanbi getGuanbi(Long id) {	
		return guanbiDAO.getGuanbi(id);	
	}	
	
	public void delete(Guanbi guanbi) {	
		guanbiDAO.delete(guanbi);	
	}	
	
	public List<Guanbi> findPageInfoGuanbi(Guanbi guanbi, PageBean pageBean) {	
		return guanbiDAO.findPageInfoGuanbi(guanbi, pageBean);	
	}	
	
	public Integer getCount(Guanbi guanbi) {	
		return guanbiDAO.getCount(guanbi);	
	}	
	
	public void setGuanbiDAO(GuanbiDAO guanbiDAO) {	
		this.guanbiDAO = guanbiDAO;	
	}	
	
	public List<Guanbi> findPageInfoGuanbi1(Guanbi guanbi, PageBean pageBean) {	
	
		return guanbiDAO.findPageInfoGuanbi1(guanbi, pageBean);	
	}	
	
	public Integer getCount1(Guanbi guanbi) {	
	
		return guanbiDAO.getCount1(guanbi);	
	}	
	
	public List<Guanbi> getAllGuanbi() {	
	
		return guanbiDAO.getAllGuanbi();	
	}	
	
	public boolean guanbi(){
		return guanbiDAO.guanbi();	
	}
}	
