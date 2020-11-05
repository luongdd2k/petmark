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
import javax.persistence.Table;

import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Entity
@NoArgsConstructor
@AllArgsConstructor(access = AccessLevel.PUBLIC)
@Table(name = "deposit")
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
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "colorid")
	private ColorPet color;
	@Column(name = "created_at")
	private Date createdAt;
	@Column(name = "total_amount")
	private float totalAmount;
	private boolean status;

	public Deposit() {
		// TODO Auto-generated constructor stub
	}
	
	public String getDisplayStt() {
		String stt = "Đã thanh toán";
		if(this.status == false) {
			stt = "Đã huỷ";
		}
		return stt;
	}
	public Deposit(Pet pet, Account account,ColorPet color, Date date, float totalAmount, boolean status) {
		// TODO Auto-generated constructor stub
		this.pet = pet;
		this.account = account;
		this.color = color;
		this.createdAt = date;
		this.totalAmount = totalAmount;
		this.status = status;
	}

	public Deposit(int id, Pet pet, Account account,ColorPet color, Date date, float totalAmount, boolean status) {
		// TODO Auto-generated constructor stub
		this.id = id;
		this.pet = pet;
		this.account = account;
		this.color = color;
		this.createdAt = date;
		this.totalAmount = totalAmount;
		this.status = status;
	}
	
	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
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

	public ColorPet getColor() {
		return color;
	}

	public void setColor(ColorPet color) {
		this.color = color;
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
		return "Deposit [id=" + id + ", pet=" + pet + ", account=" + account + ", color=" + color + ", createdAt="
				+ createdAt + ", totalAmount=" + totalAmount + ", status=" + status + "]";
	}

	

}
