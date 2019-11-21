package com.test.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.test.dao.CompanyDAO;
import com.test.dto.CompanyDTO;
import com.test.dto.CustomerDTO;
import com.test.dto.PetDTO;

@Controller
@SessionAttributes({ "customer", "company" })
public class CompanyController {

	@Autowired
	private CompanyDAO companyDao;

	@RequestMapping("/companyprofile")
	public String profile(Model model, HttpSession session) {
		if (session.getAttribute("company") != null) {
			try {
				CompanyDTO company = (CompanyDTO) session.getAttribute("company"); // Get the Company Session
				System.out.println("company => " + company.getCompany_Index());
				// ActiveMQ Receive from its companyIdx Queue
			} catch (SecurityException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IllegalArgumentException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else {
			// false // Exception Handling
		}

		return "companyprofile"; // companyprofile.jsp // views �뤃�뜑 �궡
	}

	@RequestMapping("/beautyCompany")
	public String beautyCompany(Model model, HttpServletRequest request) {
		String url = "";
		HttpSession session = request.getSession();
		List<CompanyDTO> beautyCompany = this.companyDao.listsCompany("미용실");
		model.addAttribute("company", beautyCompany);
		url = "beauty_company";
		return url;
	}

	@RequestMapping("/hospitalCompany")
	public String hospitalCompany(Model model, HttpServletRequest request) {
		String url = "";
		HttpSession session = request.getSession();
		List<CompanyDTO> hospitalCompany = this.companyDao.listsCompany("병원");
		model.addAttribute("company", hospitalCompany);
		url = "hospital_company";
		return url;
	}

	@RequestMapping("/hotelCompany")
	public String hotelCompany(Model model, HttpServletRequest request) {
		String url = "";
		HttpSession session = request.getSession();
		List<CompanyDTO> hotelCompany = this.companyDao.listsCompany("호텔");
		model.addAttribute("company", hotelCompany);
		url = "hotel_company";
		return url;
	}
//	@RequestMapping("/beautyCompanyView")
//	public String beautyCompanyView(Model model, HttpServletRequest request) {
//		String url = "";
//		HttpSession session = request.getSession();
//		List<CompanyDTO> company =  (List<CompanyDTO>) session.getAttribute("company");
//		url = "beauty_company_view";
//		return url;
//	}

//	@RequestMapping(value="/signupDo", method=RequestMethod.POST, headers=("content-type=multipart/*"))
//	public String signupDo(MultipartHttpServletRequest multipartHttpServletRequest, @RequestParam HashMap<String, Object> cmap) {
//		// �빐�떦 �씠誘몄��뒗, form�뿉�꽌 imageFile�씠�씪�뒗 name�쑝濡� 吏��젙�릺�뿀�쑝誘�濡�, "imageFile"�씠�� Key濡� �빐�떦 FileMap�뿉 ���옣�맂�떎!
//		// MultipartHttpServletRequest�뒗, 湲곗〈 HttpServletRequest瑜� 媛��졇�떎媛�,
//		// multipart �뜲�씠�꽣瑜� 泥섎━�븷 �닔 �엳寃뚮걫 �씠瑜� 諛붽씀�뼱�넃怨�, �씠瑜� �넻�빐, �씠誘몄� �벑�쓣 媛��졇�삱 �닔 �엳寃� �맂�떎!
//		// request.getParameter("imageFile")�쓽 multipart 踰꾩쟾!
//		System.out.println("11111111111111111");
//		Map<String, MultipartFile> fileMap = multipartHttpServletRequest.getFileMap();
//		byte[] imageFile = null;
//		System.out.println("22222222222222222");
//		try {
//			imageFile = fileMap.get("imageFile").getBytes(); // �뙆�씪
//			String fileName = fileMap.get("imageFile").getName(); // �뙆�씪紐�
//			System.out.println("33333333333333333");
//			if(fileMap.isEmpty() || imageFile == null) { // null
//				System.out.println("No Image File!");
//				cmap.put("imageFile", null);
//				cmap.put("image", "No File");
//			}else { // not null
//				int dotIdx = fileName.lastIndexOf("."); // �솗�옣�옄 湲곗� �씤�뜳�뒪 �솗蹂�!
//				String fileExtension = fileName.substring(dotIdx + 1).toLowerCase(); // �뙆�씪 �솗�옣�옄 ���옣!
//				
//				System.out.println("!!!!!!!!!!!! File Extension => " + fileExtension);
//				
//				if( !fileExtension.equals("jpg") && !fileExtension.equals("jpeg") && !fileExtension.equals("png") ) {
//					// Wrong file format
//					System.out.println("Wrong Image File");
//					cmap.put("imageFile", null);
//					cmap.put("image", "Wrong File");
//				}else {
//					// Normal image file
//					System.out.println("Right Image File");
//					cmap.put("imageFile", imageFile); // �씠誘몄� �뙆�씪 ���옣
//					cmap.put("image", fileName); // �뙆�씪紐낆쓣 image 而щ읆�뿉 ���옣�븯寃뚮걫!
//				}
//			}
//		} catch (IOException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		// DB�뿉 �빐�떦 �뾽泥� �씠誘몄��� �븿猿� ���옣!
//		int res = this.companyDao.insertTheCompany(cmap);
//		System.out.println("company insert result => " + res);
//		
//		return "redirect:/"; // index.jsp // views �뤃�뜑 �궡
//	}

//	@RequestMapping("/getImageFile")
//	public ResponseEntity<byte[]> getImageFile(Model model, HttpSession session) {
//		CompanyDTO company = (CompanyDTO) session.getAttribute("company");
//		
//		byte[] imageFile = null; // �뙆�씪紐낆쓣 image�뿉 ���옣�� �뻽吏�留�, 遺덊븘�슂
//		
//		if(company != null) {
//			imageFile = company.getImageFile();
//		}
//		
//		HttpHeaders headers = new HttpHeaders(); // no need to be final
//		headers.setContentType(MediaType.IMAGE_JPEG);
//		
//		// ResponseEntity => HttpServletResponse瑜� �넻�빐, �뿤�뜑瑜� 吏��젙�빐二쇰㈃�꽌 imageFile 媛앹껜瑜� �깮�꽦�빐 �씠瑜� 諛섑솚!
//		return new ResponseEntity<byte[]>(imageFile, headers, HttpStatus.OK);
//		// no jsp // img �깭洹몄쓽 src �냽�꽦媛믪쑝濡� �솢�슜
//	}

}
