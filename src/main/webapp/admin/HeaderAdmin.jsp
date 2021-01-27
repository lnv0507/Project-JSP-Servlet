<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Nguyen Viet Lam
  Date: 12/27/2020
  Time: 9:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<header>
    <nav id="navbar-container" class="navbar navbar- navbar-fixed-top">
        <div class="container-fluid">


            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li style="border-right: 1px solid #E1E1E1; padding-right: 15px;">
                        <label style="margin: 13px 15px; color: white">
                            Shop Nội Thất LQH
                        </label>
                    </li>

                    <li class="dropdown user-profile">
                        <% String name = (String) session.getAttribute("tendangnhap");
                            if (name != null) {
                        %>
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                           aria-expanded="false"><span class="hello">Xin chào, </span><%=name%><span
                                class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="<c:url value="/profile"/> "><i class="fa fa-user"></i>Tài khoản</a></li>
                            <li><a href="<c:url value="/logout"/>"><i class="fa fa-power-off"></i>Thoát</a></li>
                        </ul>
                        <%
                            }
                        %>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</header>
<section class="main" role="main">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-2 padd-0">
                <div class="sidebar sidebar-fixed hidden-xs hidden-sm hidden-md" id="sidebar">

                    <ul class="nav nav-pills nav-list nav-stacked">

                        <li  id="dashboard"><a href="Trangchu.jsp"
                                              style=" color: white;background-color: #33CB82!important;" name="btnAction"><i
                                class="fa fa-gg-circle"></i><b >Trang Chủ</b></a></li>
                        <li id="orders"><a href="DonHang.jsp" name="btnAction"><i class="fa fa-shopping-cart"></i><b>Đơn hàng</b></a>
                        </li>
                        <li id="product"><a href="<c:url value="/admin/product?index=1"/>" name="btnAction"><i class="fa fa-product-hunt"></i><b>Sản phẩm</b></a>
                        </li>
                        <li id="customer"><a href="<c:url value="/admin/createAcount"/>" name="btnAction"><i class="fa fa-users"></i><b>Khách hàng</b></a></li>
                        <li id="inventory"><a href="TonKho.jsp" name="btnAction"><i class="fa fa-list-alt"></i><b>Tồn kho</b></a></li>
                        <li id="contact"><a href="LienHe.jsp" name="btnAction"><i class="fa fa-user"></i><b>Liên Hệ</b></a></li>
                        <li id="config"><a href="<c:url value="ThietLap.jsp"/> " name="btnAction"><i class="fa fa-empire"></i><b>Thiết Kế</b></a></li>
                        <img id="dend" style="width: 150px; height: 100px; margin-left: 10px" src="images/logodend.png"
                             alt=" ">
                    </ul>
                </div>
            </div>

