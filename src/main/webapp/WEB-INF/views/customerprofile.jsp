<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en">

<head>

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
		location.href = "deleteTheCustomer"; // 세션에서 customerIdx 받아오기!
	}
</script>
</head>

<body>
	<jsp:include page="Header.jsp" flush="false" />
	<main class="container-fluid">
	<div class="row mx-auto main-container">
		<div class="mx-auto main-block   col-12">

			<!-- <img id="Customer_Image" src="./images/profile.png" width="100" height="100"> -->




			<table class="mypage-table" align="center" height="40" width="430"
				border="0">
				<tr>
					<td><img id="Customer_Image"
						src="<c:url value='/resources/images/logo.png' />" width="150"
						height="150"></td>
				</tr>
			</table>
			<table class="mypage-table" align="center" height="40" width="430"
				border="0">
				<tr>
					<td><label class="mypage-user-id" id="customer_Name">${ customer.customer_Name }</td>
				</tr>
			</table>
			<table class="mypage-table" align="center" height="40" width="430"
				border="0">
				<tr>
					<td><input type="button" class="mypage-btn-group"
						value="펫등록하기" onclick="location.href='pet_register'"></td>

				</tr>
			</table>
			<table class="mypage-table" align="center" height="40" width="430"
				border="0">
				<tr>
					<td><input type="button" class="mypage-btn-group"
						value="정보수정하기" onclick="location.href='customer_modify'"></td>
				</tr>
			</table>
			<table class="mypage-table" align="center" height="40" width="430"
				border="0">
				<tr>
					<td><input type="button" class="mypage-btn-group"
						value="예약조회하기" onclick="location.href='customer_reserve_check'"></td>
				</tr>
			</table>

			<hr />

			<div class="main">

				<table>
					<caption></caption>
					<thead>
						<tr>
							<th>고객 번호</th>
							<th>고객 아이디</th>
							<th>고객 이름</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>${ customer.customer_Index }</td>
							<td>${ customer.customer_Id}</td>
							<td>${ customer.customer_Name }</td>
						</tr>
						<!-- session에 저장된 customer -->
					</tbody>
					<tfoot></tfoot>
				</table>

				<hr />

				<table>
					<caption></caption>
					<thead>
						<tr>
							<th>펫 번호</th>
							<th>펫 이름</th>
							<th>펫 종</th>
							<th>나이</th>
							<th>성별</th>
							<th>중성화수술여부</th>
							<th>무게</th>
							<th>펫 히스토리</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${ pet }" var="pet">
							<tr>
								<td>${pet.pet_Index }</td>
								<td>${ pet.pet_Name }</td>
								<td>${ pet.pet_Type }</td>
								<td>${ pet.pet_Age }</td>
								<td>${ pet.pet_Gender }</td>
								<td>${ pet.pet_IsNeutralized }</td>
								<td>${ pet.pet_Weight }</td>
								<td>${ pet.pet_History }</td>
							</tr>
							<tr>
								<td><input type="button" class="mypage-btn-group"
									value="정보수정하기"
									onclick="location.href='pet_modify?customer_Index=${customer.customer_Index }&pet_Index=${pet.pet_Index }'"></td>
							</tr>
						</c:forEach>
					</tbody>
					<tfoot></tfoot>
				</table>

			</div>

			<hr />
			<table class="mypage-table" align="center" height="40" width="430"
				border="0">
				<tr>
					<td><input type="button" class="mypage-btn-group" value="로그아웃"
						onclick="logout();"></td>
				</tr>
			</table>
			<table class="mypage-table" align="center" height="40" width="430"
				border="0">
				<tr>
					<td><input type="button" class="mypage-btn-group" value="회원탈퇴"
						onclick="deleteTheCustomer();"></td>
				</tr>
			</table>

			<hr />

		</div>
	</div>
	</main>
	<jsp:include page="Footer.jsp" flush="false" />
</body>

</html>
