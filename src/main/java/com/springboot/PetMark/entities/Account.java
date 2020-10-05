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

	@Column(name = "fullname")
	private String fullName;

	private Boolean gender;

	private String email;

	private String phone;

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "roleID")
	private Role role;

	@Column(name = "isdeactivate")
	private Boolean isDeactivate;

	@Column(name = "imagepath")
	private String imagePath;

	@Column(name = "address")
	private String address;


	public Account() {
		// TODO Auto-generated constructor stub
	}

	public Account(String username, String password, String fullName, Boolean gender, String email, String phone,
			Role role, Boolean isDeactivate, String imagePath, String address) {
		this.username = username;
		this.password = password;
		this.fullName = fullName;
		this.gender = gender;
		this.email = email;
		this.phone = phone;
		this.role = role;
		this.address = address;
		this.imagePath = imagePath;
		this.isDeactivate = isDeactivate;
	}
	public String getUsername() {
		return username;
	}
	public String getDisplayGender() {
		String gt = "Nam";
		if (this.gender == true) {
			gt = "Nữ";
		}
		return gt;
	}


	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public Boolean getGender() {
		return gender;
	}

	public void setGender(Boolean gender) {
		this.gender = gender;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}

	public Boolean getIsDeactivate() {
		return isDeactivate;
	}

	public void setIsDeactivate(Boolean isDeactivate) {
		this.isDeactivate = isDeactivate;
	}

	public String getImagePath() {
		return imagePath;
	}

	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	@Override
	public String toString() {
		return "Account [username=" + username + ", password=" + password + ", fullName=" + fullName + ", gender="
				+ gender + ", email=" + email + ", phone=" + phone + ", role=" + role + ", isDeactivate=" + isDeactivate
				+ ", imagePath=" + imagePath + ", address=" + address + "]";
	}

}
