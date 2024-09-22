package com.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang.StringUtils;

import com.common.HibernateGenericDao;
import com.common.PageBean;
import com.vo.Gongzi;

public class GongziDAOImpl extends HibernateGenericDao<Gongzi> implements
		GongziDAO {

	
	public void save(Gongzi gongzi) {
		super.save(gongzi);
	}

	
	public void update(Gongzi gongzi) {
		super.update(gongzi);
	}

	
	public void delete(Gongzi gongzi) {
		super.remove(gongzi);
	}

	public Gongzi getGongzi(Gongzi gongzi) {
		return get(gongzi.getId());
	}

	
	public Gongzi getGongzi(Long id) {
		return get(id);
	}

	
	public List<Gongzi> findPageInfoGongzi(Gongzi gongzi,
			PageBean pageBean) {
		List args = new ArrayList();
		StringBuffer sql = new StringBuffer();
		sql.append(" SELECT * FROM gongzi WHERE 1=1 ");
		sql = getStringBuffer(gongzi, sql, args);
		return getPageInfo(pageBean, sql.toString(), args);
	}

	public List<Gongzi> findPageInfoGongzi1(Gongzi gongzi,
			PageBean pageBean) {
		List args = new ArrayList();
		StringBuffer sql = new StringBuffer();
		sql.append(" SELECT * FROM gongzi WHERE  NAME<>'admin' ");
		sql = getStringBuffer(gongzi, sql, args);
		return getPageInfo(pageBean, sql.toString(), args);
	}
	

	public Integer getCount1(Gongzi gongzi) {
		List args = new ArrayList();
		StringBuffer sql = new StringBuffer();
		sql.append(" SELECT COUNT(0) FROM gongzi WHERE NAME<>'admin'  ");
		sql = getStringBuffer(gongzi, sql, args);
		return super.getCount(sql.toString(), args.toArray());
	}
	
	public Integer getCount(Gongzi gongzi) {
		List args = new ArrayList();
		StringBuffer sql = new StringBuffer();
		sql.append(" SELECT COUNT(0) FROM gongzi WHERE 1=1 ");
		sql = getStringBuffer(gongzi, sql, args);
		return super.getCount(sql.toString(), args.toArray());
	}

	/**
	 * 构造查询条件
	 * 
	 * @param gongzi
	 * @param buf3
	 * @param args
	 * @return
	 * @author Alex 10/28/2011 create
	 */
	private StringBuffer getStringBuffer(Gongzi gongzi, StringBuffer buf,
			List args) {
		/*
		 * 需要加入查询条件时封装
		 */

		if (StringUtils.isNotBlank(gongzi.getName())) {
			buf.append(" and name = ? ");
			args.add(gongzi.getName().trim());
		}
		
		
		
		if(gongzi.getUid()!=null&&gongzi.getUid()>0){
			buf.append(" and uid = ? ");
			args.add(gongzi.getUid());
		}
		
		return buf;
	}
}
