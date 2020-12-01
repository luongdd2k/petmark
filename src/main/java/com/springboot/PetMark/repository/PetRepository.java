package com.springboot.PetMark.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import com.springboot.PetMark.entities.Accessories;
import com.springboot.PetMark.entities.Pet;
import com.springboot.PetMark.entities.Species;


public interface PetRepository extends JpaRepository<Pet, Integer> {
	

	@Query("SELECT p FROM Pet p where p.status like %?1%")
	List<Pet> showProductByCategoryPageable(String status, Pageable pageable);
	@Transactional
	@Modifying
	@Query("update Pet p set p.status='Ngừng bán' where p.id = ?1")
	void disContinuePet(int id);
	@Query("select p from Pet p where p.description like %?1%")
	List<Pet> showByDes(String des,Pageable pageable);
	
	@Transactional
	@Modifying
	@Query("update Pet p set p.status='Còn hàng' where p.id = ?1")
	void continuePet(int id);
	
	@Query("select distinct(p.status) from Pet p")
	List<String> selecStatus();
	@Query("select p from Pet p where p.petName like %?1% or p.species.name like %?1%")
	List<Pet> search(String search);

	@Query("select p from Pet p where p.price BETWEEN ?1 and ?2")
	List<Pet> findBetweenPrice(float min, float max);
	
	List<Pet> findBySpecies(Species species);
	
	@Query("SELECT count(p.id) FROM Pet p")
	int countContinueProduct();
	@Transactional
	@Modifying
	@Query("SELECT count(p.id) FROM Pet p where p.status like %?1%")
	int countProduct(String status);
//
//	@Query("SELECT count(p.id) FROM Product p where p.isDiscontinued = 1")
//	int countDiscontinueProduct();
}
