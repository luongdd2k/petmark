package com.springboot.PetMark.dao;

import java.util.List;

import com.springboot.PetMark.entities.Account;
import com.springboot.PetMark.entities.Blog;

public interface BlogDAO {
	List<Blog> findAll();

	void changeStt(int stt, int id);

	List<Blog> findByUser(Account account);
	Blog findById(int id);
	void saveBlog(Blog blog);
	List<Blog> findByStatus(int status);
}
