package com.springboot.PetMark.entities;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "tinhthanhpho")
public class TinhThanhPho implements Serializable {

	private static final long serialVersionUID = 3543237799209493787L;

	@Id
	String matp;
	String name;
	String type;

	public TinhThanhPho() {
		// TODO Auto-generated constructor stub
	}

	public String getMatp() {
		return matp;
	}

	public void setMatp(String matp) {
		this.matp = matp;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	@Override
	public String toString() {
		return "TinhThanhPho [matp=" + matp + ", name=" + name + ", type=" + type + "]";
	}

}
