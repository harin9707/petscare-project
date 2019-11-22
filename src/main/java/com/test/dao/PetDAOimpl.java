package com.test.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.test.dto.PetDTO;

@Repository
public class PetDAOimpl implements PetDAO {
	
	@Autowired // root-context.xml 참고
	private SqlSessionTemplate sqlSession;

	@Override
	public List<PetDTO> listItsPets(int customer_Index) {
		// TODO Auto-generated method stub
		return this.sqlSession.selectList("listItsPets", customer_Index);
	}
	
	@Override
	public int insertThePet(HashMap<String, Object> pmap) {
		// TODO Auto-generated method stub
//		int customer_Index = this.sqlSession.selectOne("listPetIndex", pmap);
//		pmap.put("customer_Index", customer_Index);
		return this.sqlSession.insert("insertThePet", pmap);
	}

	@Override
	public int deleteThePet(int pet_Index) {
		// TODO Auto-generated method stub
		
		return this.sqlSession.delete("deleteThePet", pet_Index);
	}
	
}