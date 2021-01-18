<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Nguyen Viet Lam
  Date: 12/26/2020
  Time: 9:26 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.dtos.AccountDTO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

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
        <%
            String username = (String) session.getAttribute("tendangnhap");
            AccountDTO ac = (AccountDTO) session.getAttribute("account");

            if (username != null) {
        %>
        <div class="info-mation">

            <h5 class="helloUser" style="color: white">
                <div id="name"> Xin Chào: <%=username%>
                </div>
                <ul id="itemUserr">
                    <li>
                        <a href=" <c:url value="/profile"/> ">Thông Tin Cá Nhân</a>
                    </li>
                    <li>Giỏ Hàng</li>
                    <li>Thông Báo</li>
                </ul>
            </h5>

            <h5><a href="<c:url value="/logout"/>">Đăng Xuất</a></h5>
            <br>
            <%
                String chucVu = (String) session.getAttribute("chucvu");
                if (chucVu.equalsIgnoreCase("ADMIN")) {

            %>
            <h5><a href="<c:url value="admin/addproduct"/> "> ADMIN </a></h5>
            <%
                }
            %>
        </div>

        <%
        } else {
        %>
        <ul>
            <h5><a href="<c:url value="/Signin" />"><i class="fa fa-user"></i></a></h5>
        </ul>
        <% }
        %>


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
                                <form action="Search" method="get">
                                    <p id="search">
                                        <a href="Search.jsp">
                                            <i class="fa fa-search"></i>
                                        </a>
                                    </p>
                                </form>
                                <p class="cart">
                                    <a href="cart.jsp">
                                        <i class="fa fa-shopping-cart">
                                        </i>
                                    </a>
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
<!-- header close -->



