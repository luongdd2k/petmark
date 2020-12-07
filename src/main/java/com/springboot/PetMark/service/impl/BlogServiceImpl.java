package com.springboot.PetMark.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springboot.PetMark.dao.BlogDAO;
import com.springboot.PetMark.entities.Account;
import com.springboot.PetMark.entities.Blog;
import com.springboot.PetMark.service.BlogService;

@Service
public class BlogServiceImpl implements BlogService {
	@Autowired
	BlogDAO dao;

	@Override
	public List<Blog> findAll() {
		// TODO Auto-generated method stub
		return dao.findAll();
	}

	@Override
	public void changeStt(int stt, int id) {
		// TODO Auto-generated method stub
		dao.changeStt(stt, id);
	}

	@Override
	public List<Blog> findByUser(Account account) {
		// TODO Auto-generated method stub
		return dao.findByUser(account);
	}

	@Override
	public Blog findById(int id) {
		// TODO Auto-generated method stub
		return dao.findById(id);
	}

	@Override
	public void saveBlog(Blog blog) {
		// TODO Auto-generated method stub
		dao.saveBlog(blog);
	}

	@Override
	public List<Blog> findByStatus(int status) {
		// TODO Auto-generated method stub
		return dao.findByStatus(status);
	}

}
