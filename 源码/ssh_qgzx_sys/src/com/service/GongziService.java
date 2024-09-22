package com.service;
import java.util.List;

import com.common.PageBean;
import com.vo.Gongzi;

public interface GongziService
{
        public void save(Gongzi gongzi);
	
	public void update(Gongzi gongzi);
	
	public void delete(Gongzi gongzi);
	
	public Gongzi getGongzi(Gongzi gongzi);
	
	public Gongzi getGongzi(Long id);

	public List<Gongzi> findPageInfoGongzi(Gongzi gongzi,PageBean pageBean);
	
	public Integer getCount(Gongzi gongzi);
	
	public List<Gongzi> findPageInfoGongzi1(Gongzi gongzi,PageBean pageBean);
	
	public Integer getCount1(Gongzi gongzi);
}
