package com.springboot.PetMark.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.springboot.PetMark.entities.Role;

@Repository
public interface RoleRepository extends JpaRepository<Role, String> {

	Role findByName(String name);
}
