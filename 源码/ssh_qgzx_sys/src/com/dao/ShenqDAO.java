package com.dao;
import com.common.PageBean;
import com.vo.Shenq;

import java.util.List;

public interface ShenqDAO
{

	public void save(Shenq shenq);
	
	public void update(Shenq shenq);
	
	public void delete(Shenq shenq);
	
	public Shenq getShenq(Shenq shenq);
	
	public Shenq getShenq(Long id);
	/**
	 * 获得Shenq的分页列表
	 * @param pageBean
	 * @return
	 */
	public List<Shenq> findPageInfoShenq(Shenq shenq,PageBean pageBean);
	
	public Integer getCount(Shenq shenq);
	
	public List<Shenq> findPageInfoShenq1(Shenq shenq,PageBean pageBean);
	
	public Integer getCount1(Shenq shenq);
}
