package com.test.dto;

public class PetDTO {

/*
cid int(10) not null, 
pet_id int(10) not null, 
pet_name varchar(12) not null, 
pet_type varchar(15) not null, 
pet_gender varchar(3) not null, 
pet_age int(4) not null, 
pet_history text, 
primary key(cid, pet_id),
constraint pet_info_fk foreign key(cid) references personal_info(cid)
 */
	
	private int cid;
	private int pet_id;
	private String pet_name;
	private String pet_type;
	private String pet_gender;
	private int pet_age;
	
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public int getPet_id() {
		return pet_id;
	}
	public void setPet_id(int pet_id) {
		this.pet_id = pet_id;
	}
	public String getPet_name() {
		return pet_name;
	}
	public void setPet_name(String pet_name) {
		this.pet_name = pet_name;
	}
	public String getPet_type() {
		return pet_type;
	}
	public void setPet_type(String pet_type) {
		this.pet_type = pet_type;
	}
	public String getPet_gender() {
		return pet_gender;
	}
	public void setPet_gender(String pet_gender) {
		this.pet_gender = pet_gender;
	}
	public int getPet_age() {
		return pet_age;
	}
	public void setPet_age(int pet_age) {
		this.pet_age = pet_age;
	}
	
}
