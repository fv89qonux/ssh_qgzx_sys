package com.dao;	
import com.common.PageBean;	
import com.vo.Guanbi;	
	
import java.util.List;	
	
public interface GuanbiDAO	
{	
	
	public void save(Guanbi guanbi);	
		
	public void update(Guanbi guanbi);	
		
	public void delete(Guanbi guanbi);	
		
	public Guanbi getGuanbi(Guanbi guanbi);	
		
	public Guanbi getGuanbi(Long id);	
	/**	
	 * 获得Guanbi的分页列表	
	 * @param pageBean	
	 * @return	
	 */	
	public List<Guanbi> findPageInfoGuanbi(Guanbi guanbi,PageBean pageBean);	
		
	public Integer getCount(Guanbi guanbi);	
		
	public List<Guanbi> findPageInfoGuanbi1(Guanbi guanbi,PageBean pageBean);	
		
	public Integer getCount1(Guanbi guanbi);	
		
	public List<Guanbi> getAllGuanbi() ;	
	
	public boolean guanbi();
}	
