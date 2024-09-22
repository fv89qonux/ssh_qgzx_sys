package com.dao;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.commons.lang.StringUtils;

import com.common.HibernateGenericDao;
import com.common.PageBean;
import com.vo.Gangwei;

public class GangweiDAOImpl extends HibernateGenericDao<Gangwei> implements
		GangweiDAO {

	
	public void save(Gangwei gangwei) {
		super.save(gangwei);
	}

	
	public void update(Gangwei gangwei) {
		super.update(gangwei);
	}

	
	public void delete(Gangwei gangwei) {
		super.remove(gangwei);
	}

	public Gangwei getGangwei(Gangwei gangwei) {
		return get(gangwei.getId());
	}

	
	public Gangwei getGangwei(Long id) {
		return get(id);
	}

	
	public List<Gangwei> findPageInfoGangwei(Gangwei gangwei,
			PageBean pageBean) {
		List args = new ArrayList();
		StringBuffer sql = new StringBuffer();
		sql.append(" SELECT * FROM gangwei WHERE 1=1 ");
		sql = getStringBuffer(gangwei, sql, args);
		return getPageInfo(pageBean, sql.toString(), args);
	}

	public List<Gangwei> findPageInfoGangwei1(Gangwei gangwei,
			PageBean pageBean) {
		List args = new ArrayList();
		StringBuffer sql = new StringBuffer();
		sql.append(" SELECT * FROM gangwei WHERE  NAME<>'admin' ");
		sql = getStringBuffer(gangwei, sql, args);
		return getPageInfo(pageBean, sql.toString(), args);
	}
	

	public Integer getCount1(Gangwei gangwei) {
		List args = new ArrayList();
		StringBuffer sql = new StringBuffer();
		sql.append(" SELECT COUNT(0) FROM gangwei WHERE NAME<>'admin'  ");
		sql = getStringBuffer(gangwei, sql, args);
		return super.getCount(sql.toString(), args.toArray());
	}
	
	public Integer getCount(Gangwei gangwei) {
		List args = new ArrayList();
		StringBuffer sql = new StringBuffer();
		sql.append(" SELECT COUNT(0) FROM gangwei WHERE 1=1 ");
		sql = getStringBuffer(gangwei, sql, args);
		return super.getCount(sql.toString(), args.toArray());
	}

	/**
	 * 构造查询条件
	 * 
	 * @param gangwei
	 * @param buf3
	 * @param args
	 * @return
	 * @author Alex 10/28/2011 create
	 */
	private StringBuffer getStringBuffer(Gangwei gangwei, StringBuffer buf,
			List args) {
		/*
		 * 需要加入查询条件时封装
		 */

		if (StringUtils.isNotBlank(gangwei.getName())) {
			buf.append(" and name = ? ");
			args.add(gangwei.getName().trim());
		}
		
		if (StringUtils.isNotBlank(gangwei.getShenpi())) {
			buf.append(" and shenpi = ? ");
			args.add(gangwei.getShenpi().trim());
		}
		
		return buf;
	}
	

}
