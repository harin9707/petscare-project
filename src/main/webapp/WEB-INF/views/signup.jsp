<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<!-- css -->
<!--
    <link rel="stylesheet" href="css/style.css" type="text/css"/>
    -->
<link rel="stylesheet" href="<c:url value='/resources/css/style.css' />" />

<title>반려동물 예약</title>
</head>

<body>
	<nav class="menu navbar navbar-expand-lg navbar-light" id="top">
		<a class="navbar-brand" href="index.html"> <img
			src="<c:url value='/resources/images/logo.png' />" width="70"
			height="50" alt="logo">PET
		</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link" href="#">홈
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="#">소개</a></li>
				<li class="nav-item"><a class="nav-link" href="#">예약하기</a></li>
				<li class="nav-item"><a class="nav-link" href="#">플레이스</a></li>
				<li class="nav-item"><a class="nav-link" href="#">제휴문의</a></li>
				<li class="nav-item"><a class="nav-link" href="#">공지사항</a></li>
				<li class="nav-item"><a class="nav-link" href="#">후기</a></li>
				<li class="nav-item"><a class="nav-link" href="#">Q&A</a></li>

			</ul>

			<form class="menu_form form-inline my-2 my-lg-0">
				<input class="menu_form_input form-control mr-sm-2" type="search"
					placeholder="검색" aria-label="Search">
				<button class="menu_form_btn btn btn-outline-success my-2 my-sm-0"
					type="submit">
					<i class="fas fa-search"></i>
				</button>
			</form>
		</div>
	</nav>
	<div class="container-fluid signup m-auto" style="max-width: 800px;">

		<div class="mt-3 mb-3">
			<div class="custom-control custom-radio custom-control-inline">
				<input value="개인회원" type="radio" id="customRadioInline1"
					name="userType" class="custom-control-input" checked> <label
					class="custom-control-label" for="customRadioInline1">개인회원</label>
			</div>

			<div class="custom-control custom-radio custom-control-inline">
				<input value="기업회원" type="radio" id="customRadioInline2"
					name="userType" class="custom-control-input"> <label
					class="custom-control-label" for="customRadioInline2">기업회원</label>
			</div>

		</div>

		<form class="m-5" action="signupDo">
			<div class="userSignUpForm"></div>
		</form>
	</div>


	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
	<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>

	<script type="text/javascript">
		$(document).ready(function() {
			$("input:radio[name=userType]").click(function() {
				var userType = $("input:radio[name=userType]:checked").val()
				// user로 회원가입한 건지, 기업으로 한 건지, 서블릿에서 확인해야 해!
				// <form class="m-5" action="signupDo">
				// 	<div class="userSignUpForm">
				// 	</div>
				// </form>
				// 숨은 input name="flag"
				if (userType === '개인회원') {
					IndividualUser()
				} else {
					corporateUser()
				}
			})
		});

		function IndividualUser() {

			var data = "<div class=\"form-group\">\n"
					+ "    <label for=\"username\">아이디</label>\n"
					+ "    <input type=\"text\" class=\"form-control\" id=\"username\" name=\"id\" placeholder=\"아이디\">\n"
					+ "  </div>\n"
					+ "  <div class=\"form-group\">\n"
					+ "    <label for=\"exampleInputPassword1\">비밀번호</label>\n"
					+ "    <input type=\"password\" class=\"form-control\" id=\"exampleInputPassword1\" name=\"pw\" placeholder=\"비밀번호\">\n"
					+ "  </div>\n"
					+ "  <div class=\"form-group\">\n"
					+ "    <label for=\"name\">이름</label>\n"
					+ "    <input type=\"text\" class=\"form-control\" id=\"name\" name=\"name\" placeholder=\"이름\">\n"
					+ "  </div>\n"
					+ "  <div class=\"form-group\">\n"
					+ "    <label for=\"name\">핸드폰 번호</label>\n"
					+ "    <input type=\"text\" class=\"form-control\" id=\"phoneNumber\" name=\"phoneNumber\" placeholder=\"핸드폰 번호\">\n"
					+ "  </div>\n"
					+ "\n"
					+ "  <div class=\"form-group row\">\n"
					+ " <label class=\"m-3\">주소</label>\n"
					+ "    <input type=\"text\" class=\"form-control col-3 m-3\" id=\"address1\" name=\"address1\" placeholder=\"시\">\n"
					+ "    <input type=\"text\" class=\"form-control col-3 m-3\" id=\"address2\" name=\"address2\" placeholder=\"구\">\n"
					+ "    <input type=\"text\" class=\"form-control col-3 m-3\" id=\"address3\" name=\"address3\" placeholder=\"동\">\n"
					+ "  </div>\n"
					+ "\n"
					+ "  <div class=\"form-group\">\n"
					+ "    <label for=\"email\">이메일</label>\n"
					+ "    <input type=\"text\" class=\"form-control\" id=\"email\" name=\"email\"  placeholder=\"이메일\">\n"
					+ "  </div>\n"
					+ "\n"
					+ " <input type=\"text\" name=\"flag\" display=\"hidden\" value=\"user\"> "
					+ "  \n"
					+ "  <button type=\"submit\" class=\"btn btn-primary\">회원가입</button>";
			$('.userSignUpForm').html(data);
		}

		function corporateUser() {
			var data = "   <div class=\"form-group\">\n"
					+ "                <label for=\"username\">아이디</label>\n"
					+ "                <input type=\"text\" class=\"form-control\" id=\"username\" name=\"id\" placeholder=\"아이디\">\n"
					+ "            </div>\n"
					+ "            <div class=\"form-group\">\n"
					+ "                <label for=\"exampleInputPassword1\">비밀번호</label>\n"
					+ "                <input type=\"password\" class=\"form-control\" id=\"exampleInputPassword1\" name=\"pw\" placeholder=\"비밀번호\">\n"
					+ "            </div>\n"
					+ "            <div class=\"form-group\">\n"
					+ "                <label for=\"name\">회사 이름</label>\n"
					+ "                <input type=\"text\" class=\"form-control\" id=\"name\" name=\"name\" placeholder=\"사업자 등록번호\">\n"
					+ "            </div>\n"
					+ "\n"
					+ "            <div class=\"form-group row\">\n"
					+ "                <label class=\"m-3\">주소</label>\n"
					+ "                <input type=\"text\" class=\"form-control col-3 m-3\" id=\"address1\" name=\"address1\" placeholder=\"시\">\n"
					+ "                <input type=\"text\" class=\"form-control col-3 m-3\" id=\"address2\" name=\"address2\" placeholder=\"구\">\n"
					+ "                <input type=\"text\" class=\"form-control col-3 m-3\" id=\"address3\" name=\"address3\" placeholder=\"동\">\n"
					+ "            </div>\n"
					+ "\n"
					+ "            <div class=\"form-group\">\n"
					+ "                <label for=\"name\">업체번호</label>\n"
					+ "                <input type=\"text\" class=\"form-control\" id=\"businessNumber\" name=\"businessNumber\" placeholder=\"업체번호\">\n"
					+ "            </div>\n"
					+ "\n"
					+ "  <div class=\"form-group\">\n"
					+ "    <label for=\"name\">핸드폰 번호</label>\n"
					+ "    <input type=\"text\" class=\"form-control\" id=\"phoneNum\" name=\"phoneNumber\" placeholder=\"핸드폰 번호\">\n"
					+ "  </div>\n"
					+ "            <div class=\"form-group\">\n"
					+ "                <label for=\"email\">이메일</label>\n"
					+ "                <input type=\"text\" class=\"form-control\" id=\"email\" name=\"email\" placeholder=\"이메일\">\n"
					+ "            </div>\n"
					+ "\n"
					+ "             <div class=\"form-group\">\n"
					+ "                <label for=\"name\">업종</label>\n"
					+ "                <input type=\"text\" class=\"form-control\" id=\"businessType\" name=\"businessType\"  placeholder=\"업종\">\n"
					+ "            </div>\n"
					+ "\n"
					+ "            <div class=\"form-group\">\n"
					+ "                <label for=\"name\">간단한 소개</label>\n"
					+ "                <textarea class=\"form-control\" id=\"intro\" name=\"intro\" placeholder=\"소개\" ></textarea>\n"
					+ "            </div>\n"
					+ "\n"
					+ " <input type=\"text\" name=\"flag\" display=\"hidden\" value=\"corp\"> "
					+ "            <button type=\"submit\" class=\"btn btn-primary\">회원가입</button>"
			$('.userSignUpForm').html(data);
		}
	</script>
</body>

</html>
