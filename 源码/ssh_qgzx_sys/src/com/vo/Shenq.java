package com.vo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name = "shenq")
public class Shenq {

	/** serialVersionUID */
	protected static final long serialVersionUID = -1L;

	public Shenq() {

	}

	@Id
	@GeneratedValue(generator = "generator")
	@GenericGenerator(name = "generator", strategy = "identity")
	@Column(name = "ID")
	private Long id;
	@Column(name = "NAME")
	private String name;
	@Column(name = "RIQI")
	private String riqi;
	@Column(name = "SHENPI")
	private String shenpi;
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
	
	
	
	
	@Column(name = "XSCSP")
	private String xscsp;
	@Column(name = "DWSP")
	private String dwsp;
	
	@Column(name = "SHENH")
	private String shenh;
	
	

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

	public String getRiqi() {
		return riqi;
	}

	public void setRiqi(String riqi) {
		this.riqi = riqi;
	}

	public String getShenpi() {
		return shenpi;
	}

	public void setShenpi(String shenpi) {
		this.shenpi = shenpi;
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

	public String getXscsp() {
		return xscsp;
	}

	public void setXscsp(String xscsp) {
		this.xscsp = xscsp;
	}

	public String getDwsp() {
		return dwsp;
	}

	public void setDwsp(String dwsp) {
		this.dwsp = dwsp;
	}

	public String getShenh() {
		return shenh;
	}

	public void setShenh(String shenh) {
		this.shenh = shenh;
	}

	 
	
	
	
	
	

}
