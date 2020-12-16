package com.springboot.PetMark.dao.impl;

import java.security.SecureRandom;
import java.security.spec.KeySpec;
import java.util.Base64;
import java.util.List;
import java.util.Optional;

import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.PBEKeySpec;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Repository;

import com.springboot.PetMark.dao.AccountDAO;
import com.springboot.PetMark.entities.Account;
import com.springboot.PetMark.entities.Role;
import com.springboot.PetMark.repository.AccountRepository;
import com.springboot.PetMark.repository.RoleRepository;

@Repository
public class AccountDAOImpl implements AccountDAO{
	
	@Autowired 
	AccountRepository accountRepository;
	@Autowired
	RoleRepository roleRepository;

	@Override
	public List<Account> findAll() {
		// TODO Auto-generated method stub
		return accountRepository.findAll();
	}

	@Override
	public boolean checkLogin(String username, String password) {

		Account accounts = accountRepository.findByUsername(username);

		if ((accounts!=null)) {
			return new BCryptPasswordEncoder().matches(password, accounts.getPassword());
		}
		return false;
		
	}

	@Override
	public boolean isDuplicate(String username) {

		Account accounts = accountRepository.findByUsername(username);
		if ((accounts!=null)) {
			return true;
		}

		return false;
	}
	
	@Override
	public String testReturn() {
		// TODO Auto-generated method stub
		return "khuongtmph08470 __ Test";
	}

	@Override
	public boolean addAccount(String username, String password, String fullName, Boolean gender, String email, String phone, String address) {

		if(!checkNotNull(username, password, fullName, gender, email, phone, address)) {
			return false;
		}
		
		username = username.trim();
		password = password.trim();
		fullName = fullName.trim();
		email = email.trim();
		phone = phone.trim();
		
		if(!validate(username, password, fullName, gender, email, phone, address)) {
			return false;
		}
		
		try {
			password = encryteBCryptPassword(password);
			
			Role role = roleRepository.findByName("member");
			Boolean isDeactivate = false;
			String imgPath;
			if(gender) {
				imgPath = "Image/user/woman01.svg";		
			} else {
				imgPath = "Image/user/man01.svg";
			}

			Account account = new Account(username, password, fullName, gender, email, phone, role, isDeactivate, "Image/user/simpleUser03.svg", address);
			accountRepository.save(account);

			System.out.println("Saving account");
			return true;
			
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
			return false;
		}
		
		
	}
	
	private boolean checkNotNull(String username, String password, String fullName, Boolean gender, String email, String phone, String address) {
		// TODO Auto-generated method stub
		if(username == null || password == null || fullName == null || email == null || phone == null || address == null ) {
			System.out.println("validate: found null");
			return false;
		}
		return true;
	}
	
	private boolean validate(String username, String password, String fullName, Boolean gender, String email, String phone, String address) {
		// TODO Auto-generated method stub
		if(	username.length() == 0 || username.length() > 25  ||
			password.length() < 8  || password.length() > 100 || 
			fullName.length() == 0 || fullName.length() > 50  ||
			email.length() < 5     || email.length() > 50     || 
			phone.length() < 8     || phone.length() > 13     ||
			address.length() < 8 || address.length() > 255) 	  {
			
			System.out.println("validate: invalid length");
			return false;
		}
		if(username.matches(".*[^A-Za-z0-9].*")) {
			System.out.println("validate: invalid username");
			return false;
		}
		if(isDuplicate(username)) {
			System.out.println("validate: duplicate username");
			return false;
		}
		
		if(!email.matches("\\w+@+\\w+.+\\w")) {
			System.out.println("validate: invalid email");
			return false;
		}
		if(!phone.matches("\\d+")) {
			System.out.println("validate: invalid phone");
			return false;
		}
		
		return true;
	}

	@Override
	public String getRole(String username) {

		Account accounts = accountRepository.findByUsername(username);
		if ((accounts!=null)) {
			return accounts.getRole().getId();
		}

		return null;
	}
	
	@Override
	public Account findById(String username) {
		
		return accountRepository.findByUsername(username);
	}
	
	@Override
	public Optional<Account> findById2(String username) {
		// TODO Auto-generated method stub
		return Optional.of(accountRepository.findByUsername(username));
	}
	
//	@Override
//	public Optional<Account> findById2(String username) {
//		// TODO Auto-generated method stub
//		return null;
//	}
	
	public void delete() {
		// TODO Auto-generated method stub
	}
	
	public boolean existsById(String id) {
		// TODO Auto-generated method stub
		return accountRepository.existsById(id);
	}
	

	static Base64.Encoder enc = Base64.getEncoder();
 	static Base64.Decoder dec = Base64.getDecoder();
 	
 	public String getRandomSalt() {
		byte[] salt = new byte[64];
		SecureRandom random = new SecureRandom();
		random.nextBytes(salt);
		return enc.encodeToString(salt);
	}
 	
 	public static String hash(String password, String salt64) {
		byte[] salt = dec.decode(salt64);
		KeySpec spec = new PBEKeySpec(password.toCharArray(), salt, 65536, 128);
		try {
			SecretKeyFactory f = SecretKeyFactory.getInstance("PBKDF2WithHmacSHA1");
			byte[] hash = f.generateSecret(spec).getEncoded();
			return enc.encodeToString(hash);
				
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
 	public static String encryteBCryptPassword(String password) {
        BCryptPasswordEncoder encoder = new BCryptPasswordEncoder(10);
        return encoder.encode(password);
    }

	@Override
	public void saveAccount(Account account) {
		// TODO Auto-generated method stub
		accountRepository.save(account);
	}

	@Override
	public void changPw(Account account) {
		// TODO Auto-generated method stub
		accountRepository.save(account);
	}

	@Override
	public int countAllAccount() {
		// TODO Auto-generated method stub
		return accountRepository.countAllAccount();
	}

	@Override
	public int countAllMember() {
		// TODO Auto-generated method stub
		return accountRepository.countAllMember();
	}

	@Override
	public int countAllAdminStaff() {
		// TODO Auto-generated method stub
		return accountRepository.countAllAdminStaff();
	}

	@Override
	public int countAllDeactive() {
		// TODO Auto-generated method stub
		return accountRepository.countAllDeactive();
	}

	@Override
	public List<Account> showAllAccount(String roleId1, String roleId2, String roleId3, boolean isDeactive, Pageable pageable) {
		// TODO Auto-generated method stub
		return accountRepository.showAllAccount(roleId1, isDeactive, roleId2, isDeactive, roleId3, isDeactive, pageable);
	}

	@Override
	public void save(Account account) {
		// TODO Auto-generated method stub
		accountRepository.save(account);
	}

	@Override
	public void permanentlyDeleted(String id) {
		// TODO Auto-generated method stub
		accountRepository.deleteById(id);
	}

	@Override
	public List<Account> searchAccount(String username, String fullname, String gender, String email, String phone,
			String roleId, Pageable pageable) {
		// TODO Auto-generated method stub
		boolean find_gender1 = true, find_gender2 = true;
		if(gender.equals("-1")) {
			find_gender1 = true;
			find_gender2 = false;
		} else if(gender.equals("0")) {
			find_gender1 = false;
			find_gender2 = false;
		} else if(gender.equals("1")) {
			find_gender1 = true;
			find_gender2 = true;
		}
		String find_role1="", find_role2="", find_role3="";
		if(roleId.equals("-1")) {
			find_role1 = "ROLE_ADMIN";
			find_role2 = "ROLE_STAFF";
			find_role3 = "ROLE_MEMBER";
		} else if(roleId.equals("ROLE_ADMIN")) {
			find_role1 = "ROLE_ADMIN";
			find_role2 = "ROLE_ADMIN";
			find_role3 = "ROLE_ADMIN";
		} else if(roleId.equals("ROLE_STAFF")) {
			find_role1 = "ROLE_STAFF";
			find_role2 = "ROLE_STAFF";
			find_role3 = "ROLE_STAFF";
		} else if(roleId.equals("ROLE_MEMBER")) {
			find_role1 = "ROLE_MEMBER";
			find_role2 = "ROLE_MEMBER";
			find_role3 = "ROLE_MEMBER";
		}
		return accountRepository.searchAccount(username, fullname, find_gender1, find_gender2, email, phone, find_role1, find_role2, find_role3, pageable);
	}

	
	
}
