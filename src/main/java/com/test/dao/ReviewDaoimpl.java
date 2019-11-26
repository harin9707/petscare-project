package com.test.dao;

import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ReviewDaoimpl implements ReviewDao{
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public void insertReviewInfo(HashMap<String, Object> rmap) {
		this.sqlSession.insert("insertTheReview", rmap);		
	}

}
