package com.service;	
import java.util.List;	
	
import com.common.PageBean;	
import com.vo.Guanbi;	
	
public interface GuanbiService	
{	
    public void save(Guanbi guanbi);	
		
	public void update(Guanbi guanbi);	
		
	public void delete(Guanbi guanbi);	
		
	public Guanbi getGuanbi(Guanbi guanbi);	
		
	public Guanbi getGuanbi(Long id);	
	
	public List<Guanbi> findPageInfoGuanbi(Guanbi guanbi,PageBean pageBean);	
		
	public Integer getCount(Guanbi guanbi);	
		
	public List<Guanbi> findPageInfoGuanbi1(Guanbi guanbi,PageBean pageBean);	
		
	public Integer getCount1(Guanbi guanbi);	
		
	public List<Guanbi> getAllGuanbi();	
	
	public boolean guanbi();
}	
