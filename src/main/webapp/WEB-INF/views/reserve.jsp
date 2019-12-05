<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <!-- css -->
    <link rel="stylesheet" href="resources/css/style.css" type="text/css" />

    <title>반려동물 예약</title>
</head>

<body>
    <header>
        <nav class="menu navbar navbar-expand-lg navbar-light" id="top">
            <a class="navbar-brand" href="index.html">
                <img src="resources/images/logo.png" width="70" height="50" alt="logo">PET</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="index.html">홈 <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">소개</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="reserve.html">예약하기</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">제휴문의</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">공지사항</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">후기</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Q&A</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="loginOrProfile">loginOrProfile</a>
                    </li>

                </ul>

                <form class="menu_form form-inline my-2 my-lg-0">
                    <input class="menu_form_input form-control mr-sm-2" type="search" placeholder="검색"
                        aria-label="Search">
                    <button class="menu_form_btn btn btn-outline-success my-2 my-sm-0" type="submit">
                        <i class="fas fa-search"></i>
                    </button>
                </form>
            </div>
        </nav>
    </header>
    <main class="container-fluid">
        <div class="row m-3">
            <div class="col-12 main-block">
                <h1 class="reserve-title font-weight-bold p-5"><i class="far fa-calendar-check"></i> 예약</h1>
                <hr>
                <!-- 업체선택, 세분화,예약 날짜 ,시간 -->
                <form method="POST" action="reserve_ok" accept-charset="utf-8" name="reservation"
                    class="reserve-content text-center ">
                    <div>
                        <div class=" form-group row">
                            <label class="col-sm-2 pt-0 col-form-label font-weight-bold"
                                for="Reservation_Type">업체찾기</label>
                            <div class="col-sm-3 text-left" id="Reservation_Type">
                                <input type="radio" name="Reservation_Type" value="beauty" checked="checked">미용
                                <input type="radio" name="Reservation_Type" value="hospital">병원
                                <input type="radio" name="Reservation_Type" value="hotel">호텔
                            </div>
                        </div>

                        <div class="row my-5">
                            <label class="col-sm-2 pt-0 col-form-label"></label>
                            <div class="col-sm-10" id="beauty">
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                            <th> </th>
                                            <th>번호</th>
                                            <th>기업명</th>
                                            <th>위치</th>
                                        </tr>
                                    </thead>
                                    <tbody>
	                                    <c:forEach items="${companyList}" var="company">
	                                    	<c:if test="${company.company_Type eq '미용실'}">
												<tr class="record">
													<td><input type="radio" name="company_Index" value='${company.company_Index}'></td>
													<td align="center">${company.company_Index}</td>
													<td align="center">${company.company_Name}</td>
													<td align="center">${company.company_Address}</td>
												</tr>
											</c:if>
										</c:forEach>
									</tbody>
                                </table>
                            </div>
                            <div class="col-sm-10" id="hospital">
                                <table class="table table-hover ">
                                    <thead>
                                        <tr>
                                            <th> </th>
                                            <th>번호</th>
                                            <th>기업명</th>
                                            <th>위치</th>
                                        </tr>
                                    </thead>
                                    <tbody>
	                                    <c:forEach items="${companyList}" var="company">
	                                    	<c:if test="${company.company_Type eq '병원'}">
												<tr class="record">
													<td><input type="radio" name="company_Index" value='${company.company_Index}'></td>
													<td align="center">${company.company_Index}</td>
													<td align="center">${company.company_Name}</td>
													<td align="center">${company.company_Address}</td>
												</tr>
											</c:if>
										</c:forEach>
									</tbody>
                                </table>
                            </div>
                            <div class="col-sm-10" id="hotel">
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                            <th> </th>
                                            <th>번호</th>
                                            <th>기업명</th>
                                            <th>위치</th>
                                        </tr>
                                    </thead>
                                    <tbody>
	                                    <c:forEach items="${companyList}" var="company">
	                                    	<c:if test="${company.company_Type eq '호텔'}">
												<tr class="record">
													<td><input type="radio" name="company_Index" value='${company.company_Index}'></td>
													<td align="center">${company.company_Index}</td>
													<td align="center">${company.company_Name}</td>
													<td align="center">${company.company_Address}</td>
												</tr>
											</c:if>
										</c:forEach>
									</tbody>                              
								</table>
                            </div>
                        </div>
                    </div>
                    <div class="form-group row my-5">
                        <label class="col-sm-2 col-form-label font-weight-bold" for="petindex">펫선택</label>
                        <select class="form-control col-sm-10" id="petindex" name="pet_Index" required>
                        	<c:forEach items="${petList}" var="pet">
	                            <option value="${pet.pet_Index}">${pet.pet_Name}</option>
                            </c:forEach>
                        </select>

                    </div>
                    <div class="form-group row my-5">
                        <label class="col-sm-2 col-form-label font-weight-bold" for="DetailService">기타의견</label>
                        <input type="text" class=" form-control col-sm-10" id="DetailService"
                            placeholder="자세한 사항을 기입해주세요." name="reservation_DetailService" required>

                    </div>
                    <div class="form-group row my-5 font-weight-bold">
                        <label class="col-sm-2 col-form-label" for="Reservation_PType">예약날짜</label>
                        <input type="date" class=" form-control col-sm-4" id="Reservation_PType" placeholder=""
                            name="reservation_Date" required>
                        <label class="col-sm-2 col-form-label font-weight-bold" for="Reservation_PType">예약시간</label>
                        <input type="time" class=" form-control col-sm-4" id="Reservation_PType" placeholder=""
                            name="reservation_Time" required>
                    </div>
                    <div class="form-group row mt-5">
                        <div class="form-check mx-auto">
                            <input class="form-check-input" type="checkbox" value="" id="invalidCheck2" required>
                            <label class="form-check-label" for="invalidCheck2">
                                Agree to terms and conditions
                            </label>
                        </div>
                    </div>
                    <div class="row">
                        <button type="submit" class="btn btn-secondary btn-lg mx-auto">예약하기</button>
                    </div>
                </form>
            </div>
        </div>
    </main>
    <footer class="container-fluid">
        <div class="row footer-container">
            <div class="col-12">
                <p><a href="#top" class="footer_text ">Back to top</a></p>
                <p><a href="#" class="footer_text ">Language</a> <a href="#" class="footer_text">privacy</a>
                    <a href="#" class="footer_text">Terms</a></p>
                <p>© Copyright 2019, All Rights Reserved</p>
            </div>
            <div class="col-12 footer_sns">
                <a href="#"><i class="footer_sns_i fab fa-twitter"></i></a>
                <a href="#"><i class="footer_sns_i fab fa-instagram"></i></a>
                <a href="#"><i class="footer_sns_i fab fa-facebook-square"></i></a>
            </div>
        </div>
    </footer>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
    <script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
    <script src="resources/script/reserve.js"></script>
</body>

</html>