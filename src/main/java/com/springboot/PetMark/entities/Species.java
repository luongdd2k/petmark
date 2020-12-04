package com.springboot.PetMark.entities;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
public @Data class Species implements Serializable {
	private static final long serialVersionUID = 6697380136387581470L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	
	private String name;
	
	private String information;

//	@Column(name="imagepath")
//	private String imagePath;
	
	@Column(name="isdiscontinued")
	private Boolean isDiscontinued;
	public Species() {
		// TODO Auto-generated constructor stub
	}
	public Species(int id,String name, String information, Boolean isDiscontinued) {
		this.id = id;
		this.name = name;
		this.information = information;
//		this.imagePath = imagePath;
		this.isDiscontinued = isDiscontinued;
	}

	public Species(String name, String information, Boolean isDiscontinued) {
		super();
		this.name = name;
		this.information = information;
//		this.imagePath = imagePath;
		this.isDiscontinued = isDiscontinued;
	}
	
	public String getDisplayStatus() {
		String stt = "Còn kinh doanh";
		if(this.isDiscontinued==true) {
			stt = "Ngừng kinh doanh";
		}
		return stt;
	}
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getInformation() {
		return information;
	}
	public void setInformation(String information) {
		this.information = information;
	}
	public Boolean getIsDiscontinued() {
		return isDiscontinued;
	}
	public void setIsDiscontinued(Boolean isDiscontinued) {
		this.isDiscontinued = isDiscontinued;
	}
	@Override
	public String toString() {
		return "Species [id=" + id + ", name=" + name + ", information=" + information + ", isDiscontinued="
				+ isDiscontinued + "]";
	}

	
	
}