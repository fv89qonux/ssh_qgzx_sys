package com.common;

import java.util.LinkedHashMap;
import java.util.Map;

public class DataSource {
	 
	
	
	//用户类型
	public static Map<String,String>  YHLX = new LinkedHashMap<String,String>();
	
	 
	
	//性别
	public static Map<String,String>  XB  = new LinkedHashMap<String,String>();
	
	public static Map<String,String>  BAOYANG  = new LinkedHashMap<String,String>();

	 
	
	
	
	static{
		
		
	 
		
		
		YHLX.put("管理员","管理员");
		YHLX.put("学生","学生");
		YHLX.put("学生处","学生处");
		YHLX.put("用人单位","用人单位");
		
		XB.put("男","男");
		XB.put("女","女");
		
		
		
		 
		
		
		
	}
}
