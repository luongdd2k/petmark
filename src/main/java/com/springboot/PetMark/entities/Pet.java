package com.springboot.PetMark.entities;

import java.io.Serializable;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

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
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@NoArgsConstructor
@AllArgsConstructor(access = AccessLevel.PUBLIC)
public @Data class Pet implements Serializable {
	private static final long serialVersionUID = 8187246262008348852L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "speciesid")
	private Species species;

	@Column(name = "petname")
	private String petName;

	private Integer age;
	private Float price;
	private Float deposit;
	private Integer amount;
	@Column(name = "created_at")
	private Date createdAt;
	private String description;
	private String status;

	public Pet() {
	}
public Pet(int id, String name, float gia, float coc, int age, int soLuong, String des, String status, Species species,
		Date date) {
	this.id = id;
	this.petName = name;
	this.age = age;
	this.price = gia;
	this.amount = soLuong;
	this.deposit = coc;
	this.description = des;
	this.status = status;
	this.species = species;
	this.createdAt = date;
}

	public Pet(String name, float gia, float coc, int age, int soLuong, String des, String status, Species species,
			Date date) {
		super();
		this.petName = name;
		this.age = age;
		this.price = gia;
		this.amount = soLuong;
		this.deposit = coc;
		this.description = des;
		this.status = status;
		this.species = species;
		this.createdAt = date;
	}

	public String getDisplayPrice(int type) {
		DecimalFormat decimalFormat = new DecimalFormat("#,##0");
		if (type == 0) {
			return decimalFormat.format(this.price).replaceAll(",", ".");
		} else
			return decimalFormat.format(this.price).replaceAll(",", ".") + " ₫";
	}

	public String getDisplayDeposit() {
		DecimalFormat decimalFormat = new DecimalFormat("#,##0");
		return decimalFormat.format(this.deposit).replaceAll(",", ".") + " ₫";
	}
	public String getDate() {
		SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy");
		String dateString = format.format(this.createdAt);
		return dateString;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Species getSpecies() {
		return species;
	}

	public void setSpecies(Species species) {
		this.species = species;
	}

	public String getPetName() {
		return petName;
	}

	public void setPetName(String petName) {
		this.petName = petName;
	}

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public Float getPrice() {
		return price;
	}

	public void setPrice(Float price) {
		this.price = price;
	}

	public Float getDeposit() {
		return deposit;
	}

	public void setDeposit(Float deposit) {
		this.deposit = deposit;
	}

	public Integer getAmount() {
		return amount;
	}

	public void setAmount(Integer amount) {
		this.amount = amount;
	}

	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "Pet [id=" + id + ", species=" + species + ", petName=" + petName + ", age=" + age + ", price=" + price
				+ ", deposit=" + deposit + ", amount=" + amount + ", createdAt=" + createdAt + ", description="
				+ description + ", status=" + status + "]";
	}

}
