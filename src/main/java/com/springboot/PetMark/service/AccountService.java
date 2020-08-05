package com.springboot.PetMark.service;

import java.util.List;

import org.springframework.data.domain.Pageable;

import com.springboot.PetMark.entities.Account;

public interface AccountService {
	
	List<Account> findAll();
	
	boolean checkLogin(String username, String password);
	
	boolean isDuplicate(String username);
	
	String getRole(String username);
	
	boolean addAccount(String username, String password, String fullName, Boolean gender, String email, String phone, String address);
	
	Account findById(String username);
	
	void saveAccount(Account account);
	
	int countAllAccount();
	
	int countAllMember();
	
	int countAllAdminStaff();
	
	int countAllDeactive();
	
	List<Account> showAllAccount(String roleId1, String roleId2, String roleId3, boolean isDeactive, Pageable pageable);
	
	void save(Account account);
	
	void permanentlyDeleted(String id);
	
	List<Account> searchAccount(String username, String fullname, String gender, String email, String phone, String roleId, Pageable pageable);
}
