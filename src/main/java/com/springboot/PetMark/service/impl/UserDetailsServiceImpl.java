package com.springboot.PetMark.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.springboot.PetMark.dao.AccountDAO;
import com.springboot.PetMark.entities.Account;

@Service
public class UserDetailsServiceImpl implements UserDetailsService {

	@Autowired
	AccountDAO accountDAO;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		// TODO Auto-generated method stub nonManyMany
		System.out.println("START FIND: " + username);
		Account account = accountDAO.findById(username);
		System.out.println("END FIND");
		
		if (account == null) {
            System.out.println("User not found! " + username);
            throw new UsernameNotFoundException("User " + username + " was not found in the database");
        }
		
		
		
		String roleID = account.getRole().getId(); //fix later
		System.out.println("Found User: " + account.getUsername() + " -- " + roleID);
		
		List<GrantedAuthority> grantList = new ArrayList<GrantedAuthority>();
		if(roleID != null) {
			 GrantedAuthority authority = new SimpleGrantedAuthority(roleID);
			 grantList.add(authority);
		}
		
		UserDetails userDetails = (UserDetails) new org.springframework.security.core.userdetails.User(account.getUsername(), account.getPassword(), grantList);
		
		
		return userDetails;
	}

}
