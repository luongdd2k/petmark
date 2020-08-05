package com.springboot.PetMark.entities;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@NoArgsConstructor
@AllArgsConstructor(access = AccessLevel.PUBLIC)
public @Data class Account implements Serializable {
	

	private static final long serialVersionUID = 9093032790667422481L;
	
	@Id
	private String username;

	private String password;
	
	@Column(name="fullname")
	private String fullName;
	
	private Boolean gender;
	
	private String email;
	
	private String phone;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name="roleID")
	private Role role;
	
	@Column(name="isdeactivate")
	private Boolean isDeactivate;
	
	@Column(name="imagepath")
	private String imagePath;
	
	@Column(name="address")
	private String address;
//	public Account(String username2, String password2, String fullName2, Boolean gender2, String email2, String phone2,
//			Role role2, Boolean isDeactivate2, String imagePath, String address2) {
//		// TODO Auto-generated constructor stub
//		this.username = username2;
//		this.password = password2;
//		this.fullName = fullName2;
//		this.gender = gender2;
//		this.email = email2;
//		this.phone = phone2;
//		this.role = role2;
//		this.isDeactivate=isDeactivate2;
//		this.address=address2;
//		this.imagePath=imagePath;
//	}
//	public String getPassword() {
//		// TODO Auto-generated method stub
//		return null;
//	}
//	public Object getRole() {
//		// TODO Auto-generated method stub
//		return null;
//	}
	
}
