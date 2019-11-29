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
    <link rel="stylesheet" href="css/style.css" type="text/css" />

    <title>ë°ë ¤ëë¬¼ ìì½</title>

    
</head>

<body>
    <header>
        <nav class="menu navbar navbar-expand-lg navbar-light" id="top">
            <a class="navbar-brand" href="index.html">
                <img src="images/logo.png" width="70" height="50" alt="logo">PET</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="#">í <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">ìê°</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="reserve.html">ìì½íê¸°</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="search.html">ìì²´ì°¾ê¸°</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">ì í´ë¬¸ì</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">ê³µì§ì¬í­</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">íê¸°</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Q&A</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="login.html">Login</a>
                    </li>

                </ul>

                <form class="menu_form form-inline my-2 my-lg-0">
                    <input class="menu_form_input form-control mr-sm-2" type="search" placeholder="ê²ì"
                        aria-label="Search">
                    <button class="menu_form_btn btn btn-outline-success my-2 my-sm-0" type="submit">
                        <i class="fas fa-search"></i>
                    </button>
                </form>
            </div>
        </nav>
    </header>
    <main class="container-fluid">
        <div class="row mx-auto main-container">
            <div class="mx-auto main-block   col-12">
                <h1 class="pet_register_title">í« ë±ë¡íê¸°</h1>
            <form class="pet_register" name="pet_register" method="post" action="">
                <div class="form-group row">
                    <label class="col-sm-2 " for="Pet_Name">ì´ë¦</label>
                    <div class="col-sm-8">
                        <input class="form-control" type="text" id="Pet_Name" name="Pet_Name" placeholder="ë©ë©ì´" required>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label" for="Pet_Type">ì¢</label>
                    <div class="col-sm-8">
                        <input class="form-control" type="text" id="Pet_Type" name="Pet_Type" placeholder="ë§í°ì¦" required>
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
                    <input class="form-control" type="number" id="Pet_Age" name="Pet_Age" required>
                    </div>
                </div>
                <div class="form-group row">
                        <label class="col-sm-2 col-form-label" for="Pet_History">ê¸°íì¬í­</label>
                        <div class="col-sm-8">
                        <input class="form-control" type="text" id="Pet_History" name="Pet_History" placeholder="ìì ê²½ì° 'ìì'" >
                        </div>
                    </div>
                <div class="register-btn-div row">
                    <button type="submit" class="register-btn">ë±ë¡íê¸°</button>
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
                <p>Â© Copyright 2019, All Rights Reserved</p>
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