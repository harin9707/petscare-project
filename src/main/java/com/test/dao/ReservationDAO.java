package com.test.dao;

import java.util.HashMap;
import java.util.List;

import com.test.dto.ReservationDTO;

public interface ReservationDAO {
	
	abstract public List<ReservationDTO> listItsReservations(int pet_Index);
	
	abstract public List<ReservationDTO> listItsCompReservations(int company_Index);
	
	abstract public int insertTheReservation(HashMap<String, Object> rmap, int customer_Index);	
	
	abstract public int deleteTheReservation(int index);
	
}
