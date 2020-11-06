package com.springboot.PetMark.entities;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@NoArgsConstructor
@AllArgsConstructor(access = AccessLevel.PUBLIC)
@Table(name = "coloraccessories")
public @Data class ColorAccessories implements Serializable {

	private static final long serialVersionUID = 5669760855636176469L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "accessoriesid")
	private Accessories accessories;
	@Column(name = "coloraccessories")
	private String colorAccessories;

	public ColorAccessories() {
		// TODO Auto-generated constructor stub
	}

	public ColorAccessories(String colorAccessories, Accessories accessories) {
		this.colorAccessories = colorAccessories;
		this.accessories = accessories;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Accessories getAccessories() {
		return accessories;
	}

	public void setAccessories(Accessories accessories) {
		this.accessories = accessories;
	}

	public String getColorAccessories() {
		return colorAccessories;
	}

	public void setColorAccessories(String colorAccessories) {
		this.colorAccessories = colorAccessories;
	}

	@Override
	public String toString() {
		return "ColorAccessories [id=" + id + ", accessories=" + accessories + ", colorAccessories=" + colorAccessories
				+ "]";
	}

}
