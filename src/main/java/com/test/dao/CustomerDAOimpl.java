package com.test.dao;

import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.test.dto.CustomerDTO;

@Repository
public class CustomerDAOimpl implements CustomerDAO {
	// @Repository // DAO 클래스에 필수적인 어노테이션, 그래야 인식 가능!
	
	@Autowired // root-context.xml 참고
	private SqlSessionTemplate sqlSession;
	
	@Override
	public CustomerDTO listThisCustomer(String id, String pw) {
		// TODO Auto-generated method stub
		Map<String, String> customer = new HashMap<String, String>();
		customer.put("id", id);
		customer.put("pw", pw);
		return this.sqlSession.selectOne("listThisCustomer", customer);
	}

	@Override
	public int insertTheCustomer(HashMap<String, Object> cmap) {
		// TODO Auto-generated method stub
		// System.out.println("!!!!" + cmap.get("userId"));
		// System.out.println("!!!!" + cmap.get("cname"));
		
		return this.sqlSession.insert("insertTheCustomer", cmap);
	}

	@Override
	public int deleteTheCustomer(int customerIdx) {
		// TODO Auto-generated method stub
		System.out.println("!!!!" + customerIdx);
		
		return this.sqlSession.delete("deleteTheCustomer", customerIdx);
	}
	
}
