package com.springboot.PetMark.repository;

import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.springboot.PetMark.entities.Account;

@Repository
public interface AccountRepository extends JpaRepository<Account, String> {

	Account findByUsername(String username);
	
	@Query("SELECT COUNT(p.username) FROM Account p WHERE p.isDeactivate = 0")
	int countAllAccount();
	
	@Query("SELECT COUNT(p.username) FROM Account p WHERE p.role.id = 'ROLE_MEMBER' AND p.isDeactivate = 0")
	int countAllMember();
	
	@Query("SELECT COUNT(p.username) FROM Account p WHERE p.role.id = 'ROLE_ADMIN' AND p.isDeactivate = 0 OR p.role.id = 'ROLE_STAFF' and p.isDeactivate = 0")
	int countAllAdminStaff();
	
	@Query("SELECT COUNT(p.username) FROM Account p WHERE p.isDeactivate = 1")
	int countAllDeactive();
	
	@Query("SELECT a FROM Account a WHERE a.role.id LIKE %?1% AND a.isDeactivate = ?2 OR a.role.id LIKE %?3% AND a.isDeactivate = ?4 OR a.role.id LIKE %?5% AND a.isDeactivate = ?6")
	List<Account> showAllAccount(String roleId1, boolean isDeactive1, String roleId2, boolean isDeactive2, String roleId3, boolean isDeactive3, Pageable pageable);
	
	@Query("SELECT a FROM Account a WHERE a.username LIKE %?1% AND a.fullName LIKE %?2% AND (a.gender LIKE ?3 OR a.gender LIKE ?4) AND a.email LIKE %?5% AND a.phone LIKE %?6% AND (a.role.id LIKE %?7% OR a.role.id LIKE %?8% OR a.role.id LIKE %?9%) AND a.isDeactivate = 0")
	List<Account> searchAccount(String username, String fullname, boolean gender1, boolean gender2, String email, String phone, String roleId1, String roleId2, String roleId3, Pageable pageable);

	@Query("SELECT COUNT(a.username) FROM Account a WHERE a.username LIKE %?1% AND a.fullName LIKE %?2% AND (a.gender LIKE ?3 OR a.gender LIKE ?4) AND a.email LIKE %?5% AND a.phone LIKE %?6% AND (a.role.id LIKE %?7% OR a.role.id LIKE %?8% OR a.role.id LIKE %?9%) AND a.isDeactivate = 0")
	int countSearchAccount(String username, String fullname, boolean gender1, boolean gender2, String email, String phone, String roleId1, String roleId2, String roleId3);
}
