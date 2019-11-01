<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <!-- css -->
    <link rel="stylesheet" href="<c:url value='/resources/css/style.css' />"/>

    <title>반려동물 예약</title>
</head>

<body>
    <nav class="menu navbar navbar-expand-lg navbar-light" id="top">
        <a class="navbar-brand" href="index.html">
            <img src="<c:url value='/resources/images/logo.png' />" width="70" height="50" alt="logo">PET</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="#">홈 <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">소개</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">예약하기</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">플레이스</a>
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

            </ul>

            <form class="menu_form form-inline my-2 my-lg-0">
                <input class="menu_form_input form-control mr-sm-2" type="search" placeholder="검색" aria-label="Search">
                <button class="menu_form_btn btn btn-outline-success my-2 my-sm-0" type="submit">
                    <i class="fas fa-search"></i>
                </button>
            </form>
        </div>
    </nav>
    <div class="container-fluid login">
        <table class="title-table" align="center" height="90">
            <tr>
                <td><label>LOGIN</label></td>
            </tr>


        </table>


        <form class="indi-form" action="loginDo" name="loginform" method="post">
            <table class="userid-table" align="center" height="40" width="430" border="0">
                <tr>
                    <td><input id="userid" type="text" name="id" value="" placeholder="아이디"></td>
                </tr>
            </table>
            <table class="password-table" align="center" height="40" width="430" border="0">
                <tr>
                    <td><input id="password" type="password" name="pw" value="" placeholder="비밀번호"></td>
                </tr>
            </table>

            <table class="btn-table" align="center" height="40">
                <tr>
                    <td><input id="btn-login" type="submit" name="login" value="로그인"/></td>
                </tr>
            </table>

            <table id="border-table" align="center" height="0" width="440" border="1">

            </table>
            <table align="center" height="50" class="link-table">
                <tr>
                    <td><a style="text-decoration:none;" href="signup.html"> 회원가입 | </td>
                    <td><a style="text-decoration:none;" href=""> 비밀번호분실  </td>
                    
                </tr>
                
            </table>

        </form>


    </div>

    <footer class="footer container-fluid fixed-bottom">
        <p><a href="#top" class="footer_text">Back to top</a></p>
        <p><a href="#" class="footer_text">Language</a> <a href="#" class="footer_text">privacy</a> <a href="#"
                class="footer_text">Terms</a></p>
        <p>© Copyright 2019, All Rights Reserved</p>
        <div class="footer_sns">
            <a href="#"><i class="footer_sns_i fab fa-twitter"></i></a>
            <a href="#"><i class="footer_sns_i fab fa-instagram"></i></a>
            <a href="#"><i class="footer_sns_i fab fa-facebook-square"></i></a>
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