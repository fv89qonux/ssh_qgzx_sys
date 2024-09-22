package com.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang.StringUtils;

import com.common.HibernateGenericDao;
import com.common.PageBean;
import com.vo.Shenq;

public class ShenqDAOImpl extends HibernateGenericDao<Shenq> implements
		ShenqDAO {

	
	public void save(Shenq shenq) {
		super.save(shenq);
	}

	
	public void update(Shenq shenq) {
		super.update(shenq);
	}

	
	public void delete(Shenq shenq) {
		super.remove(shenq);
	}

	public Shenq getShenq(Shenq shenq) {
		return get(shenq.getId());
	}

	
	public Shenq getShenq(Long id) {
		return get(id);
	}

	
	public List<Shenq> findPageInfoShenq(Shenq shenq,
			PageBean pageBean) {
		List args = new ArrayList();
		StringBuffer sql = new StringBuffer();
		sql.append(" SELECT * FROM shenq WHERE 1=1 ");
		sql = getStringBuffer(shenq, sql, args);
		return getPageInfo(pageBean, sql.toString(), args);
	}

	public List<Shenq> findPageInfoShenq1(Shenq shenq,
			PageBean pageBean) {
		List args = new ArrayList();
		StringBuffer sql = new StringBuffer();
		sql.append(" SELECT * FROM shenq WHERE  NAME<>'admin' ");
		sql = getStringBuffer(shenq, sql, args);
		return getPageInfo(pageBean, sql.toString(), args);
	}
	

	public Integer getCount1(Shenq shenq) {
		List args = new ArrayList();
		StringBuffer sql = new StringBuffer();
		sql.append(" SELECT COUNT(0) FROM shenq WHERE NAME<>'admin'  ");
		sql = getStringBuffer(shenq, sql, args);
		return super.getCount(sql.toString(), args.toArray());
	}
	
	public Integer getCount(Shenq shenq) {
		List args = new ArrayList();
		StringBuffer sql = new StringBuffer();
		sql.append(" SELECT COUNT(0) FROM shenq WHERE 1=1 ");
		sql = getStringBuffer(shenq, sql, args);
		return super.getCount(sql.toString(), args.toArray());
	}

	/**
	 * 构造查询条件
	 * 
	 * @param shenq
	 * @param buf3
	 * @param args
	 * @return
	 * @author Alex 10/28/2011 create
	 */
	private StringBuffer getStringBuffer(Shenq shenq, StringBuffer buf,
			List args) {
		/*
		 * 需要加入查询条件时封装
		 */

		if (StringUtils.isNotBlank(shenq.getName())) {
			buf.append(" and name = ? ");
			args.add(shenq.getName().trim());
		}
		
		if (StringUtils.isNotBlank(shenq.getShenpi())) {
			buf.append(" and shenpi = ? ");
			args.add(shenq.getShenpi().trim());
		}
		
		if (StringUtils.isNotBlank(shenq.getXscsp())) {
			buf.append(" and xscsp = ? ");
			args.add(shenq.getXscsp().trim());
		}
		
		if(shenq.getUid()!=null&&shenq.getUid()>0){
			buf.append(" and uid = ? ");
			args.add(shenq.getUid());
		}
		
		return buf;
	}
}
