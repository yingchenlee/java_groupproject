package com.codingdojo.javaproject1.repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.codingdojo.javaproject1.models.Message;

@Repository
public interface MRepo extends CrudRepository<Message, Long> {
	List<Message> findAll();
	List<Message> findByReceiverId(Long id);
}
