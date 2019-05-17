package com.openshop.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.openshop.model.CartDetails;
import com.openshop.model.ProductBookings;
@Repository
public interface BookingsRepo extends JpaRepository<ProductBookings, Integer>{

	
	List<ProductBookings> findAllByEmailid(String person);

	List<ProductBookings> findAllByDescription(String description);

	List<ProductBookings> findByproductId(String productid);

	List<ProductBookings> findAllByUser(String person);

}
