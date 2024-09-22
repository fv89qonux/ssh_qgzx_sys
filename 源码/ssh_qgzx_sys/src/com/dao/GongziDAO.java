package com.dao;
import com.common.PageBean;
import com.vo.Gongzi;

import java.util.List;

public interface GongziDAO
{

	public void save(Gongzi gongzi);
	
	public void update(Gongzi gongzi);
	
	public void delete(Gongzi gongzi);
	
	public Gongzi getGongzi(Gongzi gongzi);
	
	public Gongzi getGongzi(Long id);
	/**
	 * 获得Gongzi的分页列表
	 * @param pageBean
	 * @return
	 */
	public List<Gongzi> findPageInfoGongzi(Gongzi gongzi,PageBean pageBean);
	
	public Integer getCount(Gongzi gongzi);
	
	public List<Gongzi> findPageInfoGongzi1(Gongzi gongzi,PageBean pageBean);
	
	public Integer getCount1(Gongzi gongzi);
}
