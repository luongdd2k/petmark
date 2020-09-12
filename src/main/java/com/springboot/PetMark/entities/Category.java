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
@NoArgsConstructor
@AllArgsConstructor(access = AccessLevel.PUBLIC)
public @Data class Category implements Serializable{
	private static final long serialVersionUID = -7723298960039364640L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	
	private String name;
	
	private String description;
	@Column(name="isdiscontinued")
	private boolean isDiscontinued;
	public Category() {
		// TODO Auto-generated constructor stub
	}
	
	public Category(int id,String name, String des, boolean continued) {
		this.id = id;
		this.name=name;
		this.description=des;
		this.isDiscontinued= continued;
	}
	
	public Category(String name, String des,boolean continued) {
		super();
		this.name=name;
		this.description=des;
		this.isDiscontinued= continued;
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

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public boolean isDiscontinued() {
		return isDiscontinued;
	}

	public void setDiscontinued(boolean isDiscontinued) {
		this.isDiscontinued = isDiscontinued;
	}

	@Override
	public String toString() {
		return "Category [id=" + id + ", name=" + name + ", description=" + description + ", isDiscontinued="
				+ isDiscontinued + "]";
	}

	
	
}
