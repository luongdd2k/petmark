package com.springboot.PetMark.repository;

import java.util.List;

import javax.persistence.Entity;
import javax.transaction.Transactional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;


import com.springboot.PetMark.entities.Account;
import com.springboot.PetMark.entities.OrderrWeb;

public interface OrderrWebRepository extends JpaRepository<OrderrWeb, Integer> {
    List<OrderrWeb> findByAccount(Account account);
    @Transactional
    @Modifying
    @Query("update OrderrWeb o set o.deliveryStatus = ?1 where o.id = ?2")
    void capnhatStt(String status, int id);
    
    @Query("select o FROM OrderrWeb o where o.deliveryStatus = ?1 and o.account = ?2")
    List<OrderrWeb> findBySttUser(String status, Account account);
    
	@Query("select o FROM OrderrWeb o where o.id = ?1 or o.consignee like %?1% "
										  + "or o.consigneePhone like %?2% "
										  + "or o.deliveryAddress like %?2% "
										  + "or o.paymentStatus like %?2% "
										  + "or o.deliveryStatus like %?2% "
										  + "or o.paymentMethod like %?2% ")
	Page<OrderrWeb> search(@Param("id") int id, @Param("text") String name, Pageable pageable);

	@Query(value = "SELECT o FROM Orderrweb o WHERE o.payment_method LIKE %?3 "
									+ "AND o.payment_status LIKE %?4 "
									+ "AND o.delivery_status LIKE %?5 "
									+ "AND o.id = ?2 "
									+ "AND (o.consignee LIKE %?1% "
									+ "OR o.consignee_phone LIKE %?1% "
									+ "OR o.delivery_address LIKE %?1%)"
									, nativeQuery = true)

	Page<OrderrWeb> searchFilter(@Param("text") String text,
								@Param("id") String id,
								@Param("paymentMethod") String paymentMethod, 
								@Param("paymentStatus") String paymentStatus, 
								@Param("deliveryStatus") String deliveryStatus,
								Pageable pageable);

}
