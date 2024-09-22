package com.service;
import java.util.List;

import com.common.PageBean;
import com.vo.Shenq;

public interface ShenqService
{
        public void save(Shenq shenq);
	
	public void update(Shenq shenq);
	
	public void delete(Shenq shenq);
	
	public Shenq getShenq(Shenq shenq);
	
	public Shenq getShenq(Long id);

	public List<Shenq> findPageInfoShenq(Shenq shenq,PageBean pageBean);
	
	public Integer getCount(Shenq shenq);
	
	public List<Shenq> findPageInfoShenq1(Shenq shenq,PageBean pageBean);
	
	public Integer getCount1(Shenq shenq);
}
