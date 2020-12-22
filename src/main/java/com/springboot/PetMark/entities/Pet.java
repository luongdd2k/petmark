package com.springboot.PetMark.entities;

import java.io.Serializable;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
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
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "pet")
	private List<ColorPet> color = new ArrayList<>();
	@OneToMany(mappedBy = "pet", cascade = CascadeType.ALL, fetch = FetchType.EAGER, orphanRemoval = true)
	private List<ImgPet> imgs = new ArrayList<>();
	@OneToMany(mappedBy = "pet", cascade = CascadeType.ALL, fetch = FetchType.LAZY, orphanRemoval = true)
	private List<VotePet> vote = new ArrayList<>();
	
	public List<ImgPet> getImgs() {
		return imgs;
	}

	public List<VotePet> getVote() {
		return vote;
	}

	public void setVote(List<VotePet> vote) {
		this.vote = vote;
	}

	public void setImgs(List<ImgPet> imgs) {
		this.imgs = imgs;
	}

	public Pet() {
	}
	public String displayPrice() {
		String dinhDang = "#";
		DecimalFormat format = new DecimalFormat(dinhDang);
		String rs = format.format(this.price);
		return rs;
	}
	public String displayDeposit() {
		String dinhDang = "#";
		DecimalFormat format = new DecimalFormat(dinhDang);
		String rs = format.format(this.deposit);
		return rs;
	}
	public Pet(int id, String name, float gia, float coc, int age, int soLuong, String des, String status,
			Species species, Date date) {
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
	

	public List<ColorPet> getColor() {
		return color;
	}

	public void setColor(List<ColorPet> color) {
		this.color = color;
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
			return decimalFormat.format(this.price).replaceAll(",", ".") + " đ";
	}

	public String getDisplayDeposit() {
		DecimalFormat decimalFormat = new DecimalFormat("#,##0");
		return decimalFormat.format(this.deposit).replaceAll(",", ".") + " đ";
	}

	public String getDate() {
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
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
