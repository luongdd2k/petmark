package com.springboot.PetMark.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import com.springboot.PetMark.entities.Accessories;



public interface AccessoriesRepository extends JpaRepository<Accessories, Integer> {
	

	@Query("SELECT p FROM Accessories p where p.status like %?1%")
	List<Accessories> showProductByCategoryPageable(String status, Pageable pageable);
	@Transactional
	@Modifying
	@Query("update Accessories p set p.status='Ngừng bán' where p.id = ?1")
	void disContinueAccessories(int id);
	
	@Transactional
	@Modifying
	@Query("update Accessories p set p.status='Còn hàng' where p.id = ?1")
	void continueAccessories(int id);
	@Query("select distinct(a.status) from Accessories a")
	List<String> getStatus();
//	@Query("SELECT p FROM Accessories p where p.species.id = ?1 order by newid()")
//	List<Accessories> showIndexProduct(String categoryID);
	
//	List<Accessories> findByNameContainingOrderByName(String name);
	
//	@Query("SELECT p FROM Product p where p.isDiscontinued = 0 order by p.id")
//	List<Product> showProductManagement();
	
//	@Modifying
//	@Query("UPDATE Product p set p.isDiscontinued = 1 where p.id = ?1")
//	void setProductDiscontinued(int id);
//	
//	@Modifying
//	@Query("UPDATE Product p set p.isDiscontinued = 0 where p.id = ?1")
//	void setProductContinued(int id);
	
	
//	List<Accessories> findByIsDiscontinued(boolean isDiscontinued, Pageable pageable);	
	
//	List<Accessories> findByIsDiscontinuedAndCategory(boolean isDiscontinued, Speci category, Pageable pageable);	
	
//	@Query("SELECT pv.product.id FROM ProductView pv where pv.product.category.id like %?1% and pv.product.isDiscontinued = ?2 group by pv.product.id order by count(pv.product.id) desc")
//	List<Integer> showProductByCategoryOrderByView(String categoryID, boolean isDiscontinued, Pageable pageable);
	
//	@Query("SELECT pl.product.id FROM ProductLike pl where pl.product.category.id like %?1% and pl.product.isDiscontinued = ?2 group by pl.product.id order by count(pl.product.id) desc")
//	List<Integer> showProductByCategoryOrderByLike(String categoryID, boolean isDiscontinued, Pageable pageable);
	
//	@Query("SELECT o.product.id FROM OrderItem o where o.product.category.id like %?1% and o.product.isDiscontinued = ?2 group by o.product.id order by sum(o.quantity) desc")
//	List<Integer> showProductByCategoryOrderByPaid(String categoryID, boolean isDiscontinued, Pageable pageable);
	
//	@Query("SELECT p FROM Product p where p.category.id like %?1% and p.isDiscontinued = ?2")
//	List<Accessories> showProductByCategoryPageable(String categoryID, boolean isDiscontinued, Pageable pageable);
	
	@Query("SELECT count(p.id) FROM Accessories p")
	int countContinueProduct();
	@Transactional
	@Modifying
	@Query("SELECT count(p.id) FROM Accessories p where p.status like %?1%")
	int countProduct(String status);
//
//	@Query("SELECT count(p.id) FROM Product p where p.isDiscontinued = 1")
//	int countDiscontinueProduct();
}
