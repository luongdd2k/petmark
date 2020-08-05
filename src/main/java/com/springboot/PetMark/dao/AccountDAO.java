package com.springboot.PetMark.dao;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Pageable;

import com.springboot.PetMark.entities.Account;

public interface AccountDAO {

	List<Account> findAll();
	
	boolean checkLogin(String username, String password);
	
	boolean isDuplicate(String username);
	
	String getRole(String username);
	
	boolean addAccount(String username, String password, String fullName, Boolean gender, String email, String phone, String address);
	
	Account findById(String username);
	
	void saveAccount(Account account);
	
	void changPw(Account account);
	
	int countAllAccount();
	
	int countAllMember();
	
	int countAllAdminStaff();
	
	int countAllDeactive();
	
	List<Account> showAllAccount(String roleId1, String roleId2, String roleId3, boolean isDeactive, Pageable pageable);
	
	void save(Account account);
	
	void permanentlyDeleted(String id);
	
	List<Account> searchAccount(String username, String fullname, String gender, String email, String phone, String roleId, Pageable pageable);
	
	String testReturn();
	
	Optional<Account> findById2(String username);
	
	boolean existsById(String id);
}
