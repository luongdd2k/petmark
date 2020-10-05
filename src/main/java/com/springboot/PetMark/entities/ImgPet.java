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

import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@NoArgsConstructor
@AllArgsConstructor(access = AccessLevel.PUBLIC)
public @Data class ImgPet implements Serializable {

	private static final long serialVersionUID = -7919067819942913955L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "petid")
	private Pet pet;
	@Column(name = "imgAvartar")
	private String imgAvartar;
	private String img1;
	private String img2;
	private String img3;

	public ImgPet() {
	}

	public ImgPet(String imgAvartar, String img1, String img2, String img3, Pet pet) {
		this.imgAvartar = imgAvartar;
		this.img1 = img1;
		this.img2 = img2;
		this.img3 = img3;
		this.pet = pet;
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

	public String getImgAvartar() {
		return imgAvartar;
	}

	public void setImgAvartar(String imgAvartar) {
		this.imgAvartar = imgAvartar;
	}

	public String getImg1() {
		return img1;
	}

	public void setImg1(String img1) {
		this.img1 = img1;
	}

	public String getImg2() {
		return img2;
	}

	public void setImg2(String img2) {
		this.img2 = img2;
	}

	public String getImg3() {
		return img3;
	}

	public void setImg3(String img3) {
		this.img3 = img3;
	}

	@Override
	public String toString() {
		return "ImgPet [id=" + id + ", pet=" + pet + ", imgAvartar=" + imgAvartar + ", img1=" + img1 + ", img2=" + img2
				+ ", img3=" + img3 + "]";
	}

}
