package com.openshop.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.openshop.model.CartDetails;

@Repository
public interface CartRepo extends JpaRepository<CartDetails, Integer>{

	

	List<CartDetails> findAllByEmailid(String person);
}


