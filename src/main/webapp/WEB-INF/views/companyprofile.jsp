<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en">

<head>

<script type="text/javascript"
	src="http://code.jquery.com/jquery-2.1.0.min.js"></script>

<script type="text/javascript">
	$(function() {
		$("#Customer_Image").on('change', function() {
			readURL(this);
		});
	});

	function readURL(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();

			reader.onload = function(e) {
				$('#img-defult').attr('src', e.target.result);
			}

			reader.readAsDataURL(input.files[0]);
		}
	}

	function logout() {
		location.href = "logout";
	}

	function deleteTheCustomer() {
		location.href = "deleteTheCompany"; // 세션에서 customerIdx 받아오기!
	}
</script>
</head>

<body>
	<jsp:include page="Header.jsp" flush="false" />
	<main class="container-fluid">
	<div class="row mx-auto main-container">
		<div class="mx-auto main-block   col-12">



			<table class="mypage-table mt-5" align="center" height="40"
				width="430" border="0">
				<tr>
					<td><img id="Customer_Image"
						src="<c:url value='/resources/images/logo.png' />" width="150"
						height="150"></td>
				</tr>
			</table>
			<table class="mypage-table" align="center" height="40" width="430"
				border="0">
				<tr>
					<td><label class="mypage-user-id" id="company_Name">${ company.company_Name }</td>
				</tr>
			</table>
			<table class="mypage-table" align="center" height="40" width="430"
				border="0">
				<tr>
					<td><input type="button" class="mypage-btn-group"
						value="정보수정하기" onclick="location.href='company_revise.html'"></td>
				</tr>
			</table>
			<table class="mypage-table" align="center" height="40" width="430"
				border="0">
				<tr>
					<td><input type="button" class="mypage-btn-group"
						value="예약조회하기" onclick="location.href='company_reserve_check'"></td>
				</tr>
			</table>

			<table class="mypage-table" align="center" height="40" width="430"
				border="0">
				<tr>
					<td><input type="button" class="mypage-btn-group"
						value="후기조회하기" onclick="location.href='company_review_list'"></td>
				</tr>
			</table>

			<hr />

			<div class="main">

				<table>
					<caption></caption>
					<thead>
						<tr>
							<th>회사 사업자 번호</th>
							<th>회사 아이디</th>
							<th>회사 비밀번호</th>
							<th>회사 이름</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>${ company.company_Index }</td>
							<td>${ company.company_Id }</td>
							<td>${ company.company_Password }</td>
							<td>${ company.company_UserName }</td>
						</tr>
						<!-- session에 저장된 customer -->
					</tbody>
					<tfoot></tfoot>
				</table>

				<hr />

				<table class="mypage-table" align="center" height="40" width="430"
					border="0">
					<tr>
						<td><input type="button" class="mypage-btn-group"
							value="로그아웃" onclick="logout();"></td>
					</tr>
				</table>
				<table class="mypage-table" align="center" height="40" width="430"
					border="0">
					<tr>
						<td><input type="button" class="mypage-btn-group"
							value="회원탈퇴" onclick="deleteTheCustomer();"></td>
					</tr>
				</table>

			</div>
		</div>
	</div>
	</main>
	<jsp:include page="Footer.jsp" flush="false" />
</body>

</html>
