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
@Table(name = "colorpet")
public @Data class ColorPet implements Serializable {

	private static final long serialVersionUID = -7139422608968237779L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "petid")
	private Pet pet;
	@Column(name = "fullcolor")
	private String fullColor;
	@Column(name = "eyecolor")
	private String eyeColor;

	public ColorPet() {
		// TODO Auto-generated constructor stub
	}

	public ColorPet(Pet pet, String fullColor, String eyeColor) {
		// TODO Auto-generated constructor stub
		this.pet = pet;
		this.eyeColor = eyeColor;
		this.fullColor = fullColor;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Pet getPet() {
		return pet;
	}

	public void setPet(Pet pet) {
		this.pet = pet;
	}

	public String getFullColor() {
		return fullColor;
	}

	public void setFullColor(String fullColor) {
		this.fullColor = fullColor;
	}

	public String getEyeColor() {
		return eyeColor;
	}

	public void setEyeColor(String eyeColor) {
		this.eyeColor = eyeColor;
	}

	@Override
	public String toString() {
		return "ColorPet [id=" + id + ", pet=" + pet + ", fullColor=" + fullColor + ", eyeColor=" + eyeColor + "]";
	}

}
