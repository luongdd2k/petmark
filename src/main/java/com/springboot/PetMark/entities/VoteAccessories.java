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

import lombok.Data;

@Entity
@Table(name = "voteaccessories")
public @Data class VoteAccessories implements Serializable {

	private static final long serialVersionUID = 1454194405927354429L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "accessoriesid")
	private Accessories accessories;
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "username")
	private Account account;
	private int star;
	@Column(name = "dateVote")
	private Date dateVote;

	public VoteAccessories() {
		// TODO Auto-generated constructor stub
	}

	public VoteAccessories(Accessories accessories, Account account, int star, Date date) {
		// TODO Auto-generated constructor stub
		this.accessories = accessories;
		this.account = account;
		this.star = star;
		this.dateVote = date;
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
	

	public int getStar() {
		return star;
	}

	public void setStar(int star) {
		this.star = star;
	}

	public Date getDateVote() {
		return dateVote;
	}

	public void setDateVote(Date dateVote) {
		this.dateVote = dateVote;
	}

	@Override
	public String toString() {
		return "VoteAccessories [id=" + id + ", accessories=" + accessories + ", account=" + account + ", star=" + star
				+ ", dateVote=" + dateVote + "]";
	}


}
