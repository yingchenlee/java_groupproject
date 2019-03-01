package com.codingdojo.javaproject1.services;

import java.util.Optional;

import org.springframework.stereotype.Service;

import com.codingdojo.javaproject1.models.Message;
import com.codingdojo.javaproject1.repositories.MRepo;

@Service
public class MService {
	private final MRepo mR;
	public MService(MRepo mR) {
		this.mR = mR;
	}
	public Optional<Message> listMs(Long id) {
		return mR.findByReceiverId(id);
	}
	
}
