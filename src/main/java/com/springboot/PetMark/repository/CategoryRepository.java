package com.springboot.PetMark.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import com.springboot.PetMark.entities.Category;


public interface CategoryRepository extends JpaRepository<Category, Integer> {
	List<Category> findByNameContainingOrderByName(String name);
	
	@Query("SELECT s FROM Category s where s.isDiscontinued = 0 order by s.id")
	List<Category> showCategoryManagement();
	
	@Transactional
	@Modifying
	@Query("UPDATE Category s set s.isDiscontinued = 1 where s.id = ?1")
	void setCategoryDiscontinued(int id);
	
	@Transactional
	@Modifying
	@Query("UPDATE Category s set s.isDiscontinued = 0 where s.id = ?1")
	void setCategoryContinued(int id);	
	
	List<Category> findByIsDiscontinued(boolean isDiscontinued, Pageable pageable);
	
	@Query("SELECT s FROM Category s where s.isDiscontinued = ?1")
	List<Category> showCategoryPageable(boolean isDiscontinued, Pageable pageable);
	
	@Query("SELECT count(s.id) FROM Category s where s.isDiscontinued = 0")
	int countContinueCategory();

	@Query("SELECT count(s.id) FROM Category s where s.isDiscontinued = 1")
	int countDiscontinueCategory();
}
