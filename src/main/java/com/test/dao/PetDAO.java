package com.test.dao;

import java.util.HashMap;
import java.util.List;

import com.test.dto.PetDTO;

public interface PetDAO {
	
	abstract public List<PetDTO> listItsPets(int customerIdx);
	
	abstract public int insertThePet(HashMap<String, Object> pmap);
	
	abstract public int deleteThePet(int petIdx);
	
}
