package com.springboot.PetMark.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.springboot.PetMark.entities.LikeBlog;

public interface LikeBlogRepo extends JpaRepository<LikeBlog, Integer> {

}
