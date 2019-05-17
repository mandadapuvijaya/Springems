
package com.openshop.controller;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.codec.binary.Base64;
import org.apache.tomcat.util.http.fileupload.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.openshop.model.AddProducts;
import com.openshop.model.DbRegistration;
import com.openshop.model.DbVregistration;
import com.openshop.model.ProductBookings;
import com.openshop.service.AdminService;
import com.openshop.vo.ProductVO;

@Controller
public class AdminController {
	@Autowired
	private AdminService service;

	String person = "admin";

	@RequestMapping(value = "/adminhome")
	public String home() {
		return "adminhome";
	}

	@RequestMapping(value = "/addvendors")
	public String addVendors() {
		return "addvendors";
	}

	@RequestMapping(value = "/addproducts")
	public String addproducts() {
		return "addproducts";
	}

	@RequestMapping(value = "/vendorreg")
	public ModelAndView vendorreg(@ModelAttribute("register") DbVregistration register) {
		service.save(register);
		ModelAndView mav = new ModelAndView("addvendors");
		mav.addObject("msg", "Successfully registered");
		return mav;
	}

	@RequestMapping(value = "/vendordetails")
	public ModelAndView vendors() {
		List<DbVregistration> list = service.viewVendors();
		System.out.println(list);
		return new ModelAndView("vendordetails", "list", list);
	}

	@RequestMapping(value = "/userdetails")
	public ModelAndView users() {
		List<DbRegistration> list = service.users();
		System.out.println(list);
		return new ModelAndView("userdetails", "list", list);
	}

	@RequestMapping(value = "/addproduct")
	public ModelAndView addProducts(@ModelAttribute("addproduct") ProductVO productVO,
			@RequestParam("image") MultipartFile image) throws IOException {              
		person = "admin";
		System.out.println(productVO.getImage().getBytes());

		AddProducts addProducts = new AddProducts();
		addProducts.setProductname(productVO.getProductname());
		addProducts.setPtype(productVO.getPtype());
		addProducts.setQuantity(productVO.getQuantity());
		addProducts.setImage(productVO.getImage().getBytes());
		addProducts.setPrice(productVO.getPrice());
		addProducts.setFilename(image.getOriginalFilename());
		addProducts.setLogertype(person);
		addProducts.setDescription(productVO.getDescription());
		service.saves(addProducts);
		ModelAndView mes = new ModelAndView("addproducts", "command", new AddProducts());
		mes.addObject("msg1", "Successfully Added");
		return mes;
	}
	
	@RequestMapping(value = "/productdetails")
	public ModelAndView productDetails() {
		List<AddProducts> list1 = service.productDetails();
		System.out.println(list1);
		return new ModelAndView("productdetails", "list1", list1);

	}
	@RequestMapping(value="/bookeddetails")
	public ModelAndView bookedDetails(String productid) {
		List<ProductBookings> list1 =service.bookedDetails(productid);
		return new ModelAndView("bookingdetails", "list1", list1);

	}

	/*
	 IMAGE RETERIVAL FROM DATABASE THROUGH ID
	 @RequestMapping(value = "/product/image/{productId}")
	public void findImage(@PathVariable(required = true) final String productId, final HttpServletResponse response)
			throws IOException {
		byte[] image = service.findImage(productId);
		response.setContentType("image/jpeg");
		IOUtils.copy(new ByteArrayInputStream(image), response.getOutputStream());
	}
*/
	
	@RequestMapping(value = "/product/image/{id}")
	public void findImage(@PathVariable(required = true) final String id, final HttpServletResponse response)
			throws IOException {
		byte[] image = service.findImage(id);
		response.setContentType("image/jpeg");
		IOUtils.copy(new ByteArrayInputStream(image), response.getOutputStream());
	}
	
	
	

}
