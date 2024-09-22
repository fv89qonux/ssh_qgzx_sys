package com.vo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name = "gongzi")
public class Gongzi {

	/** serialVersionUID */
	protected static final long serialVersionUID = -1L;

	public Gongzi() {

	}

	@Id
	@GeneratedValue(generator = "generator")
	@GenericGenerator(name = "generator", strategy = "identity")
	@Column(name = "ID")
	private Long id;
	@Column(name = "NAME")
	private String name;
	@Column(name = "DANWEI")
	private String danwei;
	@Column(name = "BAOCHOU")
	private float baochou=0.0f;
	@Column(name = "UNAME")
	private String uname;
	@Column(name = "UID")
	private Long uid;
	@Column(name = "GID")
	private Long gid;
	@Column(name = "SID")
	private Long sid;
	
	
	@Column(name = "TIANS")
	private Long tians;
	
	@Column(name = "PINGD")
	private String pingd;
	
	@Column(name = "GONGZ")
	private float gongz=0.0f;
	
	
	@Column(name = "BDATE")
	private String bdate;
	
	@Column(name = "EDATE")
	private String edate;
	
	

	/**
	 * @return Returns the Id.
	 */
	public Long getId() {
		return this.id;
	}

	/**
	 * @param id
	 *            Set the id.
	 */
	public void setId(Long id) {
		this.id = id;
	}

	/**
	 * @return Returns the Name.
	 */
	public String getName() {
		return this.name;
	}

	/**
	 * @param name
	 *            Set the name.
	 */
	public void setName(String name) {
		this.name = name;
	}

	

	public String getDanwei() {
		return danwei;
	}

	public void setDanwei(String danwei) {
		this.danwei = danwei;
	}

	public float getBaochou() {
		return baochou;
	}

	public void setBaochou(float baochou) {
		this.baochou = baochou;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public Long getUid() {
		return uid;
	}

	public void setUid(Long uid) {
		this.uid = uid;
	}

	public Long getGid() {
		return gid;
	}

	public void setGid(Long gid) {
		this.gid = gid;
	}

	public String getPingd() {
		return pingd;
	}

	public void setPingd(String pingd) {
		this.pingd = pingd;
	}

	public float getGongz() {
		return gongz;
	}

	public void setGongz(float gongz) {
		this.gongz = gongz;
	}

	public Long getTians() {
		return tians;
	}

	public void setTians(Long tians) {
		this.tians = tians;
	}

	public Long getSid() {
		return sid;
	}

	public void setSid(Long sid) {
		this.sid = sid;
	}

	public String getBdate() {
		return bdate;
	}

	public void setBdate(String bdate) {
		this.bdate = bdate;
	}

	public String getEdate() {
		return edate;
	}

	public void setEdate(String edate) {
		this.edate = edate;
	}
	
	
	
	
	
	

	
	
	
	
	

}
