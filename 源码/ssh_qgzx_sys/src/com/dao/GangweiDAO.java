package com.dao;
import com.common.PageBean;
import com.vo.Gangwei;

import java.util.List;

public interface GangweiDAO
{

	public void save(Gangwei gangwei);
	
	public void update(Gangwei gangwei);
	
	public void delete(Gangwei gangwei);
	
	public Gangwei getGangwei(Gangwei gangwei);
	
	public Gangwei getGangwei(Long id);
	/**
	 * 获得Gangwei的分页列表
	 * @param pageBean
	 * @return
	 */
	public List<Gangwei> findPageInfoGangwei(Gangwei gangwei,PageBean pageBean);
	
	public Integer getCount(Gangwei gangwei);
	
	public List<Gangwei> findPageInfoGangwei1(Gangwei gangwei,PageBean pageBean);
	
	public Integer getCount1(Gangwei gangwei);
}
