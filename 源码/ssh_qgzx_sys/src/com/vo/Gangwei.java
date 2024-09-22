package com.vo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name = "gangwei")
public class Gangwei {

	/** serialVersionUID */
	protected static final long serialVersionUID = -1L;

	public Gangwei() {

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

	

	
	
	

}
