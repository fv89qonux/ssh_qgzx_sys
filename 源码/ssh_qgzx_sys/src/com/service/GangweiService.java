package com.service;
import java.util.List;

import com.common.PageBean;
import com.vo.Gangwei;

public interface GangweiService
{
        public void save(Gangwei gangwei);
	
	public void update(Gangwei gangwei);
	
	public void delete(Gangwei gangwei);
	
	public Gangwei getGangwei(Gangwei gangwei);
	
	public Gangwei getGangwei(Long id);

	public List<Gangwei> findPageInfoGangwei(Gangwei gangwei,PageBean pageBean);
	
	public Integer getCount(Gangwei gangwei);
	
	public List<Gangwei> findPageInfoGangwei1(Gangwei gangwei,PageBean pageBean);
	
	public Integer getCount1(Gangwei gangwei);
}
