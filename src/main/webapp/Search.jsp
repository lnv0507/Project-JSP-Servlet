<%--
  Created by IntelliJ IDEA.
  User: Nguyen Viet Lam
  Date: 1/17/2021
  Time: 11:16 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <meta charset="utf-8">
    <title>Shop Furniture</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Responsive Minimal Bootstrap Theme">
    <meta name="keywords" content="onepage,responsive,minimal,bootstrap,theme">
    <meta name="author" content="">


    <!--[if lt IE 9]>
    <script src="js/jsp5shiv.js"></script>
    <![endif]-->


    <!-- CSS Files
    ================================================== -->
    <link rel="stylesheet" href="css/bootstrap.css" type="text/css">
    <link rel="stylesheet" href="css/jpreloader.css" type="text/css">
    <link rel="stylesheet" href="css/animate.css" type="text/css">
    <link rel="stylesheet" href="css/plugin.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.css" type="text/css">
    <link rel="stylesheet" href="css/owl.theme.css" type="text/css">
    <link rel="stylesheet" href="css/owl.transitions.css" type="text/css">
    <link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
    <link rel="stylesheet" href="demo/demo.css" type="text/css">

    <!-- custom background -->
    <link rel="stylesheet" href="css/bg.css" type="text/css">

    <!-- color scheme -->
    <link rel="stylesheet" href="css/color.css" type="text/css" id="colors">

    <!-- load fonts -->
    <link rel="stylesheet" href="fonts/font-awesome/css/font-awesome.css" type="text/css">
    <link rel="stylesheet" href="fonts/elegant_font/HTML_CSS/style.css" type="text/css">
    <link rel="stylesheet" href="fonts/et-line-font/style.css" type="text/css">

    <!-- revolution slider -->
    <link rel="stylesheet" href="rs-plugin/css/settings.css" type="text/css">
    <link rel="stylesheet" href="css/rev-settings.css" type="text/css">

    <!-- login css -->
    <link rel="stylesheet" href="css/csslogin.css">
    <style>
        body {
            background-color: white;
        }

        .form_search {
            margin-top: 20px;
            height: 30%;
            width: 50%;

        }


        .form_search img {
            margin-right: 30px;
        }

        .form_search input {
            width: 500px;
            height: 30px;
            outline: none;
            border: none;
            border-radius: 20px;
        }



        .form_search i {
            font-size: 30px;
            outline: none;
            border-radius: 5px;
            float: none !important;
        }

        .form_search select {
            height: 30px;
            border: none;
            outline: none;
            border-radius: 20px;
        }

        .search {
            position: absolute;
            display: flex;
            outline: none;
        }
        .khung{
            height: 40px;
            border-radius: 20px;
            border: solid 1px black;
            outline: none;
        }
        .khung:hover{
            -webkit-box-shadow: -1px 0px 15px 0px rgba(0, 0, 0, 0.75);
            -moz-box-shadow: -1px 0px 15px 0px rgba(0, 0, 0, 0.75);
            box-shadow: -1px 0px 15px 0px rgba(0, 0, 0, 0.75);
        }
        .form_result {
            width: 50%;
        }

        .action {
            display: flex;
        }

        .action .acimage {
            margin-right: 20px;
        }
    </style>
</head>
<body>
<%@include file="header.jsp" %>
<div class="form_search">
    <form action="" class="search">
        <a href="<c:url value="/home"/>">
            <img class="logo" src="images/logo.png" alt="">
        </a>
        <div class="khung">
            <input type="text" value="">
            <i style="cursor: pointer;" class="fa fa-search"></i>
            <select><h5>Lựa Chọn</h5>

                <option>Sản Phẩm</option>
                <option>Thiết Kế</option>
                <option>Tin Tức</option>
            </select>
        </div>
    </form>
</div>
<div class="form_result">
    <a href="#" class="action">
        <div class="acimage">
            <img class="logo" src="images/logo.png" alt="">
        </div>
        <div class="acresult">
            <h3>Tên</h3>
            <p>Mô Tả</p>
        </div>
    </a>
</div>
<%@include file="footer.jsp" %>
</body>
</html>
