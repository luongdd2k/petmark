package com.springboot.PetMark.entities;

import java.io.Serializable;
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
import lombok.NoArgsConstructor;

@Entity
public @Data class OrderrAppDetail implements Serializable {

	private static final long serialVersionUID = -2090814497915398501L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "accessoriesid")
	private Accessories accessories;
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "orderrappid")
	private OrderrApp orderrApp;
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "sizeid")
	private SizeAccessories size;
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "colorid")
	private ColorAccessories color;
	private int amount;
	@Column(name = "created_at")
	private Date createdAt;
	@Column(name = "total_amount")
	private float totalAmount;

	public OrderrAppDetail() {
		// TODO Auto-generated constructor stub
	}

	public OrderrAppDetail(Accessories accessories, OrderrApp orderrApp, Date date, int amount, float totalAmount) {
		// TODO Auto-generated constructor stub
		this.accessories = accessories;
		this.orderrApp = orderrApp;
		this.amount = amount;
		this.createdAt = date;
		this.totalAmount = totalAmount;
	}

	public OrderrAppDetail(int id, Accessories accessories, OrderrApp orderrApp, Date date, int amount,
			float totalAmount) {
		// TODO Auto-generated constructor stub
		this.id = id;
		this.accessories = accessories;
		this.orderrApp = orderrApp;
		this.amount = amount;
		this.createdAt = date;
		this.totalAmount = totalAmount;
	}

	public SizeAccessories getSize() {
		return size;
	}

	public void setSize(SizeAccessories size) {
		this.size = size;
	}

	public ColorAccessories getColor() {
		return color;
	}

	public void setColor(ColorAccessories color) {
		this.color = color;
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

	public OrderrApp getOrderrApp() {
		return orderrApp;
	}

	public void setOrderrApp(OrderrApp orderrApp) {
		this.orderrApp = orderrApp;
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

	public float getTotalAmount() {
		return totalAmount;
	}

	public void setTotalAmount(float totalAmount) {
		this.totalAmount = totalAmount;
	}

	@Override
	public String toString() {
		return "OrderrAppDetail [id=" + id + ", accessories=" + accessories + ", orderrApp=" + orderrApp + ", size="
				+ size + ", color=" + color + ", amount=" + amount + ", createdAt=" + createdAt + ", totalAmount="
				+ totalAmount + "]";
	}

	

}
