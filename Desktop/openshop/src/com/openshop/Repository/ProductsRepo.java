package com.openshop.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.openshop.model.AddProducts;
@Repository
public interface ProductsRepo extends JpaRepository<AddProducts, Integer> {


	List<AddProducts> findAllByPtype(String type);

	
/*
	@Query(nativeQuery=true,value="SELECT IMAGE FROM addproducts WHERE id=:productID")
	byte[] findImageById(@Param("productID") final String productId);
*/
	@Query(nativeQuery=true,value="SELECT IMAGE FROM addproducts WHERE id=:id")
	byte[] findImageById(@Param("id") final String id);


	List<AddProducts> findAllByLogertype(String person);


	AddProducts findOneByProductname(String productname);


	List<AddProducts> findAllById(int id);


	AddProducts findById(int id);
	
	

}
