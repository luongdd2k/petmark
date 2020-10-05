package com.springboot.PetMark.entities;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import lombok.Data;

public @Data class Deposit implements Serializable {

	private static final long serialVersionUID = -118732719730322853L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "petid")
	private Pet pet;
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "username")
	private Account account;
	@Column(name = "created_at")
	private Date createdAt;
	@Column(name = "total_amount")
	private float totalAmount;

	public Deposit() {
		// TODO Auto-generated constructor stub
	}

	public Deposit(Pet pet, Account account, Date date, float totalAmount) {
		// TODO Auto-generated constructor stub
		this.pet = pet;
		this.account = account;
		this.createdAt = date;
		this.totalAmount = totalAmount;
	}

	public Deposit(int id, Pet pet, Account account, Date date, float totalAmount) {
		// TODO Auto-generated constructor stub
		this.id = id;
		this.pet = pet;
		this.account = account;
		this.createdAt = date;
		this.totalAmount = totalAmount;
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

	public Account getAccount() {
		return account;
	}

	public void setAccount(Account account) {
		this.account = account;
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
		return "Deposit [id=" + id + ", pet=" + pet + ", account=" + account + ", createdAt=" + createdAt
				+ ", totalAmount=" + totalAmount + "]";
	}

}
