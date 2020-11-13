package com.springboot.PetMark.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import com.springboot.PetMark.entities.Account;
import com.springboot.PetMark.entities.Blog;

public interface BlogRepo extends JpaRepository<Blog, Integer> {
	List<Blog> findByAccount(Account account);

	@Transactional
	@Modifying
	@Query("update Blog b set b.status = ?1 where b.id = ?2")
	void changeStt(boolean stt, int id);
}
