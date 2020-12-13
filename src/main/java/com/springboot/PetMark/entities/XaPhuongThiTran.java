package com.springboot.PetMark.entities;

import java.io.Serializable;

import javax.persistence.Table;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
@Table(name = "xaphuongthitran")
public class XaPhuongThiTran implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	String xaid;
	String name;
	String type;
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "maqh")
	QuanHuyen qh;

	public XaPhuongThiTran() {
		// TODO Auto-generated constructor stub
	}

	public String getXaid() {
		return xaid;
	}

	public void setXaid(String xaid) {
		this.xaid = xaid;
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

	public QuanHuyen getQh() {
		return qh;
	}

	public void setQh(QuanHuyen qh) {
		this.qh = qh;
	}

	@Override
	public String toString() {
		return "XaPhuongThiTran [xaid=" + xaid + ", name=" + name + ", type=" + type + ", qh=" + qh + "]";
	}

}
