package com.springboot.PetMark.entities;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


@Entity
@Table(name = "likeblog")
public class LikeBlog implements Serializable {

	private static final long serialVersionUID = -6369685844079150858L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "username")
	private Account account;
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "blog_id")
	private Blog blog;

	public LikeBlog() {
		// TODO Auto-generated constructor stub
	}

	public LikeBlog(int id, Account account, Blog blog) {
		// TODO Auto-generated constructor stub
		this.id = id;
		this.account = account;
		this.blog = blog;
	}
	public LikeBlog(Account account, Blog blog) {
		// TODO Auto-generated constructor stub
		this.account = account;
		this.blog = blog;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Account getAccount() {
		return account;
	}

	public void setAccount(Account account) {
		this.account = account;
	}

	public Blog getBlog() {
		return blog;
	}

	public void setBlog(Blog blog) {
		this.blog = blog;
	}

	@Override
	public String toString() {
		return "LikeBlog [id=" + id + ", account=" + account + ", blog=" + blog + "]";
	}

}
