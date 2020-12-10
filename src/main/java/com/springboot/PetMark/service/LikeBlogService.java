package com.springboot.PetMark.service;

import com.springboot.PetMark.entities.LikeBlog;

public interface LikeBlogService {
	void addLike(LikeBlog likeBlog);

	int countLike();
}
