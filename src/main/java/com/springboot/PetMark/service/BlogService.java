package com.springboot.PetMark.service;

import java.util.List;

import com.springboot.PetMark.entities.Account;
import com.springboot.PetMark.entities.Blog;

public interface BlogService {
	List<Blog> findAll();

	void changeStt(boolean stt, int id);

	List<Blog> findByUser(Account account);
	Blog findById(int id);
	void saveBlog(Blog blog);
}
