<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Profile</title>
	<script>
		function logout(){
			location.href = "logout";
		}
		
		function deleteTheCustomer(){
			location.href = "deleteTheCompany"; // 세션에서 customerIdx 받아오기!
		}
	</script>
</head>
<body>
	<h3>companyprofile.jsp</h3>
	
	<hr/>
	
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
					<td>${ company.business_number }</td>
					<td>${ company.id }</td>
					<td>${ company.pwd }</td>
					<td>${ company.name }</td>
				</tr>
				<!-- session에 저장된 customer -->
			</tbody>
			<tfoot></tfoot>
		</table>
		
		<hr/>
		
		<div class="logoutButton">
			<button onclick="logout();">로그아웃</button>
		</div>
		
		<hr/>
		
		<div class="deleteCompanyButton">
			<button onclick="deleteTheCompany();">회원 탈퇴</button>
		</div>
		
	</div>
	
</body>
</html>