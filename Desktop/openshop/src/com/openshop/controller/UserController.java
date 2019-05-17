package com.openshop.controller;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.openshop.model.AddProducts;
import com.openshop.model.CartDetails;
import com.openshop.model.DbRegistration;
import com.openshop.model.ProductBookings;
import com.openshop.service.UserService;

@Controller
public class UserController {
	@Autowired
	UserService service;
	
	
	String person;
	String person1;
@RequestMapping(value="/")
public String login() {
	return "login";
}
@RequestMapping(value="/userhome")
public String userhome() {
	return "userhome";
}

@RequestMapping(value="/register")
public ModelAndView regprocess(@ModelAttribute("register") DbRegistration register) {
	service.save(register);
	ModelAndView mav = new ModelAndView("registration", "command", new DbRegistration());
	mav.addObject("msg1", "Successfully Registered");
	return mav;
}
@RequestMapping(value="/login")
public ModelAndView login(String username,String Password) {
	 String s=service.validate(username,Password);
	
	 if (username == null && Password == null) {
			return new ModelAndView("login", "id", person);
		} else if (username.equals("admin") && Password.equals("admin")) {
			person1 = username;
			return new ModelAndView("adminhome");

		} else if (s.equals("true")  ) {
			person = username;
			System.out.println(person);
			System.out.println("valid");
			return new ModelAndView("userhome", "id", person);
			
		} 
		else {
			return new ModelAndView("login", "msg", s);
		}
}
@RequestMapping(value="/search")
public ModelAndView search(String type)
{
	List<AddProducts> list=service.search(type);
	System.out.println(list);
	int size = list.size();
	String msg = "";
	if (size == 0)
		msg = "Sorry no records Found!";
	return new ModelAndView("userhome", "list", list).addObject("msg", msg);
	
}
@RequestMapping(value="/bookings")
public ModelAndView bookings(@ModelAttribute("product") ProductBookings product,HttpServletRequest req) {
	int price=service.getPrice(req);
	String id = req.getParameter("id");
	String name=req.getParameter("name");
	service.bookings(product,price,id,name);
	service.sentMail(product);
	
	ModelAndView mav = new ModelAndView("payment");
	/*mav.addObject("msg", "Product Successfully Booked");*/
	return mav;
}
@RequestMapping(value="/cart")
public ModelAndView cart(@ModelAttribute("details") CartDetails details) {
	service.addtocart(details);	
	ModelAndView mav = new ModelAndView("userhome");
	mav.addObject("msg", "Added to cart");
	return mav;
}
@RequestMapping(value="/cartdetails")
public ModelAndView myCart() {
	List<CartDetails> list= service.getMyCart();
	System.out.println(list);
	return new ModelAndView("cartdetails", "list", list);

}


@RequestMapping(value="/delete")
public ModelAndView delete(int id)
{
	service.delete(id);
	List<CartDetails> list= service.getMyCart();
	ModelAndView mav = new ModelAndView("cartdetails");
	mav.addObject("list",list);
	mav.addObject("msg", "Successfully Deleted");
	return mav;
}

@RequestMapping(value="/myorders")
public ModelAndView details()
{
	List<ProductBookings>list =service.bookingDetails();
	System.out.println(list);
	return new ModelAndView("myorders", "list", list);	
}

@RequestMapping(value="/productsdetail")
public ModelAndView productsDetail(int id) {
	List<AddProducts> products=service.products(id);
	return new ModelAndView("cartdetails", "products", products);	
}
	@RequestMapping(value="/conformbooking")
	public ModelAndView conformation() {
		ModelAndView mav = new ModelAndView("payment");
		mav.addObject("msg","payment Successfully");
		return mav;
	}
	
}

