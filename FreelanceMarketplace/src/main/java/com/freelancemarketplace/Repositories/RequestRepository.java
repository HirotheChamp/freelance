package com.freelancemarketplace.Repositories;

import java.util.List;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.freelancemarketplace.Models.Request;
@Repository
public interface RequestRepository extends CrudRepository<Request, Long>{
	List<Request> findAll();

}