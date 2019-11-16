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
                        <a class="nav-link" href="login.html">Login</a>
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
                <h1 class="reserve-title"><i class="fas fa-paw"></i>서비스 예약하기<i class="fas fa-paw"></i></h1>
                <!-- 반려동물 이름, 나이, 중성화수술여부, 성별, 무게, 반려동물 종, 예약 날짜 및 시간 -->
                <form method="POST" action="reserve_ok" accept-charset="utf-8" name="reservation" class="reserve-content">
                    <div class=" form-group row">
                        <label class="col-sm-2 pt-0 col-form-label" for="Reservation_Type">서비스</label>
                        <div class="col-sm-10" id="Reservation_Type">
                            <input type="radio" name="Reservation_Type" value="beauty" checked="checked">미용
                            <input type="radio" name="Reservation_Type" value="hospital">병원
                            <input type="radio" name="Reservation_Type" value="hotel">호텔
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label" for="pet_Name">이름</label>
                        <div class="col-sm-10">
                            <input class="form-control" type="text" id="pet_Name" name="pet_Name"
                                placeholder="명지" required>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label" for="pet_Age">나이</label>
                        <div class="col-sm-10">
                            <input type="number" class="form-control" id="pet_Age" placeholder="1"
                                name="pet_Age" required>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label" for="Reservation_NeutralizationSurgery">중성화수술</label>
                        <div class="col-sm-10" id="Reservation_NeutralizationSurgery">
                            <input type="radio" name="Reservation_NeutralizationSurgery" value="True"
                                checked="checked">O
                            <input type="radio" name="Reservation_NeutralizationSurgery" value="False">X
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label" for="pet_Gender">성별</label>
                        <div class="col-sm-10 form-radio">
                            <input type="text" class="form-control" id="pet_Gender" placeholder="암컷/수컷"
                                name="pet_Gender" required>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label" for="Reservation_PWeight">무게</label>
                        <div class="col-sm-10">
                            <input type="number" class="form-control" id=" Reservation_PWeight" placeholder="kg"
                                name="Reservation_PWeight" required>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label" for="pet_Type">반려동물 종류</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="pet_Type" placeholder="고양이"
                                name="pet_Type" required>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label" for="reservation_Date">예약날짜</label>
                        <div class="col-sm-10">
                            <input type="date" class=" form-control" id="reservation_Date" placeholder=""
                                name="reservation_Date" required>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label" for="Reservation_Time">예약시간</label>
                        <div class="col-sm-10">
                            <input type="time" class=" form-control" id="reservation_Time" placeholder=""
                                name="reservation_Time" required>
                        </div>
                    </div>
                    <div class="form-group row">
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
</body>

</html>