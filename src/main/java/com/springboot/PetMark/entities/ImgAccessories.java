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
@Table (name = "imgaccessories")
public @Data class ImgAccessories implements Serializable {

	private static final long serialVersionUID = -5708145789430386130L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "accessoriesid")
	private Accessories accessories;
	@Column(name = "imagepath")
	private String imgAvartar;
	private String img1;
	private String img2;
	private String img3;

	public ImgAccessories() {
		// TODO Auto-generated constructor stub
	}

	public ImgAccessories(String imgAvartar, String img1, String img2, String img3, Accessories accessories) {
		this.imgAvartar = imgAvartar;
		this.img1 = img1;
		this.img2 = img2;
		this.img3 = img3;
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
		return "ImgAccessories [id=" + id + ", accessories=" + accessories + ", imgAvartar=" + imgAvartar + ", img1="
				+ img1 + ", img2=" + img2 + ", img3=" + img3 + "]";
	}

}
