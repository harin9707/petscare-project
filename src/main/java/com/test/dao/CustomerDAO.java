package com.test.dao;

import java.util.HashMap;

import com.test.dto.CustomerDTO;

public interface CustomerDAO {
	
	abstract public CustomerDTO listThisCustomer(String id, String pw);
	
	abstract public int insertTheCustomer(HashMap<String, Object> cmap);
	
	abstract public int deleteTheCustomer(int customerIdx) ;
	
}
