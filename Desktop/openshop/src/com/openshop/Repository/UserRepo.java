package com.openshop.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.openshop.model.DbRegistration;
@Repository
public interface UserRepo extends JpaRepository<DbRegistration, Integer> {

	DbRegistration findByEmailid(String username);
	
}
