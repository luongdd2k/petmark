package com.springboot.PetMark.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.springboot.PetMark.entities.Species;

@Repository
public interface SpeciesRepository extends JpaRepository<Species, Integer> {
	
	
	List<Species> findByNameContainingOrderByName(String name);
	
	@Query("SELECT s FROM Species s where s.isDiscontinued = 0 order by s.id")
	List<Species> showSpeciesManagement();
	
	@Transactional
	@Modifying
	@Query("UPDATE Species s set s.isDiscontinued = 1 where s.id = ?1")
	void setSpeciesDiscontinued(int id);
	
	@Transactional
	@Modifying
	@Query("UPDATE Species s set s.isDiscontinued = 0 where s.id = ?1")
	void setSpeciesContinued(int id);
	
//	@Query("SELECT p FROM Product p where p.isDiscontinued = 0 order by p.priceSale desc")
//	List<Product> showContinueProductOrderByPriceSaleDesc(Pageable pageable);
//	
//	@Query("SELECT p FROM Product p where p.isDiscontinued = 0 order by p.priceSale asc")
//	List<Product> showContinueProductOrderByPriceSaleAsc();
	
	//List<Species> findByIsDiscontinued(boolean isDiscontinued, Pageable pageable);	
	
	
	List<Species> findByIsDiscontinued(boolean isDiscontinued, Pageable pageable);
	
	@Query("SELECT s FROM Species s where s.isDiscontinued = ?1")
	List<Species> showSpeciesPageable(boolean isDiscontinued, Pageable pageable);
	
	@Query("SELECT count(s.id) FROM Species s where s.isDiscontinued = 0")
	int countContinueSpecies();

	@Query("SELECT count(s.id) FROM Species s where s.isDiscontinued = 1")
	int countDiscontinueSpecies();
	
}