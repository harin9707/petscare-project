<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>

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
    <link rel="stylesheet" href="css/style.css" type="text/css" />
	-->
<link rel="stylesheet" href="<c:url value='/resources/css/style.css' />" />

<title>반려동물 예약</title>
</head>

<body>
	<nav class="menu navbar navbar-expand-lg navbar-light" id="top">
		<a class="navbar-brand" href="index.jsp"> <img
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
				<li class="nav-item"><a class="nav-link" href="reserve">예약하기</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="#">플레이스</a></li>
				<li class="nav-item"><a class="nav-link" href="#">제휴문의</a></li>
				<li class="nav-item"><a class="nav-link" href="#">공지사항</a></li>
				<li class="nav-item"><a class="nav-link" href="#">후기</a></li>
				<li class="nav-item"><a class="nav-link" href="#">Q&A</a></li>
				<li class="nav-item"><a class="nav-link" href="loginOrProfile">Login</a>
				</li>
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

	<main class="container-fluid">
		<div class="row">
			<div class="col-12 bd-example p-0">
				<div id="carouselExampleCaptions" class="carousel slide"
					data-ride="carousel">
					<ol class="carousel-indicators">
						<li data-target="#carouselExampleCaptions" data-slide-to="0"
							class="active"></li>
						<li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
						<li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
					</ol>
					<div class="carousel-inner">
						<div class="carousel-item active">
							<svg class="bd-placeholder-img" width="100%" height="300px"
								xmlns="http://www.w3.org/2000/svg"
								preserveAspectRatio="xMidYMid slice" focusable="false"
								role="img">
                                <rect width="100%" height="100%"
									fill="#777"></rect>
                            </svg>
							<div class="carousel-caption d-none d-md-block">
								<h5 class="display-3">반갑습니다!</h5>
								<p>Nulla vitae elit libero, a pharetra augue mollis
									interdum.</p>
							</div>
						</div>
						<div class="carousel-item">
							<svg class="bd-placeholder-img" width="100%" height="300px"
								xmlns="http://www.w3.org/2000/svg"
								preserveAspectRatio="xMidYMid slice" focusable="false"
								role="img">
                                <rect width="100%" height="100%"
									fill="#777"></rect>
                            </svg>
							<div class="carousel-caption d-none d-md-block">
								<h5 class="display-3">신규고객 10% 할인</h5>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
							</div>
						</div>
						<div class="carousel-item">
							<svg class="bd-placeholder-img" width="100%" height="300px"
								xmlns="http://www.w3.org/2000/svg"
								preserveAspectRatio="xMidYMid slice" focusable="false"
								role="img">
                                <rect width="100%" height="100%"
									fill="#777"></rect>
                            </svg>
							<div class="carousel-caption d-none d-md-block">
								<h5 class="display-3">적립금 제도</h5>
								<p>Praesent commodo cursus magna, vel scelerisque nisl
									consectetur.</p>
							</div>
						</div>
					</div>
					<a class="carousel-control-prev" href="#carouselExampleCaptions"
						role="button" data-slide="prev"> <span
						class="carousel-control-prev-icon" aria-hidden="true"></span> <span
						class="sr-only">Previous</span>
					</a> <a class="carousel-control-next" href="#carouselExampleCaptions"
						role="button" data-slide="next"> <span
						class="carousel-control-next-icon" aria-hidden="true"></span> <span
						class="sr-only">Next</span>
					</a>
				</div>
			</div>

		</div>
		<div class="row p-5">
			<div class="col-lg-4 text-center">
				<svg class="bd-placeholder-img rounded-circle" width="140"
					height="140" xmlns="http://www.w3.org/2000/svg"
					preserveAspectRatio="xMidYMid slice" focusable="false" role="img"
					aria-label="Placeholder: 140x140">
                    <title>미용</title>
                    <rect width="100%" height="100%" fill="#777"></rect>
					<text x="50%" y="50%" fill="#777" dy=".3em">140x140</text>
                </svg>
				<h2>미용</h2>
				<p>Donec sed odio dui. Etiam porta sem malesuada magna mollis
					euismod. Nullam id dolor id nibh ultricies vehicula ut id elit.
					Morbi leo risus, porta ac consectetur ac, vestibulum at eros.
					Praesent commodo cursus magna.</p>
				<p>
					<a class="btn btn-secondary" href="beautyCompany" role="button">업체찾기 »</a>
				</p>
			</div>
			<!-- /.col-lg-4 -->
			<div class="col-lg-4 text-center">
				<svg class="bd-placeholder-img rounded-circle" width="140"
					height="140" xmlns="http://www.w3.org/2000/svg"
					preserveAspectRatio="xMidYMid slice" focusable="false" role="img"
					aria-label="Placeholder: 140x140">
                    <title>호텔</title>
                    <rect width="100%" height="100%" fill="#777"></rect>
					<text x="50%" y="50%" fill="#777" dy=".3em">140x140</text>
                </svg>
				<h2>호텔</h2>
				<p>Duis mollis, est non commodo luctus, nisi erat porttitor
					ligula, eget lacinia odio sem nec elit. Cras mattis consectetur
					purus sit amet fermentum. Fusce dapibus, tellus ac cursus commodo,
					tortor mauris condimentum nibh.</p>
				<p>
					<a class="btn btn-secondary" href="hotelCompany" role="button">업체찾기 »</a>
				</p>
			</div>
			<!-- /.col-lg-4 -->
			<div class="col-lg-4 text-center">
				<svg class="bd-placeholder-img rounded-circle" width="140"
					height="140" xmlns="http://www.w3.org/2000/svg"
					preserveAspectRatio="xMidYMid slice" focusable="false" role="img"
					aria-label="Placeholder: 140x140">
                    <title>병원</title>
                    <rect width="100%" height="100%" fill="#777"></rect>
					<text x="50%" y="50%" fill="#777" dy=".3em">140x140</text>
                </svg>
				<h2>병원</h2>
				<p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in,
					egestas eget quam. Vestibulum id ligula porta felis euismod semper.
					Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum
					nibh, ut fermentum massa justo sit amet risus.</p>
				<p>
					<a class="btn btn-secondary" href="hospitalCompany" role="button">업체찾기 »</a>
				</p>
			</div>
			<!-- /.col-lg-4 -->
		</div>
	</main>
	<footer class="container-fluid">
		<div class="row footer-container">
			<div class="col-12">
				<p>
					<a href="#top" class="footer_text ">Back to top</a>
				</p>
				<p>
					<a href="#" class="footer_text ">Language</a> <a href="#"
						class="footer_text">privacy</a> <a href="#" class="footer_text">Terms</a>
				</p>
				<p>© Copyright 2019, All Rights Reserved</p>
			</div>
			<div class="col-12 footer_sns">
				<a href="#"><i class="footer_sns_i fab fa-twitter"></i></a> <a
					href="#"><i class="footer_sns_i fab fa-instagram"></i></a> <a
					href="#"><i class="footer_sns_i fab fa-facebook-square"></i></a>
			</div>
		</div>
	</footer>

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
</body>

</html>