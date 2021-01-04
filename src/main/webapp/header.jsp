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
            if (username != null) {
        %>
        <div style="display: flex; justify-content: space-between">
            <div class="infoUser">
                <h5 style="color: blue" class="helloUser">Xin Chào: <%= username%>
                </h5>
                <ul class="itemUser">
                    <li>Thông Tin Cá Nhân</li>
                    <li>Giỏ Hàng</li>
                    <li>Thông Báo</li>
                </ul>
            </div>
            <h5><a href="logout">Đăng Xuất</a></h5>
        </div>
        <%
        } else {
        %>
        <ul>
            <h5><a href="login.jsp"><i class="fa fa-user"></i></a></h5>
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
                    <a href="index-2.jsp">
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
                        <li><a href="index-2.jsp">Trang Chủ</a>

                        </li>
                        <li><a href="projects.jsp">Thiết kế</a></li>
                        <li>
                            <a href="tintuc.jsp">Tin tức</a>

                        </li>

                        <li><a href="about.jsp">Về Chúng Tôi</a></li>

                        <li><a href="Products?index=1">Sản Phẩm</a></li>
                        <%--                        <li><a href="products.jsp">Sản Phẩm</a></li>--%>
                        <li><a href="contact.jsp">Liên Hệ</a></li>

                    </ul>
                    <div>

                        <ul id="menu-bar">
                            <li>
                                <form action="Products" method="get">
                                    <p id="search">
                                        <i onmouseout="searchOut()" onmouseover="search()" class="fa fa-search">
                                            <input placeholder="Tìm Kiếm..." style="display: none;" id="input-search"
                                                   type="search" class="input-text">
                                        </i>
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



