package com.openshop.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailException;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;

import com.openshop.Repository.BookingsRepo;
import com.openshop.Repository.CartRepo;
import com.openshop.Repository.ProductsRepo;
import com.openshop.Repository.UserRepo;
import com.openshop.Repository.VendorRepo;
import com.openshop.model.AddProducts;
import com.openshop.model.CartDetails;
import com.openshop.model.DbRegistration;
import com.openshop.model.DbVregistration;
import com.openshop.model.ProductBookings;

@Service
public class UserService {
	
	private JavaMailSender sender;
	@Autowired
	public UserService(JavaMailSender sender) {
		this.sender=sender;
	}

	
	@Autowired
	private UserRepo urepo;
	@Autowired 
	private ProductsRepo prepo;
	@Autowired
	private BookingsRepo brepo;
	@Autowired
	private CartRepo crepo;
	
	String person;
	public void save(DbRegistration register) {
		urepo.save(register);	
	}
	
	public String validate(String username, String password) {
		DbRegistration reg=urepo.findByEmailid(username);
		
		if(reg!=null) {
			if (reg.getPassword().equals(password) ) {
				person=username;
				return "true";
			} else {
				return "wrong password!";
			}
		}
		else {
			return "Enter a valid details..";
		}
		
	}

	public List<AddProducts> search(String type) {
		
		return prepo.findAllByPtype(type);
	}

	
	/*public void bookings(ProductBookings products) {
		Date date = new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		String strDate = formatter.format(date);
		products.setDate(strDate);
		brepo.save(products);
	}*/

	public void addtocart(CartDetails details) {
		details.setEmailid(person);
		crepo.save(details);
	}

	public List<CartDetails> getMyCart() {
		
		return crepo.findAllByEmailid(person);
	}

	public void delete(int id ) {
		crepo.deleteById(id);
	}

	public List<ProductBookings> bookingDetails() {
		
		return brepo.findAllByUser(person);
	}

	public int getPrice(HttpServletRequest req) {
		int id= Integer.parseInt(req.getParameter("id"));
		int quantity=Integer.parseInt(req.getParameter("quantity"));
		AddProducts ap=prepo.findById(id);
		int price = 0;
		if(ap != null) {
			int fare=ap.getPrice();
			price = quantity*fare;
		}
		return price;
	}

	public void bookings(ProductBookings product, int price,String id,String name) {
		Date date = new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		String strDate = formatter.format(date);
		product.setDate(strDate);
		product.setPrice(price);
		product.setProductId(id);
		product.setName(name);
		product.setUser(person);
		brepo.save(product);
	}
	@Async
	public void sentMail(ProductBookings product)  throws MailException {
		MimeMessage message = sender.createMimeMessage();
        MimeMessageHelper helper = new MimeMessageHelper(message);

        try {
            helper.setTo(product.getEmailid());
            helper.setFrom("dhatri0896@gmail.com");
            helper.setSubject("OpenShop Bookings");
            helper.setText("Thank you! " +product.getName()+"\n" +
" your order is placed successfully with the mentioned product details \n" 
            		
            		+ "Date: "+product.getDate() +"\n"
            		+ "ProductName: " + product.getProductname()+"\n"
            		+ "Price:" + product.getPrice() +"\n"
            		+ "Description: " + product.getDescription()+ "\n"
            		+ "Size: " + product.getSize()+ "\n"
            		+ "Address: " + product.getAddress());
            		
        } catch (MessagingException e) {
            e.printStackTrace();
            
        }
        sender.send(message);
      
	}

	public List<AddProducts> products(int id) {
			return prepo.findAllById(id);
	}

	
	
	
	

	

}
