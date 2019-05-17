package com.openshop.controller;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.openshop.model.AddProducts;
import com.openshop.model.ProductBookings;
import com.openshop.service.VendorService;
import com.openshop.vo.ProductVO;

@Controller
public class VendorController {
	@Autowired
	private VendorService service;
	
	String person;
	@RequestMapping(value = "/login1")
	public ModelAndView loginProcess(String username, String password,String vendorid) {
		System.out.println("hello moto");
		String reg = service.log(username, password,vendorid);
		if (username == null && password == null) {
			return new ModelAndView("login", "id", person);
		}  else if (reg.equals("true")) {
			person = username;
			System.out.println(person);
			System.out.println("valid");
			return new ModelAndView("vendorhome", "id", person);
		} else {
			return new ModelAndView("login", "msg", reg);
		}
	}
	
	@RequestMapping(value="/vendorhome")
		public String login() {
		
		return "vendorhome";
	}
	
	@RequestMapping(value="/vaddproducts")
	public String vaddproducts() {
		return "vaddproducts";
	}
	@RequestMapping(value="/add")
	public ModelAndView addProducts(@ModelAttribute("addproduct") ProductVO productVO ,@RequestParam("image") MultipartFile image) throws IOException {
		
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
	ModelAndView mes = new ModelAndView("vaddproducts", "command", new AddProducts());
	mes.addObject("msg1", "Successfully Added");
	return mes;
	}
	
	@RequestMapping(value="/vproducts")
	public ModelAndView viewProducts()
	{
		System.out.println(person);
		List<AddProducts> products=service.viewProducts(person);
		return new ModelAndView("vproducts","products",products);
	}
	@RequestMapping(value="/vbookeddetails")
	public ModelAndView vbookedDetails(String productid) {
		List<ProductBookings> list1 =service.vbookedDetails(productid);
		return new ModelAndView("vbookingdetails", "list1", list1);

	}
	
	
	/*@RequestMapping(value="/vbookingdetails")
	public ModelAndView viewBookings() {
		List<ProductBookings> bookings=service.viewBookings();
		return new ModelAndView("vbookingdetails","bookings",bookings);
		
	}*/
	
	
}
	