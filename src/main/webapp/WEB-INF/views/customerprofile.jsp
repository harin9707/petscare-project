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
			location.href = "deleteTheCustomer"; // 세션에서 customerIdx 받아오기!
		}
	</script>
</head>
<body>
	<h3>customerprofile.jsp</h3>
	
	<hr/>
	
	<div class="main">
		
		<table>
			<caption></caption>
			<thead>
				<tr>
					<th>고객 번호</th>
					<th>고객 아이디</th>
					<th>고객 비밀번호</th>
					<th>고객 이름</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>${ customer.cid }</td>
					<td>${ customer.id }</td>
					<td>${ customer.pwd }</td>
					<td>${ customer.name }</td>
				</tr>
				<!-- session에 저장된 customer -->
			</tbody>
			<tfoot></tfoot>
		</table>
		
		<hr/>
		
		<table>
			<caption></caption>
			<thead>
				<tr>
					<th>펫 번호</th>
					<th>펫 이름</th>
					<th>펫 종류</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${ pets }" var="pet">
					<tr>
						<td>${ pet.pet_id }</td>
						<td>${ pet.pet_name }</td>
						<td>${ pet.pet_type }</td>
					</tr>
				</c:forEach>
			</tbody>
			<tfoot></tfoot>
		</table>
		
	</div>
	
	<hr/>
		
	<div class="logoutButton">
		<button onclick="logout();">로그아웃</button>
	</div>
	
	<hr/>
	
	<div class="deleteCustomerButton">
		<button onclick="deleteTheCustomer();">회원 탈퇴</button>
	</div>
	
</body>
</html>