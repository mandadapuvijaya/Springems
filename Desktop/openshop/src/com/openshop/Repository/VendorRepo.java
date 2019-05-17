package com.openshop.Repository;



import org.springframework.data.jpa.repository.JpaRepository;


import com.openshop.model.DbVregistration;

public interface VendorRepo extends JpaRepository<DbVregistration, Integer>{

	DbVregistration findByEmailid(String username);

	
	
}
