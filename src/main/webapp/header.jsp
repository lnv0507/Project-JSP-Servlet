<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Nguyen Viet Lam
  Date: 12/26/2020
  Time: 9:26 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.dtos.AccountDTO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8"%>

<!-- Mirrored from w ww.themenesia.com/themeforest/archi-light/ by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 29 Jul 2015 14:03:59 GMT -->
<head>
    <style>
        .helloUser:hover .itemUser {
            display: block;
            color: red;
        }

        .itemUser {
            display: none;
        }
    </style>

</head>
<div class="header-banner">
    <div class="header-banner-item">
        <div class="search">
            <span> <i class="fa fa-envelope-square icon-email"></i> Email: daihocnonglam@hcmuaf.edu.vn </span>
        </div>
    </div>
    <div class="header-banner-item">

        <div class="info-mation">

            <c:if test="${not empty user}">
            <h5 id="helloUser" style="color: white" onclick="myFunction()">
                <div id="name"> Xin Chào: ${user.getTenAccount()}
                </div>
                <ul id="itemUserr">
                    <li><a href=" <c:url value="/profile"/> ">Thông Tin Cá Nhân</a></li>
                    <li><a href="<c:url value="/print"/> "> Giỏ Hàng</a></li>
                    <li><a href="<c:url value="/theodoidonhang.jsp"/> "> Tình Trạng Đơn Hàng</a></li>
                </ul>
            </h5>
            <h5><a href="<c:url value="/logout"/>">Đăng Xuất</a></h5>
            <br>
                <c:if test="${user.getChucVu() eq 'ADMIN'}">
                <h5><a href="<c:url value="admin/product?index=1"/> "> ADMIN </a></h5>
                </c:if>
            </c:if>

        </div>


        <ul>
            <h5><a href="<c:url value="/Signin" />"><i class="fa fa-user"></i></a></h5>
        </ul>



    </div>
</div>
<!-- header begin -->
<header>

    <div class="container">
        <div class="row">
            <div class="col-md-12 menu_big">
                <!-- logo begin -->
                <h1 id="logo">
                    <a href="<c:url value="/home"/>">
                        <img class="logo" src="images/logo.png" alt="">
                    </a>
                </h1>
                <!-- logo close -->

                <!-- small button begin -->
                <span id="menu-btn"></span>
                <!-- small button close -->

                <!-- mainmenu begin -->
                <nav>
                    <ul id="mainmenu">
                        <li><a href="<c:url value="/home"/> ">Trang Chủ</a>

                        </li>
                        <li><a href="<c:url value="/projects"/>">Thiết kế</a></li>


                        <li><a href="<c:url value="/about"/> ">Về Chúng Tôi</a></li>

                        <li><a href="Products?index=1">Sản Phẩm</a></li>
                        <li><a href="<c:url value="/contact"/> ">Liên Hệ</a></li>

                    </ul>
                    <div>

                        <ul id="menu-bar">
                            <li>

                                <p class="cart">
                                    <c:if test="${empty user}">

                                    <a href="<c:url value="/Signin?message=you_need_to_login&alert=danger"/> ">


                                        <i class="fa fa-shopping-cart">
                                        </i>
                                    </a>
                            </c:if>
                                    <c:if test="${ not empty user}">

                                        <a href="<c:url value="/print"/>">


                                            <i class="fa fa-shopping-cart">
                                            </i>
                                        </a>
                                    </c:if>
                                </p>

                            </li>
                        </ul>
                    </div>
                </nav>

            </div>
            <!-- mainmenu close -->

        </div>
    </div>
</header>
<script>
    function myFunction() {
        var a = document.getElementById('itemUserr');
        if (a.style.display == "block") {
            a.style.display = "none";
        } else {
            a.style.display = "block";
        }
    }

</script>
<!-- header close -->



