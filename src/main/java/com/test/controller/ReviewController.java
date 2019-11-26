package com.test.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.test.dao.CustomerDAO;
import com.test.dao.PetDAO;
import com.test.dao.ReservationDAO;
import com.test.dao.ReviewDao;

@Controller
@SessionAttributes({"customer", "company"})
public class ReviewController {
	
	@Autowired
	public CustomerDAO customerDao;
	
	@Autowired
	public PetDAO petDao;
	
	@Autowired
	public ReservationDAO reservationDao;
	
	@Autowired
	public ReviewDao reviewDao;
	

	@RequestMapping(value="/review_add_customer")
	public ModelAndView customer_review(ModelAndView mv, int reservation_Index) {
		int company_Index = this.reservationDao.selectCompanyIndex(reservation_Index);

		mv.addObject("company_Index", company_Index);
		mv.setViewName("review_add_customer");
		return mv;
	}
	
	@RequestMapping(value="/review_add_ok")
	public String customer_review_ok(@RequestParam HashMap<String, Object> rmap, HttpServletRequest request) {		
		//값이 잘 들어가면 true, 아니면 false
		//일반 후기의 경우 ref는 0
		String ratingValue = request.getParameter("review_Rating");
		
		rmap.put("ref", 0);
		rmap.put("review_Rating", ratingValue);
		
		this.reviewDao.insertReviewInfo(rmap);
		return "review_add_ok";
	}
	
}
