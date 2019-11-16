package com.test.dao;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.test.dto.PetDTO;
import com.test.dto.ReservationDTO;

@Repository
public class ReservationDAOimpl implements ReservationDAO {
	
	@Autowired // root-context.xml 참고
	private SqlSessionTemplate sqlSession;


	@Override
	public List<ReservationDTO> listItsReservations(int pet_Index) {
		// TODO Auto-generated method stub
		return this.sqlSession.selectList("listItsReservations", pet_Index);
	}

	@Override
	public int insertTheReservation(HashMap<String, Object> rmap, int customer_Index) {
		rmap.put("customer_Index", customer_Index);
		System.out.println(rmap.get("customer_Index"));
		System.out.println(rmap.get("pet_Name"));
		PetDTO petDTO = this.sqlSession.selectOne("listPetIndex", rmap);
		System.out.println(petDTO.getPet_Index());
		SimpleDateFormat date = new SimpleDateFormat("yyyy-MM-dd");
		SimpleDateFormat dateTime = new SimpleDateFormat("HH:mm:ss");
		
		Date reservation_Date = null;
		Date reservation_Time = null;
		
		try {
			reservation_Date = date.parse((rmap.get("reservation_Date")).toString());
			reservation_Time = dateTime.parse((rmap.get("reservation_Time")).toString()+":00");
		} catch (ParseException e) {
			e.printStackTrace();
		}
		
		rmap.put("pet_Index", petDTO.getPet_Index());		
		rmap.put("company_Index", 1);
		rmap.put("reservation_Date", date.format(reservation_Date));
		rmap.put("reservation_Time", dateTime.format(reservation_Time));
		
		return this.sqlSession.insert("insertTheReservation", rmap);
	}
	@Override
	public int deleteTheReservation(int reservation_Index) {
		// TODO Auto-generated method stub
		return this.sqlSession.delete("deleteTheReservation", reservation_Index);
	}

	@Override
	public List<ReservationDTO> listItsCompReservations(int company_Index) {
		// TODO Auto-generated method stub
		return this.sqlSession.selectList("listItsCompReservations", company_Index);
	}

	
}
