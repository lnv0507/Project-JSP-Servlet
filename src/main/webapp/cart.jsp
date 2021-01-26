<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<!-- Mirrored from www.themenesia.com/themeforest/archi-light/ by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 29 Jul 2015 14:03:59 GMT -->
<!-- Mirrored from www.themenesia.com/themeforest/archi-light/contact.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 29 Jul 2015 14:09:50 GMT -->

<head>
    <meta charset="utf-8">
    <title>Archi - Responsive Interior Design Template</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Responsive Minimal Bootstrap Theme">
    <meta name="keywords" content="onepage,responsive,minimal,bootstrap,theme">
    <meta name="author" content="">


    <!-- CSS Files
================================================== -->
    <link rel="stylesheet" href="css/bootstrap.css" type="text/css">
    <link rel="stylesheet" href="css/jpreloader.css" type="text/css">
    <link rel="stylesheet" href="css/animate.css" type="text/css">
    <link rel="stylesheet" href="css/plugin.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.css" type="text/css">
    <link rel="stylesheet" href="css/owl.theme.css" type="text/css">
    <link rel="stylesheet" href="css/owl.transitions.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
    <link rel="stylesheet" href="demo/demo.css" type="text/css">

    <!-- custom background -->
    <link rel="stylesheet" href="css/bg.css" type="text/css">

    <!-- color scheme -->
    <link rel="stylesheet" href="css/color.css" type="text/css" id="colors">

    <!-- revolution slider -->
    <link rel="stylesheet" href="rs-plugin/css/settings.css" type="text/css">
    <link rel="stylesheet" href="css/rev-settings.css" type="text/css">

    <!-- load fonts -->
    <link rel="stylesheet" href="fonts/font-awesome/css/font-awesome.css" type="text/css">
    <link rel="stylesheet" href="fonts/elegant_font/HTML_CSS/style.css" type="text/css">
    <link rel="stylesheet" href="fonts/elegant_font/HTML_CSS/lte-ie7.js" type="text/css">
    <style type="text/css">
        td {
            vertical-align: middle;
        }

        .background_item {
            background-color: #fff;
        }

        .btn-info {
            background-color: #fab702;
            border: #fab702;
        }

        .btn-info:hover {
            background-color: black;
            color: #fab702;
        }

        .btn-danger {
            background-color: black;
            color: #fab702;
            border: #333;
        }

        .btn-danger:hover {
            background-color: #fab702;
            color: red;
        }

        tfoot td a {
            color: black !important;
        }

        tfoot td a:hover {
            background-color: black !important;
            color: #fab702 !important;
        }

        .btn-success {
            background-color: #fab702;
            border: #fab702;
            width: 150px;
            display: flex;
            justify-content: space-around;
        }

        @media screen and (max-width: 600px) {
            table#cart tbody td .form-control {
                width: 20%;
                display: inline !important;
            }

            .actions .btn {
                width: 36%;
                margin: 1.5em 0;
            }

            .actions .btn-info {
                float: left;
            }

            .actions .btn-danger {
                float: right;
            }

            table#cart thead {
                display: none;
            }

            table#cart tbody td {
                display: block;
                padding: .6rem;
                min-width: 320px;
            }

            table#cart tbody tr td:first-child {
                background: #333;
                color: #fff;
            }

            table#cart tbody td:before {
                content: attr(data-th);
                font-weight: bold;
                display: inline-block;
                width: 8rem;
            }

            table#cart tfoot td {
                display: block;
            }

            table#cart tfoot td .btn {
                display: block;
            }

            .btn-success {
                width: 100%;
            }
        }
    </style>
</head>
<body class="page-contact">
<div id="wrapper">
    <%--        Header Bigin--%>
    <%@include file="header.jsp" %>

    <!-- header close -->

    <!-- subheader -->
    <div id="content" class="no-bottom no-top">
        <section id="subheader" data-speed="8" data-type="background">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h1>giỏ hàng</h1>
                        <ul class="crumb">
                            <li><a href="index-2.jsp">HOME</a></li>
                            <li class="sep">/</li>
                            <li>Giỏ Hàng</li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>
        <!-- subheader close -->

        <!-- content begin -->
        <div class="background_item">
            <h2 class="text-center container">Giỏ Hàng</h2>
            <div class="container">
                <table id="cart" class="table table-hover table-condensed">
                    <thead>
                    <tr>
                        <th style="width:40%">Tên sản phẩm</th>
                        <th style="width:10%">Giá</th>
                        <th style="width:10%">Số lượng</th>
                        <th style="width:22%" class="text-center">Thành tiền</th>
                        <th style="width:10%">Phí Ship</th>
                        <th style="width:10%"></th>
                        <th style="width:10%">Action</th>
                    </tr>

                    </thead>
                    <tbody>
                    <c:forEach items="${list}" var="o">
                        <tr>
                            <td data-th="Product">
                                <div class="row">
                                    <div class="col-sm-2 hidden-xs"><img src="images/products/${o.getImages().get(0)}" alt="Sản phẩm 1"
                                                                         class="img-responsive" width="100">
                                    </div>
                                    <div class="col-sm-10">
                                        <p class="nomargin">${o.tenProduct}</p>
<%--                                        <p>Mô tả của sản phẩm 1</p>--%>
                                    </div>
                                </div>
                            </td>
                            <input type="hidden" value="${o.idProduct}" name="idPro">
                            <td data-th="Price">${o.giaTien}</td>
                            <td class="actions" data-th="">
                                <a href="sub?id=${o.idProduct}"><button class="btnSub">-</button></a>
                                <strong>${o.amount}</strong>
                                <a href="cart?id=${o.idProduct}"><button class="btnAdd">+</button></a>
                            </td>
                            <td data-th="Subtotal" class="text-center">${tinhtien}</td>
                            <td data-th="Subtotal" class="text-center">Freeship</td>
                            <td data-th="Subtotal" class="text-center"></td>
                            <td class="align-middle"><a href="remove?id=${o.idProduct}" class="text-dark">
                                <button type="button" class="btn btn-danger">Delete</button>
                            </a>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                    <tfoot>
                    <tr class="visible-xs">
                        <td class="text-center"><strong>${total}</strong>
                        </td>
                    </tr>
                    <tr>
                        <td><a href="Products?index=1" class="btn btn-warning"><i class="fa fa-angle-left"></i> Tiếp tục mua
                            hàng</a>
                        </td>
                        <td colspan="2" class="hidden-xs"></td>
                        <td class="hidden-xs text-center"><strong>${sum}</strong>
                        </td>
                        <td></td>
                        <td></td>

                        <td>
                            <a href="<c:url value="/checkout.jsp"/> " class="btn btn-success btn-block">
                                <span>Thanh toán </span><i class="fa fa-angle-right"></i></a>
                        </td>
                    </tr>
                    </tfoot>
                </table>
            </div>
        </div>
        <!-- footer begin -->
        <%@include file="footer.jsp" %>

        <!-- footer close -->
</body>


</html>
