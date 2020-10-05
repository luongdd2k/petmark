package com.springboot.PetMark.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.springboot.PetMark.entities.DeliveryLog;
import com.springboot.PetMark.entities.OrderrWeb;


@Repository
public interface DeliveryLogRepository extends JpaRepository<DeliveryLog, Integer> {

	List<DeliveryLog> findByOrderWeb(OrderrWeb orderWeb);

}
