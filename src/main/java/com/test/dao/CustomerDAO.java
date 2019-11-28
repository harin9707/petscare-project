package com.test.dao;

import java.util.HashMap;

import com.test.dto.CustomerDTO;

public interface CustomerDAO {
	
	abstract public CustomerDTO listThisCustomer(String customer_Id, String customer_Password);
	
	abstract public int insertTheCustomer(HashMap<String, Object> cmap);
	
	abstract public int deleteTheCustomer(int customer_Index) ;

	abstract public int updateTheCustomer(CustomerDTO cust);
	
}
