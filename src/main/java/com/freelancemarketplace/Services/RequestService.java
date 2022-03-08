package com.freelancemarketplace.Services;

import java.util.List;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.freelancemarketplace.Models.Request;
import com.freelancemarketplace.Repositories.RequestRepository;

@Service
public class RequestService {
	@Autowired
	RequestRepository requestRepo;
	

		//create
	
	public Request addRequest(Request request) {
		return requestRepo.save(request);
	}

	
		//retrieve

	public List<Request> allRequests() {
		return requestRepo.findAll();
	}
	
	public Request findOneRequest(Long id) {
		Optional<Request> optionalRequest = requestRepo.findById(id);
		if(optionalRequest.isPresent()) {
			return optionalRequest.get();
		} else {
			return null;
		}
	}

		//update

	public Request updateRequest(Request request) {
		return requestRepo.save(request);
	}

		//delete
	
	public void deleteRequest(Long id) {
		requestRepo.deleteById(id);		
	}
}
