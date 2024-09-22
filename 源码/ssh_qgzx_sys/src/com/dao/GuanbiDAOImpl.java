package com.dao;	
	
import java.text.SimpleDateFormat;
import java.util.ArrayList;	
import java.util.Date;
import java.util.List;	
	
import org.apache.commons.lang.StringUtils;	
	
import com.common.HibernateGenericDao;	
import com.common.PageBean;	
import com.vo.Guanbi;	
	
public class GuanbiDAOImpl extends HibernateGenericDao<Guanbi> implements	
		GuanbiDAO {	
	
	public void save(Guanbi guanbi) {	
		super.save(guanbi);	
	}	
	
	public void update(Guanbi guanbi) {	
		super.update(guanbi);	
	}	
	
	public void delete(Guanbi guanbi) {	
		super.remove(guanbi);	
	}	
	
	public Guanbi getGuanbi(Guanbi guanbi) {	
		return get(guanbi.getId());	
	}	
	
	public Guanbi getGuanbi(Long id) {	
		return get(id);	
	}	
	
	public List<Guanbi> getAllGuanbi() {	
	
		return getAll();	
	}	
	
	public List<Guanbi> findPageInfoGuanbi(Guanbi guanbi, PageBean pageBean) {	
		List args = new ArrayList();	
		StringBuffer sql = new StringBuffer();	
		sql.append(" SELECT * FROM guanbi WHERE 1=1 ");	
		sql = getStringBuffer(guanbi, sql, args);	
		return getPageInfo(pageBean, sql.toString(), args);	
	}	
	
	public List<Guanbi> findPageInfoGuanbi1(Guanbi guanbi, PageBean pageBean) {	
		List args = new ArrayList();	
		StringBuffer sql = new StringBuffer();	
		sql.append(" SELECT * FROM guanbi WHERE  NAME<>'admin' ");	
		sql = getStringBuffer(guanbi, sql, args);	
		return getPageInfo(pageBean, sql.toString(), args);	
	}	
	
	public Integer getCount1(Guanbi guanbi) {	
		List args = new ArrayList();	
		StringBuffer sql = new StringBuffer();	
		sql.append(" SELECT COUNT(0) FROM guanbi WHERE NAME<>'admin'  ");	
		sql = getStringBuffer(guanbi, sql, args);	
		return super.getCount(sql.toString(), args.toArray());	
	}	
	
	public Integer getCount(Guanbi guanbi) {	
		List args = new ArrayList();	
		StringBuffer sql = new StringBuffer();	
		sql.append(" SELECT COUNT(0) FROM guanbi WHERE 1=1 ");	
		sql = getStringBuffer(guanbi, sql, args);	
		return super.getCount(sql.toString(), args.toArray());	
	}	
	
	/**	
	 * 构造查询条件	
	 * 	
	 * @param guanbi	
	 * @param buf3	
	 * @param args	
	 * @return	
	 * @author Alex 10/28/2011 create	
	 */	
	private StringBuffer getStringBuffer(Guanbi guanbi, StringBuffer buf,	
			List args) {	
		/*	
		 * 需要加入查询条件时封装	
		 */	
	
		
	
		return buf;	
	}	
	
	public boolean guanbi() {
		List args = new ArrayList();
		StringBuffer sql = new StringBuffer();
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		String date=df.format(new Date());
		sql.append("select * from guanbi where friqi<'"+date+"' and triqi>'"+date+"'");
		 
		try {
			List mylist=this.findBySQL(sql.toString(), args);
			if(mylist!=null && mylist.size()>0){
				return true;
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
}	
