package com.openshop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.openshop.Repository.BookingsRepo;
import com.openshop.Repository.ProductsRepo;
import com.openshop.Repository.VendorRepo;
import com.openshop.model.AddProducts;
import com.openshop.model.DbVregistration;
import com.openshop.model.ProductBookings;

@Service
	public class VendorService{
		@Autowired 
		private VendorRepo vrepo;
		@Autowired
		private ProductsRepo aprepo;
		@Autowired
		private BookingsRepo brepo;
		
		String person;
		public String log(String username, String password, String vendorid) {
			DbVregistration details = vrepo.findByEmailid(username);
				if(details!=null) {
					if(details.getPassword().equals(password) && details.getVendorid().equals(vendorid)) {
						person="username";
						return "true";
					}
					else {
						return "Wrong Password";
					}
				}else {
					return "Enter valid Details";
				}
			
		}


		public void saves(AddProducts addProducts) {
			aprepo.save(addProducts);
			
		}


		public List<AddProducts> viewProducts(String person) {
		return aprepo.findAllByLogertype(person);
		}



		public List<ProductBookings> vbookedDetails(String productid) {
			return brepo.findByproductId(productid);
		}


		

		
		
}
