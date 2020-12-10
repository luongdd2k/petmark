package com.springboot.PetMark.dao.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.springboot.PetMark.dao.LikeBlogDAO;
import com.springboot.PetMark.entities.LikeBlog;
import com.springboot.PetMark.repository.LikeBlogRepo;

@Repository
public class LikeBlogDAOImpl implements LikeBlogDAO {
	@Autowired
	LikeBlogRepo repo;

	@Override
	public void addLike(LikeBlog likeBlog) {
		// TODO Auto-generated method stub
		repo.save(likeBlog);
	}

	@Override
	public int countLike() {
		// TODO Auto-generated method stub
		return 0;
	}

}
