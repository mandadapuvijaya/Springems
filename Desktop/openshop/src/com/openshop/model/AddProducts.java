package com.openshop.model;


import java.util.Arrays;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="addproducts")
public class AddProducts {
	
	private int id;
	private String logertype;
	private String productname;
	private String ptype;
	private int quantity;
	private byte[] image;
	private String filename;
	private int price;
	private String description;
	
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	public int getId() {
		return this.id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	@Column(name="PRODUCTNAME")
	public String getProductname() {
		return this.productname;
	}
	
	public void setProductname(String productname) {
		this.productname = productname;
	}
	
	@Column(name="PTYPE")
	public String getPtype() {
		return ptype;
	}
	public void setPtype(String ptype) {
		this.ptype = ptype;
	}
	
	@Column(name="QUANTITY")  
	public int getQuantity() {
		return this.quantity;
	}
	
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
	@Column(name="IMAGE")
	public byte[] getImage() {
		return this.image;
	}
	public void setImage(byte[] image) {
		this.image = image;
	}
	
	@Column(name="PRICE")
	public int getPrice() {
		return this.price;
	}
	
	
	public void setPrice(int price) {
		this.price = price;
	}
	@Column(name="FILENAME")
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	@Column(name="LOGERTYPE")
	public String getLogertype() {
		return logertype;
	}
	public void setLogertype(String logertype) {
		this.logertype = logertype;
	}
	@Column(name="DESCRIPTION")
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	@Override
	public String toString() {
		return "AddProducts [id=" + id + ", logertype=" + logertype + ", productname=" + productname + ", ptype="
				+ ptype + ", quantity=" + quantity + ", image=" + Arrays.toString(image) + ", filename=" + filename
				+ ", price=" + price + ", description=" + description + "]";
	}
	
	

	
	
	
	
}
