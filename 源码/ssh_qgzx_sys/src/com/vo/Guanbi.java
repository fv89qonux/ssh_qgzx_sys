package com.vo;	
	
import javax.persistence.Column;	
import javax.persistence.Entity;	
import javax.persistence.GeneratedValue;	
import javax.persistence.Id;	
import javax.persistence.Table;	
import org.hibernate.annotations.GenericGenerator;	
	
@Entity	
@Table(name = "guanbi")	
public class Guanbi {	
	
	/** serialVersionUID */	
	protected static final long serialVersionUID = -1L;	
	
	public Guanbi() {	
	
	}	
	
	@Id	
	@GeneratedValue(generator = "generator")	
	@GenericGenerator(name = "generator", strategy = "identity")	
	@Column(name = "ID")	
	private Long id;	
	@Column(name = "friqi")	
	private String friqi;	
	
	@Column(name = "triqi")	
	private String triqi;	
	
		
		
	
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

	public String getFriqi() {
		return friqi;
	}

	public void setFriqi(String friqi) {
		this.friqi = friqi;
	}

	public String getTriqi() {
		return triqi;
	}

	public void setTriqi(String triqi) {
		this.triqi = triqi;
	}	
 
	
		
		
	
}	
