package com.test.dao;

import java.util.HashMap;
import java.util.Map;

import com.test.dto.CompanyDTO;

public interface CompanyDAO {
	
	abstract public CompanyDTO listThisCompany(String id, String pw);
	
	abstract public int insertTheCompany(HashMap<String, Object> cmap);
	
	abstract public int deleteTheCompany(int companyIdx);
	
}
