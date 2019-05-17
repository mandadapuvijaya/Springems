package com.openshop.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="productbooking")
public class ProductBookings {
	//booking id
	private int id;
	private String productname;
	private int price;
	private int quantity;
	private String ptype;
	private String size;
	private String description;
	private String emailid;
	private String date;
	private String address;
	private String productId;
	private String name;
	private String user;
	
	@Column(name="PRODUCTID")
	public String getProductId() {
		return productId;
	}
	public void setProductId(String productId) {
		this.productId = productId;
	}
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="ID")
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	@Column(name="PRODUCTNAME")
	public String getProductname() {
		return productname;
	}
	public void setProductname(String productname) {
		this.productname = productname;
	}
	@Column(name="PRICE")
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	@Column(name="QUANTITY")
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	@Column(name="PTYPE")
	public String getPtype() {
		return ptype;
	}
	
	public void setPtype(String ptype) {
		this.ptype = ptype;
	}
	@Column(name="EMAILID")
	public String getEmailid() {
		return emailid;
	}
	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}
	@Column(name="SIZE")
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	@Column(name="DESCRIPTION")
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	@Column(name="DATE")
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	
	@Column(name="ADDRESS")
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	@Column(name="NAME")
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@Column(name="USER")
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	@Override
	public String toString() {
		return "ProductBookings [id=" + id + ", productname=" + productname + ", price=" + price + ", quantity="
				+ quantity + ", ptype=" + ptype + ", size=" + size + ", description=" + description + ", emailid="
				+ emailid + ", date=" + date + ", address=" + address + ", productId=" + productId + ", name=" + name
				+ ", user=" + user + "]";
	}
	
	
	
}
