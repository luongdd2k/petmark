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
@NoArgsConstructor
@AllArgsConstructor(access = AccessLevel.PUBLIC)
public @Data class Pet implements Serializable {
	private static final long serialVersionUID = 8187246262008348852L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "speciesId")
	private Species species;

	@Column(name = "petname")
	private String petName;

	private Integer age;
	private Float price;
	private Float deposit;
	private Integer amount;
	@Column(name = "created_at")
	private Date createdAt;
	private String description;
	private String status;
}
