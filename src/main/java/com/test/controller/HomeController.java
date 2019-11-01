package com.test.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes({"customer", "company"})
public class HomeController {
	
//	@Autowired
//	private SpringJmsProducer springJmsProducer;

//	@Autowired
//	private SpringJmsConsumer springJmsConsumer;
	
	@RequestMapping({"/", "index"})
	public String index(Model model) {
		System.out.println("PetUtil Home for console update");
		return "redirect:/"; // index.jsp
	}
	
	@RequestMapping("/loginOrProfile")
	public String loginOrProfile(Model model, HttpSession session) {
		String url = "";
		if(session.getAttribute("customer") != null) {
			// logged in
			url = "profile";
		}else {
			// not logged in
			url = "login";
		}
		
		return "redirect:" + url;
		// profile.jsp OR login.jsp
	}
	
}
