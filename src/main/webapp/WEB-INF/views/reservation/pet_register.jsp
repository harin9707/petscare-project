<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en">

<head>
</head>

<body>
	<jsp:include page="../Header.jsp" flush="false" />
	<main class="container-fluid">
	<div class="row mx-auto main-container">
		<div class="mx-auto main-block   col-12">
			<h1 class="pet_register_title">í« ë±ë¡íê¸°</h1>
			<form class="pet_register" name="pet_register" method="post"
				action="">
				<div class="form-group row">
					<label class="col-sm-2 " for="Pet_Name">ì´ë¦</label>
					<div class="col-sm-8">
						<input class="form-control" type="text" id="Pet_Name"
							name="Pet_Name" placeholder="ë©ë©ì´" required>
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2 col-form-label" for="Pet_Type">ì¢</label>
					<div class="col-sm-8">
						<input class="form-control" type="text" id="Pet_Type"
							name="Pet_Type" placeholder="ë§í°ì¦" required>
					</div>
				</div>
				<div class="form-group row">
					<label class=" col-sm-2 col-form-label" for="Pet_Gender">ì±ë³</label>
					<div class="gender-radio-group col-sm-8">
						<input type="radio" name="Pet_Gender_group" value="w">ì¬
						<input type="radio" name="Pet_Gender_group" value="m">ë¨
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2 col-form-label" for="Pet_Age">ëì´(ê°ìì)</label>
					<div class="col-sm-8">
						<input class="form-control" type="number" id="Pet_Age"
							name="Pet_Age" required>
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2 col-form-label" for="Pet_History">ê¸°íì¬í­</label>
					<div class="col-sm-8">
						<input class="form-control" type="text" id="Pet_History"
							name="Pet_History" placeholder="ìì ê²½ì° 'ìì'">
					</div>
				</div>
				<div class="register-btn-div row">
					<button type="submit" class="register-btn">ë±ë¡íê¸°</button>
				</div>
			</form>
		</div>
	</div>
	</main>
	<jsp:include page="../Footer.jsp" flush="false" />
</body>

</html>