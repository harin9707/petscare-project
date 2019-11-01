package com.test.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.test.dao.CompanyDAO;
import com.test.dto.CompanyDTO;

@Controller
@SessionAttributes({"customer", "company"})
public class CompanyController {
	
	@Autowired
	private CompanyDAO companyDao;
	
	@RequestMapping("/companyprofile")
	public String profile(Model model, HttpSession session) {
		if(session.getAttribute("company") != null) {
			try {
				CompanyDTO company = (CompanyDTO) session.getAttribute("company"); // Get the Company Session
				System.out.println("company => " + company.getId());
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
		}else {
			// false // Exception Handling
		}
		
		return "companyprofile"; // companyprofile.jsp // views 폴더 내
	}
	
//	@RequestMapping(value="/signupDo", method=RequestMethod.POST, headers=("content-type=multipart/*"))
//	public String signupDo(MultipartHttpServletRequest multipartHttpServletRequest, @RequestParam HashMap<String, Object> cmap) {
//		// 해당 이미지는, form에서 imageFile이라는 name으로 지정되었으므로, "imageFile"이란 Key로 해당 FileMap에 저장된다!
//		// MultipartHttpServletRequest는, 기존 HttpServletRequest를 가져다가,
//		// multipart 데이터를 처리할 수 있게끔 이를 바꾸어놓고, 이를 통해, 이미지 등을 가져올 수 있게 된다!
//		// request.getParameter("imageFile")의 multipart 버전!
//		System.out.println("11111111111111111");
//		Map<String, MultipartFile> fileMap = multipartHttpServletRequest.getFileMap();
//		byte[] imageFile = null;
//		System.out.println("22222222222222222");
//		try {
//			imageFile = fileMap.get("imageFile").getBytes(); // 파일
//			String fileName = fileMap.get("imageFile").getName(); // 파일명
//			System.out.println("33333333333333333");
//			if(fileMap.isEmpty() || imageFile == null) { // null
//				System.out.println("No Image File!");
//				cmap.put("imageFile", null);
//				cmap.put("image", "No File");
//			}else { // not null
//				int dotIdx = fileName.lastIndexOf("."); // 확장자 기준 인덱스 확보!
//				String fileExtension = fileName.substring(dotIdx + 1).toLowerCase(); // 파일 확장자 저장!
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
//					cmap.put("imageFile", imageFile); // 이미지 파일 저장
//					cmap.put("image", fileName); // 파일명을 image 컬럼에 저장하게끔!
//				}
//			}
//		} catch (IOException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		// DB에 해당 업체 이미지와 함께 저장!
//		int res = this.companyDao.insertTheCompany(cmap);
//		System.out.println("company insert result => " + res);
//		
//		return "redirect:/"; // index.jsp // views 폴더 내
//	}
	
//	@RequestMapping("/getImageFile")
//	public ResponseEntity<byte[]> getImageFile(Model model, HttpSession session) {
//		CompanyDTO company = (CompanyDTO) session.getAttribute("company");
//		
//		byte[] imageFile = null; // 파일명을 image에 저장은 했지만, 불필요
//		
//		if(company != null) {
//			imageFile = company.getImageFile();
//		}
//		
//		HttpHeaders headers = new HttpHeaders(); // no need to be final
//		headers.setContentType(MediaType.IMAGE_JPEG);
//		
//		// ResponseEntity => HttpServletResponse를 통해, 헤더를 지정해주면서 imageFile 객체를 생성해 이를 반환!
//		return new ResponseEntity<byte[]>(imageFile, headers, HttpStatus.OK);
//		// no jsp // img 태그의 src 속성값으로 활용
//	}
	
}
