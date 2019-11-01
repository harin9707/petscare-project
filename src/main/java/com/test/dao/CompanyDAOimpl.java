package com.test.dao;

import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.multipart.MultipartFile;

import com.test.dto.CompanyDTO;

@Repository
public class CompanyDAOimpl implements CompanyDAO {
	// @Repository // DAO 클래스에 필수적인 어노테이션, 그래야 인식 가능!
	
	@Autowired // root-context.xml 참고
	private SqlSessionTemplate sqlSession;
	
	@Override
	public CompanyDTO listThisCompany(String id, String pw) {
		// TODO Auto-generated method stub
		Map<String, String> company = new HashMap<String, String>();
		company.put("id", id);
		company.put("pw", pw);
		return this.sqlSession.selectOne("listThisCompany", company);
	}
	
	@Override
	public int insertTheCompany(HashMap<String, Object> cmap) {
		// TODO Auto-generated method stub
		
		System.out.println("!!!!" + cmap.get("id"));
		System.out.println("!!!!" + cmap.get("pw"));
		
		return this.sqlSession.insert("insertTheCompany", cmap);
	}
	
	@Override
	public int deleteTheCompany(int companyIdx) {
		// TODO Auto-generated method stub
		System.out.println("!!!!" + companyIdx);
		
		return this.sqlSession.delete("deleteTheCompany", companyIdx);
	}
	
}
