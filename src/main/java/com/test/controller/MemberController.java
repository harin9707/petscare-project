package com.test.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.test.dao.CompanyDAO;
import com.test.dao.CustomerDAO;
import com.test.dao.PetDAO;
import com.test.dto.CompanyDTO;
import com.test.dto.CustomerDTO;
import com.test.dto.PetDTO;

@Controller
@SessionAttributes({"customer", "company"})
public class MemberController {
	
	@Autowired
	private CustomerDAO customerDao;
	
	@Autowired
	private CompanyDAO companyDao;
	
	@Autowired
	private PetDAO petDao;
	
	@RequestMapping("/login")
	public String login(Model model) {
		System.out.println("~~~login~~~");
		return "login"; // login.jsp // views ?��?�� ?��
	}
	
	@RequestMapping("/loginDo")
	public String loginDo(Model model, String id, String pw, HttpSession session) {
		System.out.println("11111111111111");
		CustomerDTO customer = this.customerDao.listThisCustomer(id, pw);
		String url = "";
		System.out.println("11111111111111");
		if(customer != null) {
			System.out.println("222222222222222");
			url = "customerprofile";
			model.addAttribute("customer", customer);
			System.out.println(customer.getId());
			System.out.println(customer.getPwd());
			System.out.println("222222222222222");
		}else { // customer == null
			System.out.println("3333333333333333333");
			CompanyDTO company = this.companyDao.listThisCompany(id, pw);
			System.out.println("3333333333333333333");
			if(company != null) {
				System.out.println("444444444444");
				System.out.println(company.getId());
				System.out.println(company.getPwd());
				model.addAttribute("company", company);
				url = "companyprofile";
				System.out.println("444444444444");
			}else { // company == null
				System.out.println("5555555555555");
				url = "login";
			}
		}
		// ======> customer가 로그인하는 건지, company가 로그인하는 건지
		
		return "redirect:" + url; // loginDo.jsp
		// profile.jsp OR signup.jsp // views
	}
	
	@RequestMapping("/logout")
	public String logout(Model model, SessionStatus status) {
		status.setComplete();
		System.out.println("~~~logout~~~");
		
		return "redirect:/"; // index.jsp // views
	}
	
	@RequestMapping("/customerprofile")
	public String profile(Model model, HttpSession session) {
		if(session.getAttribute("customer") != null) {
			try {
				CustomerDTO customer = (CustomerDTO) session.getAttribute("customer");
				System.out.println("customer => " + customer.getId());
				List<PetDTO> itspets = this.petDao.listItsPets(customer.getCid());
				model.addAttribute("pets", itspets);
			} catch (SecurityException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IllegalArgumentException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else {
			// false
			// Exception Handling
		}
		
		return "customerprofile"; // customerprofile.jsp // views
	}
	
	@RequestMapping("/signup")
	public String signup(Model model) {
		// insertTheCustomer
		return "signup"; // signup.jsp // views
	}
	
	@RequestMapping("/signupDo")
	public String signupDo(@RequestParam HashMap<String, Object> cmap) {
		
		String flag = (String) cmap.get("flag"); // 고객인가 기업인가
		System.out.println(flag + "~~~~~~~~~");
		String url = "";
		System.out.println("~~~~~~~~~~~~~~~~");
		System.out.println(cmap.get("id"));
		System.out.println(cmap.get("pw"));
		System.out.println("~~~~~~~~~~~~~~~~");
		if(flag.equals("user")) {
			System.out.println("user signup");
			this.userSignup(cmap);
		}else if(flag.equals("corp")) {
			System.out.println("corp signup");
			this.corpSignup(cmap);
		}else {
			System.out.println("NoBody");
		}
		
		return "redirect:/";
	}
	
	public int userSignup(HashMap<String, Object> cmap) {
		int res = this.customerDao.insertTheCustomer(cmap);
		System.out.println("customer insert result => " + res);
		return res;
	}
	
	public int corpSignup(HashMap<String, Object> cmap) {
		int res = this.companyDao.insertTheCompany(cmap);
		System.out.println("company insert result => " + res);
		return res;
	}
	
}
