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
</script>
</head>

<body>
	<jsp:include page="../Header.jsp" flush="false" />
	<main class="container-fluid">
	<div class="row mx-auto main-container">
		<div class="mx-auto main-block   col-12">

			<!-- <img id="Customer_Image" src="./images/profile.png" width="100" height="100"> -->




			<table class="mypage-table" align="center" height="40" width="430"
				border="0">
				<tr>
					<td><img id="Customer_Image" src="./images/profile.png"
						width="150" height="150"></td>
				</tr>
			</table>
			<table class="mypage-table" align="center" height="40" width="430"
				border="0">
				<tr>
					<td><label class="mypage-user-id" id="Customer_Id">ìì´ë</td>
				</tr>
			</table>
			<table class="mypage-table" align="center" height="40" width="430"
				border="0">
				<tr>
					<td><input type="button" class="mypage-btn-group"
						value="í«ë±ë¡íê¸°"
						onclick="location.href='pet_register.html'"></td>

				</tr>
			</table>
			<table class="mypage-table" align="center" height="40" width="430"
				border="0">
				<tr>
					<td><input type="button" class="mypage-btn-group"
						value="ì ë³´ìì íê¸°"
						onclick="location.href='customer_revise.html'"></td>
				</tr>
			</table>
			<table class="mypage-table" align="center" height="40" width="430"
				border="0">
				<tr>
					<td><input type="button" class="mypage-btn-group"
						value="ìì½ì¡°ííê¸°"
						onclick="location.href='reserve_check.html'"></td>
				</tr>
			</table>
		</div>
	</div>
	</main>
	<jsp:include page="../Footer.jsp" flush="false" />
</body>

</html>