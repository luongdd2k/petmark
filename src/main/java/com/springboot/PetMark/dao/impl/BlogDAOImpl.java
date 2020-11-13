package com.springboot.PetMark.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.springboot.PetMark.dao.BlogDAO;
import com.springboot.PetMark.entities.Account;
import com.springboot.PetMark.entities.Blog;
import com.springboot.PetMark.repository.BlogRepo;

@Repository
public class BlogDAOImpl implements BlogDAO {
	@Autowired
	BlogRepo repo;

	@Override
	public List<Blog> findAll() {
		// TODO Auto-generated method stub
		return repo.findAll();
	}

	@Override
	public void changeStt(boolean stt, int id) {
		// TODO Auto-generated method stub
		repo.changeStt(stt, id);
	}

	@Override
	public List<Blog> findByUser(Account account) {
		// TODO Auto-generated method stub
		return repo.findByAccount(account);
	}

	@Override
	public Blog findById(int id) {
		// TODO Auto-generated method stub
		return repo.findById(id).get();
	}

	@Override
	public void saveBlog(Blog blog) {
		// TODO Auto-generated method stub
		repo.save(blog);
	}

}
