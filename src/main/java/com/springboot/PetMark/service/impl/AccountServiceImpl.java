package com.springboot.PetMark.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.springboot.PetMark.dao.AccountDAO;
import com.springboot.PetMark.entities.Account;
import com.springboot.PetMark.service.AccountService;

@Service
public class AccountServiceImpl implements AccountService{
	
	@Autowired
	AccountDAO accountDAO;

	@Override
	public List<Account> findAll() {
		// TODO Auto-generated method stub
		return accountDAO.findAll();
	}

	@Override
	public boolean checkLogin(String username, String password) {
		// TODO Auto-generated method stub
		return accountDAO.checkLogin(username, password);
	}

	@Override
	public boolean isDuplicate(String username) {
		// TODO Auto-generated method stub
		return accountDAO.isDuplicate(username);
	}

	@Override
	public String getRole(String username) {
		// TODO Auto-generated method stub
		return accountDAO.getRole(username);
	}

	@Override
	public boolean addAccount(String username, String password, String fullName, Boolean gender, String email, String phone, String address) {
		// TODO Auto-generated method stub
		return accountDAO.addAccount(username, password, fullName, gender, email, phone, address);
	}

	@Override
	public Account findById(String username) {
		// TODO Auto-generated method stub
		return accountDAO.findById(username);
	}

	@Override
	public void saveAccount(Account account) {
		// TODO Auto-generated method stub
		accountDAO.saveAccount(account);
	}

	@Override
	public int countAllAccount() {
		// TODO Auto-generated method stub
		return accountDAO.countAllAccount();
	}

	@Override
	public int countAllMember() {
		// TODO Auto-generated method stub
		return accountDAO.countAllMember();
	}

	@Override
	public int countAllAdminStaff() {
		// TODO Auto-generated method stub
		return accountDAO.countAllAdminStaff();
	}

	@Override
	public int countAllDeactive() {
		// TODO Auto-generated method stub
		return accountDAO.countAllDeactive();
	}

	@Override
	public List<Account> showAllAccount(String roleId1, String roleId2, String roleId3, boolean isDeactive,
			Pageable pageable) {
		// TODO Auto-generated method stub
		return accountDAO.showAllAccount(roleId1, roleId2, roleId3, isDeactive, pageable);
	}

	@Override
	public void save(Account account) {
		// TODO Auto-generated method stub
		accountDAO.save(account);
	}

	@Override
	public void permanentlyDeleted(String id) {
		// TODO Auto-generated method stub
		accountDAO.permanentlyDeleted(id);
	}

	@Override
	public List<Account> searchAccount(String username, String fullname, String gender, String email, String phone,
			String roleId, Pageable pageable) {
		// TODO Auto-generated method stub
		return accountDAO.searchAccount(username, fullname, gender, email, phone, roleId, pageable);
	}

}
