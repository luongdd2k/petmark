package com.springboot.PetMark.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springboot.PetMark.dao.LikeBlogDAO;
import com.springboot.PetMark.entities.LikeBlog;
import com.springboot.PetMark.service.LikeBlogService;

@Service
public class LikeBlogServiceImpl implements LikeBlogService {
	@Autowired
	LikeBlogDAO dao;

	@Override
	public void addLike(LikeBlog likeBlog) {
		// TODO Auto-generated method stub
		dao.addLike(likeBlog);
	}

	@Override
	public int countLike() {
		// TODO Auto-generated method stub
		return 0;
	}

}
