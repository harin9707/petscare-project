<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">

<head>
</head>

<body>
	<jsp:include page="Header.jsp" flush="false" />
	<main class="container-fluid">
	<div class="row mx-auto main-container">
		<div class="col-10 mx-auto main-block">
			<table class="login-table" height="90">
				<tr>
					<td><label class="login-title">LOGIN</label></td>
				</tr>
			</table>

			<form class="indi-form" action="loginDo" name="loginform"
				method="post">
				<table class="login-table" align="center" height="40" width="430"
					border="0">
					<tr>
						<td><input id="userid" type="text" name="id" value=""
							placeholder="아이디"></td>
					</tr>
				</table>
				<table class="login-table" align="center" height="40" width="430"
					border="0">
					<tr>
						<td><input id="password" type="password" name="pw" value=""
							placeholder="비밀번호"></td>
					</tr>
				</table>

				<table class="login-table" align="center" height="40">
					<tr>
						<td><input id="btn-login" type="submit" name="login"
							value="로그인" /></td>
					</tr>
				</table>

				<table id="border-table" align="center" height="0" width="420"
					border="1">
				</table>
				<table align="center" height="50" class="login-table">
					<tr>
						<td><a style="text-decoration: none;" href="signup.html">
								회원가입 | </td>
						<td><a style="text-decoration: none;" href=""> 비밀번호분실 </td>
					</tr>
				</table>
			</form>
		</div>

	</div>
	</div>
	</div>
	</main>
	<jsp:include page="Footer.jsp" flush="false" />
</body>

</html>