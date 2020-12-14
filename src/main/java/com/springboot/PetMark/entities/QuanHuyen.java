package com.springboot.PetMark.entities;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "quanhuyen")
public class QuanHuyen implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -2538754527103034609L;

	@Id
	private String maqh;
	private String name;
	private String type;
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "matp")
	private TinhThanhPho tp;

	public QuanHuyen() {
		// TODO Auto-generated constructor stub
	}

	public String getMaqh() {
		return maqh;
	}

	public void setMaqh(String maqh) {
		this.maqh = maqh;
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

	public TinhThanhPho getTp() {
		return tp;
	}

	public void setTp(TinhThanhPho tp) {
		this.tp = tp;
	}

	@Override
	public String toString() {
		return "QuanHuyen [maqh=" + maqh + ", name=" + name + ", type=" + type + ", tp=" + tp + "]";
	}

}
