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
//@Table(name = "carditemaccessories")
@Table(name = "carditem")
public @Data class CardItemAccessories implements Serializable {

	private static final long serialVersionUID = 3705264841579646640L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "accessoriesid")
	private Accessories accessories;
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "username")
	private Account account;
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "sizeid")
	private SizeAccessories size;
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "colorid")
	private ColorAccessories color;
	private int amount;
	@Column(name = "created_at")
	private Date createdAt;

	public CardItemAccessories() {
		// TODO Auto-generated constructor stub
	}

	public CardItemAccessories(Accessories accessories, Account account, int amount, Date date, SizeAccessories size, ColorAccessories color) {
		// TODO Auto-generated constructor stub
		this.accessories = accessories;
		this.account = account;
		this.amount = amount;
		this.createdAt = date;
		this.size = size;
		this.color=color;
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

	public Account getAccount() {
		return account;
	}

	public void setAccount(Account account) {
		this.account = account;
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

	@Override
	public String toString() {
		return "CardItemAccessories [id=" + id + ", accessories=" + accessories + ", account=" + account + ", size="
				+ size + ", color=" + color + ", amount=" + amount + ", createdAt=" + createdAt + "]";
	}

}
