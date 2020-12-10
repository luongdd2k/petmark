package com.springboot.PetMark.dao;

import com.springboot.PetMark.entities.LikeBlog;

public interface LikeBlogDAO {
	void addLike(LikeBlog likeBlog);

	int countLike();
}
