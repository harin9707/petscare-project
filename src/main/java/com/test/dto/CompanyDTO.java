package com.test.dto;

public class CompanyDTO {

	/*
id varchar(12) not null, 
pwd varchar(12) not null, 
name varchar(10) not null, 
business_number int(4) not null, 
phone_number varchar(13) not null, 
city varchar(20) not null,
gu varchar(20) not null,
dong varchar(20) not null,
email varchar(32) not null,
business_type varchar(20) not null, 
profile text, 
primary key(id), 
unique key(pwd), 
unique key(business_number)
	 */
	
	private String id;
	private String pwd;
	private String name;
	private int business_number;
	private String phone_number;
	private String city;
	private String gu;
	private String dong;
	private String email;
	private String business_type;
	private String profile;
	
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
	public int getBusiness_number() {
		return business_number;
	}
	public void setBusiness_number(int business_number) {
		this.business_number = business_number;
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
	public String getBusiness_type() {
		return business_type;
	}
	public void setBusiness_type(String business_type) {
		this.business_type = business_type;
	}
	public String getProfile() {
		return profile;
	}
	public void setProfile(String profile) {
		this.profile = profile;
	}
	
}
