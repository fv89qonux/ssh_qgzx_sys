package com.service;
import java.util.List;

import com.common.PageBean;
import com.dao.GangweiDAO;
import com.vo.Gangwei;

public class GangweiServiceImpl implements GangweiService
{
	private GangweiDAO gangweiDAO;

        
	public void save(Gangwei gangwei) {
		gangweiDAO.save(gangwei);
	}

	
	public void update(Gangwei gangwei) {
		gangweiDAO.update(gangwei);
	}
    
	
	public Gangwei getGangwei(Gangwei gangwei) {
		return gangweiDAO.getGangwei(gangwei);
	}
	
	
	public Gangwei getGangwei(Long id) {
		return gangweiDAO.getGangwei(id);
	}

        
	public void delete(Gangwei gangwei) {
		gangweiDAO.delete(gangwei);
	}

        
        
	public List<Gangwei> findPageInfoGangwei(Gangwei gangwei, PageBean pageBean) {
		return gangweiDAO.findPageInfoGangwei(gangwei, pageBean);
	}

	
	public Integer getCount(Gangwei gangwei) {
		return gangweiDAO.getCount(gangwei);
	}

     
	public void setGangweiDAO(GangweiDAO gangweiDAO) {
		this.gangweiDAO = gangweiDAO;
	}

	
	public List<Gangwei> findPageInfoGangwei1(Gangwei gangwei,
			PageBean pageBean) {
		 
		return gangweiDAO.findPageInfoGangwei1(gangwei, pageBean);
	}

	
	public Integer getCount1(Gangwei gangwei) {
		
		return gangweiDAO.getCount1(gangwei);
	}
}
