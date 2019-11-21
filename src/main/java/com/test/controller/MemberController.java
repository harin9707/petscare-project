package com.test.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.test.constants.Constant;
import com.test.constants.Constant.ESession;
import com.test.dao.CompanyDAO;
import com.test.dao.CustomerDAO;
import com.test.dao.PetDAO;
import com.test.dto.CompanyDTO;
import com.test.dto.CustomerDTO;
import com.test.dto.PetDTO;

@Controller
@SessionAttributes({ "customer", "company" })
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
		return "login"; // login.jsp // views ?占쏙옙?占쏙옙 ?占쏙옙
	}

	@RequestMapping("/loginDo")
	public String loginDo(Model model, String id, String pw, HttpSession session, SessionStatus status) {
		CustomerDTO customer = this.customerDao.listThisCustomer(id, pw);
		CompanyDTO company = this.companyDao.listThisCompany(id, pw);
		String url = "";
		
		if (customer != null && company == null) { // only customer
			url = "customerprofile";
			model.addAttribute("customer", customer);
			Constant.eSession = ESession.eCustomer;
		}else if (customer == null && company != null){ // only company
			model.addAttribute("company", company);
			url = "companyprofile";
			Constant.eSession = ESession.eCompany;
		}else if (customer != null && company != null) { // company == null
			System.out.println("고객 & 업체 중복 로그인 방지");
			status.setComplete();
			url = "/";
		}else { // customer == null && company == null
			url = "login";
		}
		
		return "redirect:" + url; // loginDo.jsp
	}

	@RequestMapping("/logout")
	public String logout(Model model, SessionStatus status) {
		Constant.eSession = ESession.eNull;
		status.setComplete();
		System.out.println("~~~logout~~~");
		return "redirect:/";
	}

	@RequestMapping("/customerprofile")
	public String profile(Model model, HttpSession session) {
		if (session.getAttribute("customer") != null) {
			try {
				CustomerDTO customer = (CustomerDTO) session.getAttribute("customer");
				System.out.println("customer => " + customer.getCustomer_Index());
				List<PetDTO> itspets = this.petDao.listItsPets(customer.getCustomer_Index());
				model.addAttribute("pet", itspets);
			} catch (SecurityException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IllegalArgumentException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else {
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
		String flag = (String) cmap.get("flag"); // 怨좉컼�씤媛� 湲곗뾽�씤媛�
		String url = "";
		if (flag.equals("user")) {
			this.userSignup(cmap);
		} else if (flag.equals("corp")) {
			this.corpSignup(cmap);
		} else {
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
