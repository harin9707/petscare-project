<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!doctype html>
<html lang="en">

<head>

</head>

<body>
	<jsp:include page="Header.jsp" flush="false" />
	<main class="container-fluid">
	<div class="row m-3">
		<div class="col-12 main-block">
			<h1 class="font-weight-bold p-5">Review</h1>
			<hr>
			<!-- 후기 index/고객 index/제목/내용/평점/이미지/답글(company용) -->
			<form method="POST" action="" accept-charset="utf-8"
				name="reservation" class="reserve-content text-center ">
				<div class="form-group row my-5">
					<label class="col-sm-2 col-form-label font-weight-bold" for="title">제목</label>
					<input type="text" class=" form-control col-sm-10" id="title"
						name="review_Title" required>
				</div>
				<div class="form-group row my-5">
					<label class="col-sm-2 col-form-label font-weight-bold"
						for="content">내용</label>
					<textarea class="form-control col-sm-10" id="content" rows="3"
						name="review_Content" required></textarea>

				</div>

				<div class="form-group row my-5">
					<label class="col-sm-2 col-form-label font-weight-bold"
						for="rating">평점</label>
					<div class="rate" id="rating">
						<input type="radio" id="star5" name="review_Rating" value="5" />
						<label for="star5" title="아주 좋아요">5 stars</label> <input
							type="radio" id="star4" name="review_Rating" value="4" /> <label
							for="star4" title="맘에 들어요">4 stars</label> <input type="radio"
							id="star3" name="review_Rating" value="3" /> <label for="star3"
							title="보통이에요">3 stars</label> <input type="radio" id="star2"
							name="review_Rating" value="2" /> <label for="star2"
							title="그냥 그래요">2 stars</label> <input type="radio" id="star1"
							name="review_Rating" value="1" /> <label for="star1"
							title="별로에요">1 star</label>
					</div>
				</div>
				<div class="form-group row my-5">
					<label class="col-sm-2 col-form-label font-weight-bold" for="image">사진</label>
					<input id="image" type="file" accept="image/*"
						onchange="loadFile(event)" name="review_Image" multiple />
					<div id="images"></div>
				</div>

				<div class="row">
					<div class="mx-auto">
						<button type="submit" class="btn btn-secondary btn-lg m-1">수정</button>
						<button type="submit" class="btn btn-secondary btn-lg m-1">삭제</button>
					</div>
				</div>
			</form>

		</div>
	</div>
	</main>
	<jsp:include page="Footer.jsp" flush="false" />
</body>

</html>