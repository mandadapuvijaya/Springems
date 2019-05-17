package com.openshop.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "vregistration")
public class DbVregistration implements java.io.Serializable {

	private Integer id;
	private String vendorid;
	private String name;
	private String password;
	private String emailid;
	private String number;


	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "id", unique = true, nullable = false)
	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@Column(name = "vendorid", nullable = false, length = 100)
	public String getVendorid() {
		return this.vendorid;
	}

	public void setVendorid(String vendorid) {
		this.vendorid = vendorid;
	}

	@Column(name = "username", nullable = false, length = 65535)
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "password", nullable = false, length = 100)
	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Column(name = "emailid", nullable = false, length = 100)
	public String getEmailid() {
		return this.emailid;
	}

	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}

	@Column(name = "number", nullable = false)
	public String getNumber() {
		return this.number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	@Override
	public String toString() {
		return "DbVregistration [id=" + id + ", vendorid=" + vendorid + ", name=" + name + ", password=" + password
				+ ", emailid=" + emailid + ", number=" + number + "]";
	}

}
