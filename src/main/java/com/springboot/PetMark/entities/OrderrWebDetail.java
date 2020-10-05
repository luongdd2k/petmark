package com.springboot.PetMark.entities;

import java.io.Serializable;
import java.text.DecimalFormat;
import java.util.Date;

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
@Table(name = "orderrwebdetail")
public @Data class OrderrWebDetail implements Serializable {

	private static final long serialVersionUID = -4166241148146902538L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "accessoriesid")
	private Accessories accessories;
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "orderrwebid")
	private OrderrWeb orderrWeb;
	private int amount;
	@Column(name = "created_at")
	private Date createdAt;
	@Column(name = "total_amount")
	private float totalAmount;

	public OrderrWebDetail() {
		// TODO Auto-generated constructor stub
	}

	public OrderrWebDetail(Accessories accessories, OrderrWeb orderrWeb, int amount,Date date, float totalAmount) {
		// TODO Auto-generated constructor stub
		this.accessories = accessories;
		this.orderrWeb = orderrWeb;
		this.amount = amount;
		this.createdAt=date;
		this.totalAmount = totalAmount;
	}

	public OrderrWebDetail(int id, Accessories accessories, OrderrWeb orderrWeb, int amount, Date date, float totalAmount) {
		// TODO Auto-generated constructor stub
		this.id = id;
		this.accessories = accessories;
		this.orderrWeb = orderrWeb;
		this.amount = amount;
		this.createdAt=date;
		this.totalAmount = totalAmount;
	}
	public String getDisplayDeposit() {
		DecimalFormat decimalFormat = new DecimalFormat("#,##0");
		return decimalFormat.format(this.totalAmount).replaceAll(",", ".") + " ₫";
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

	public OrderrWeb getOrderrWeb() {
		return orderrWeb;
	}

	public void setOrderrWeb(OrderrWeb orderrWeb) {
		this.orderrWeb = orderrWeb;
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
		return "OrderrWebDetail [id=" + id + ", accessories=" + accessories + ", orderrWeb=" + orderrWeb + ", amount="
				+ amount + ", createdAt=" + createdAt + ", totalAmount=" + totalAmount + "]";
	}

}
