package com.springboot.PetMark.entities;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;

import lombok.Data;
@Entity
public @Data class Role implements Serializable {
	
	private static final long serialVersionUID = 4441854711870896163L;
	
	@Id
	private String id;
	
	private String name;
	
}
