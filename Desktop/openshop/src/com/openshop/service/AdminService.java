package com.openshop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.openshop.Repository.BookingsRepo;
import com.openshop.Repository.ProductsRepo;
import com.openshop.Repository.UserRepo;
import com.openshop.Repository.VendorRepo;
import com.openshop.model.AddProducts;
import com.openshop.model.DbRegistration;
import com.openshop.model.DbVregistration;
import com.openshop.model.ProductBookings;

@Service
public class AdminService {
	@Autowired
	private VendorRepo vrepo;
	@Autowired
	private UserRepo urepo;
	@Autowired
	private ProductsRepo aprepo;
	@Autowired 
	private BookingsRepo brepo;

	public void save(DbVregistration register) {
		vrepo.save(register);
	}

	public List<DbVregistration> viewVendors() {
		return vrepo.findAll();

	}

	public List<DbRegistration> users() {
		return urepo.findAll();

	}

	public void saves(AddProducts addProducts) {
		aprepo.save(addProducts);

	}

	public List<AddProducts> productDetails() {
		return aprepo.findAll();
	}
	

	public byte[] findImage(final String id) {

		return aprepo.findImageById(id);
	}

	/*public List<ProductBookings> bookings() {
		return brepo.findAll();
	}*/

	public List<ProductBookings> bookedDetails(String productid) {
		return brepo.findByproductId(productid);
	}
}
