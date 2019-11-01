package com.test.dto;

public class CustomerDTO {
	
	/*
cid int(10) not null,
id varchar(12) not null, 
pwd varchar(12) not null, 
name varchar(10) not null, 
birthDate date not null, 
phone_number varchar(13) not null, 
city varchar(20) not null,
gu varchar(20) not null,
dong varchar(20) not null,
email varchar(200) not null,
pet_id int(10) not null, 
primary key(cid),
unique key(pwd),
unique key(phone_number)
	 */
	
	private int cid;
	private String id;
	private String pwd;
	private String name;
	private String phone_number;
	private String city;
	private String gu;
	private String dong;
	private String email;
	
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone_number() {
		return phone_number;
	}
	public void setPhone_number(String phone_number) {
		this.phone_number = phone_number;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getGu() {
		return gu;
	}
	public void setGu(String gu) {
		this.gu = gu;
	}
	public String getDong() {
		return dong;
	}
	public void setDong(String dong) {
		this.dong = dong;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
}
