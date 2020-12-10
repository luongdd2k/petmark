package com.springboot.PetMark.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.springboot.PetMark.entities.Blog;
import com.springboot.PetMark.entities.LikeBlog;

public interface LikeBlogRepo extends JpaRepository<LikeBlog, Integer> {
}
