package com.service;
import java.util.List;

import com.common.PageBean;
import com.dao.ShenqDAO;
import com.vo.Shenq;

public class ShenqServiceImpl implements ShenqService
{
	private ShenqDAO shenqDAO;

        
	public void save(Shenq shenq) {
		shenqDAO.save(shenq);
	}

	
	public void update(Shenq shenq) {
		shenqDAO.update(shenq);
	}
    
	
	public Shenq getShenq(Shenq shenq) {
		return shenqDAO.getShenq(shenq);
	}
	
	
	public Shenq getShenq(Long id) {
		return shenqDAO.getShenq(id);
	}

        
	public void delete(Shenq shenq) {
		shenqDAO.delete(shenq);
	}

        
        
	public List<Shenq> findPageInfoShenq(Shenq shenq, PageBean pageBean) {
		return shenqDAO.findPageInfoShenq(shenq, pageBean);
	}

	
	public Integer getCount(Shenq shenq) {
		return shenqDAO.getCount(shenq);
	}

     
	public void setShenqDAO(ShenqDAO shenqDAO) {
		this.shenqDAO = shenqDAO;
	}

	
	public List<Shenq> findPageInfoShenq1(Shenq shenq,
			PageBean pageBean) {
		 
		return shenqDAO.findPageInfoShenq1(shenq, pageBean);
	}

	
	public Integer getCount1(Shenq shenq) {
		
		return shenqDAO.getCount1(shenq);
	}
}
