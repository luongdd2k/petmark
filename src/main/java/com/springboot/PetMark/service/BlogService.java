package com.springboot.PetMark.service;

import java.util.List;

import com.springboot.PetMark.entities.Account;
import com.springboot.PetMark.entities.Blog;

public interface BlogService {
	List<Blog> findAll();

	void changeStt(int stt, int id);

	List<Blog> findByUser(Account account);
	Blog findById(int id);
	void saveBlog(Blog blog);
	List<Blog> findByStatus(int status);
	int countByStt(int stt);
}
