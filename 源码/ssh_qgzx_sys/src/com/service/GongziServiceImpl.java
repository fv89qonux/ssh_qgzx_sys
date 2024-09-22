package com.service;
import java.util.List;

import com.common.PageBean;
import com.dao.GongziDAO;
import com.vo.Gongzi;

public class GongziServiceImpl implements GongziService
{
	private GongziDAO gongziDAO;

        
	public void save(Gongzi gongzi) {
		gongziDAO.save(gongzi);
	}

	
	public void update(Gongzi gongzi) {
		gongziDAO.update(gongzi);
	}
    
	
	public Gongzi getGongzi(Gongzi gongzi) {
		return gongziDAO.getGongzi(gongzi);
	}
	
	
	public Gongzi getGongzi(Long id) {
		return gongziDAO.getGongzi(id);
	}

        
	public void delete(Gongzi gongzi) {
		gongziDAO.delete(gongzi);
	}

        
        
	public List<Gongzi> findPageInfoGongzi(Gongzi gongzi, PageBean pageBean) {
		return gongziDAO.findPageInfoGongzi(gongzi, pageBean);
	}

	
	public Integer getCount(Gongzi gongzi) {
		return gongziDAO.getCount(gongzi);
	}

     
	public void setGongziDAO(GongziDAO gongziDAO) {
		this.gongziDAO = gongziDAO;
	}

	
	public List<Gongzi> findPageInfoGongzi1(Gongzi gongzi,
			PageBean pageBean) {
		 
		return gongziDAO.findPageInfoGongzi1(gongzi, pageBean);
	}

	
	public Integer getCount1(Gongzi gongzi) {
		
		return gongziDAO.getCount1(gongzi);
	}
}
