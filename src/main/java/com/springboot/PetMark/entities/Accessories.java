package com.springboot.PetMark.entities;

import java.io.Serializable;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
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
import lombok.NoArgsConstructor;

@Entity
@NoArgsConstructor
@AllArgsConstructor(access = AccessLevel.PUBLIC)
public @Data class Accessories implements Serializable {

	private static final long serialVersionUID = -8319364514495733307L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "categoryid")
	private Category category;
	private String name;
	private float price;
	private int amount;
	@Column(name = "created_at")
	private Date createdAt;
	private String description;
	private String status;
	@OneToMany( mappedBy = "accessories",fetch = FetchType.LAZY)
	private List<SizeAccessories> sizes = new ArrayList<>();

	@OneToMany( mappedBy = "accessories",fetch = FetchType.LAZY)
	private List<ColorAccessories> colors = new ArrayList<>();
	@OneToMany(mappedBy = "accessories", cascade = CascadeType.ALL, fetch = FetchType.EAGER, orphanRemoval = true)
	private List<ImgAccessories> imgs = new ArrayList<>();
	
	public Accessories() {
		// TODO Auto-generated constructor stub
	}
	
	
	public List<ImgAccessories> getImgs() {
		return imgs;
	}


	public void setImgs(List<ImgAccessories> imgs) {
		this.imgs = imgs;
	}


	public List<SizeAccessories> getSizes() {
		return sizes;
	}


	public void setSizes(List<SizeAccessories> sizes) {
		this.sizes = sizes;
	}


	public List<ColorAccessories> getColors() {
		return colors;
	}


	public void setColors(List<ColorAccessories> colors) {
		this.colors = colors;
	}


	public Accessories(int id, String name, float price, int amount, Category category, Date createdAt,
			String description, String status) {
		this.id = id;
		this.name = name;
		this.price = price;
		this.amount = amount;
		this.category = category;
		this.createdAt = createdAt;
		this.description = description;
		this.status = status;
	}

	public Accessories(String name, float price, int amount, Category category, Date createdAt, String description,
			String status) {
		super();
		this.name = name;
		this.price = price;
		this.amount = amount;
		this.category = category;
		this.createdAt = createdAt;
		this.description = description;
		this.status = status;
	}

	public String getDisplayPrice(int type) {
		DecimalFormat decimalFormat = new DecimalFormat("#");
		if (type == 0) {
			return decimalFormat.format(this.price);
		} else
			return decimalFormat.format(this.price);
	}

	public String getDisplayDeposit() {
		DecimalFormat decimalFormat = new DecimalFormat("#,##0");
		return decimalFormat.format(this.price).replaceAll(",", ".") + " đ";
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

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
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
		return "Accessories [id=" + id + ", category=" + category + ", name=" + name + ", price=" + price + ", amount="
				+ amount + ", createdAt=" + createdAt + ", description=" + description + ", status=" + status + "]";
	}


}
