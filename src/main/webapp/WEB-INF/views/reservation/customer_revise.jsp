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

			<h2 class="user-re-title">ì ë³´ìì íê¸°</h2>

			<form class="user_re" name="user_re" method="post" action="">
				<div class="form-group row">
					<div class="profile-img col-sm-10">
						<img id="img-defult" src="./images/profile.png" width="100"
							height="100"> <input type="file" id="Customer_Image"
							name="Customer_Image" accept="image/*" />
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2 col-form-label" for="Customer_Id">ìì´ë</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="Customer_Id"
							name="Customer_Id" required>
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2 col-form-label" for="Customer_Password">ë¹ë°ë²í¸</label>
					<div class="col-sm-10">
						<input type="password" class="form-control" id="Customer_Password"
							name="Customer_Password" required>
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2 col-form-label" for="Customer_Name">ì´ë¦</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="Customer_Name"
							name="Customer_Name" required>
					</div>
				</div>
				<!-- ê³ ê° íì´ë¸ìì varcharë¥¼ dateë¡ ìì  -->
				<div class="form-group row">
					<label class="col-sm-2 col-form-label" for="Customer_BirthDate">ìì¼</label>
					<div class="col-sm-10">
						<input type="date" class="form-control" id="Customer_BirthDate"
							name="Customer_BirthDate" required>
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2 col-form-label" for="Customer_PhoneNumber">ì íë²í¸</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="Customer_PhoneNumber"
							name="Customer_PhoneNumber" required>
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2 col-form-label" for="Customer_Address">ì£¼ì</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="Customer_Address"
							name="Customer_Address" required>
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2 col-form-label" for="Customer_Email">ì´ë©ì¼</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="Customer_Email"
							name="Customer_Email" required>
					</div>
				</div>
				<div class="user-re-btn-divrow">
					<button type="submit" class="user-re-btn">ìì íê¸°</button>
				</div>



			</form>
		</div>
	</div>
	</main>
	<jsp:include page="../Footer.jsp" flush="false" />
</body>

</html>