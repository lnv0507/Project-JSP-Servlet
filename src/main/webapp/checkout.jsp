<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<!-- Mirrored from www.themenesia.com/themeforest/archi-light/ by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 29 Jul 2015 14:03:59 GMT -->

<head>
    <meta charset="utf-8">
    <jsp:useBean id="t" class="com.dao.VanChuyenDAO" scope="request"/>
    <title>Shop Furniture</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Responsive Minimal Bootstrap Theme">
    <meta name="keywords" content="onepage,responsive,minimal,bootstrap,theme">
    <meta name="author" content="">


    <link rel="stylesheet" type="text/css" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
    <link rel="stylesheet" type="text/css" href="detail/css/style.css">
    <link rel="stylesheet" type="text/css" href="detail/css/owl.carousel.min.css">
    <link rel="stylesheet" type="text/css" href="detail/css/smoothproducts.css">


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
    <link rel="stylesheet" href="shop.css">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body id="homepage">
<div id="wrapper">
    <%--        Header Begin--%>
    <%@include file="header.jsp" %>
    <!-- header close -->

    <!-- subheader -->
    <section id="subheader" data-speed="8" data-type="background">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h1>Sản Phẩm</h1>
                    <ul class="crumb">
                        <li><a href="index-2.jsp">Trang Chủ</a></li>
                        <li class="sep">/</li>
                        <li><a style="color: aliceblue;" href="shop.jsp">Sản Phẩm</a></li>
                        <li class="sep">/</li>

                        <li><a style="color: aliceblue;" href="shop.jsp">ĐƠN HÀNG CỦA BẠN</a></li>


                    </ul>
                </div>
            </div>
        </div>
    </section>
    <!-- subheader close -->


    <div id="content" class="no-bottom no-top">

        <!-- content begin -->
        <!-- Checkout Start -->
        <div class="checkout" style="background-color: #fff;">
            <form action="thanhtoan" method="POST">
                <input type="hidden" value="${user.getIdAccount()}" name="id"/>
                <div class="container">
                    <h2>ĐƠN HÀNG CỦA BẠN</h2>

                    <!-- Checkout Inner Start -->
                    <div class="checkout-inner">

                        <div class="checkout-form-steps">
                            <h4 style="    color: #ff9800;">Chi tiết Cá nhân</h4>

                            <input type="text" class="textfield" placeholder="Tên của bạn" required=""
                                   name="txtName"
                                   id="txtName">
                            <input type="email" class="textfield" placeholder=" Email của bạn" name="txtEmail"
                                   id="txtEmail">
                            <input type="text" class="textfield" placeholder="Số điện thoại của bạn"
                                   name="txtSoDienThoai" id="txtSoDienThoai">
                        </div>
                        <div class="checkout-form-steps">
                            <h4 style="    color: #ff9800;">Địa chỉ giao hàng</h4>
                            <input type="text" class="textfield" placeholder="Địa chỉ đầy đủ" name="txtFullAdr"
                                   id="txtFullAdr">
                        </div>
                        <div class="checkout-form-steps">
                            <h4 style="color: #ff9800;">Đơn Vị Vận Chuyển</h4>
                            <c:forEach items="${t.layDSVanChuyen}" var="o">
                                <label for="radio1">
                                    <input type="radio" name="shippingoptions" id="radio1"
                                           value="${o.getTenDonViVanChuyen()}"
                                    > ${o.getTenDonViVanChuyen()}
                                    <input type="hidden" name="iddonvivanchuyen" value="${o.getMaDonViVanChuyen()}"/>
                                </label>
                            </c:forEach>
                        </div>
                        <input type="submit" href="<c:url value="/thanhtoan"/> " class="submitorder-button"
                               value="Nộp đơn đặt hàng">
                    </div>
                    <!-- Checkout Inner End -->
                    <!-- Order List Start-->
                    <div class="orderlist">
                        <c:forEach items="${list}" var="o">
                            <input type="hidden" name="soluong" value="${o.amount}">
                            <span>

                                        <a href="<c:url value="/ProductDetailController?id=${o.idProduct}"/> ">

                                        <h3>${o.tenProduct} <span> x ${o.amount}</span></h3></a>
                                   </span>
                            <p>Giá bán : <span>${o.giaTien}</span></p>

                        </c:forEach>
                        <input type="hidden" name="tongtien" value="${sum}">
                        <p>Tổng đơn đặt hàng: <span> ${sum}</span></p>
                    </div>
                </div>
                <!-- Order List End-->
                <input type="hidden" name="id" value="">
            </form>
        </div>
    </div>

    <%@include file="footer.jsp" %>
    <!-- footer close -->
</div>
<!-- Mirrored from www.themenesia.com/themeforest/archi-light/shop.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 29 Jul 2015 14:09:50 GMT -->
<!-- Mirrored from www.themenesia.com/themeforest/archi-light/shop.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 29 Jul 2015 14:09:50 GMT -->
</body>

</html>
