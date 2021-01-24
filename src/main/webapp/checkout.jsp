<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<!-- Mirrored from www.themenesia.com/themeforest/archi-light/ by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 29 Jul 2015 14:03:59 GMT -->

<head>
    <meta charset="utf-8">
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

<div id="homepage">

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


        <body id="content" class="no-bottom no-top">

        <!-- content begin -->
        <!-- Checkout Start -->
        <div class="checkout" style="background-color: #fff;">
            <div class="container">
                <h2>ĐƠN HÀNG CỦA BẠN</h2>

                <!-- Checkout Inner Start -->
                <div class="checkout-inner">
                    <form action="order" method="POST">
                        <div class="checkout-form-steps">
                            <h4 style="    color: #ff9800;">Chi tiết Cá nhân</h4>
                            <input type="text" class="textfield" placeholder="Tên của bạn" required="" name="txtName"
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
                            <h4 style="    color: #ff9800;">Đơn Vị Vận Chuyển</h4>
                            <label for="radio1">
                                <input type="radio" name="shippingoptions" id="radio1">
                                Giao Hàng Nhanh
                            </label>
                            <label for="radio2">
                                <input type="radio" name="shippingoptions" id="radio2">
                                Giao Hàng Tiết Kiệm
                            </label>
                            <label for="radio3">
                                <input type="radio" name="shippingoptions" id="radio3">
                                Ninjja
                            </label>
                        </div>
                        <input type="submit" href="<c:url value="/thanhtoan"/> " class="submitorder-button" value="Nộp đơn đặt hàng">
                    </form>
                </div>
                <!-- Checkout Inner End -->


                <!-- Order List Start-->
                <form action="order" method="post">
                    <div class="orderlist">
                        <c:forEach items="${list}" var="o">
                        <h3>${o.tenProduct}</h3>
                        </c:forEach>
                        <p>Định lượng : <span>${o.amount}</span></p>
                        <p>Giá bán : <span>${o.giaTien}</span></p>
                        <input type="hidden" name="tongtien" value="${sum}"> <p>Tổng đơn đặt hàng: <span> ${sum}</span></p>
                    </div>
                    <!-- Order List End-->
                </form>

            </div>
            <!-- Checkout End -->
            <!-- Product View Box / Quick Product View Start -->
<%--            <div class="productViewBox">--%>
<%--                <h3>Apple Macbook Pro MQ032 14.5' Inter Core i7 5550U 8GB DDR3</h3>--%>
<%--                <div class="productViewBox-closeBtn"><i class="fas fa-times"></i></div>--%>
<%--                <div class="productViewBoxImg">--%>
<%--                    <img src="images/shop/tqa2.jpg">--%>
<%--                </div>--%>
<%--                <div class="productViewBoxDetail">--%>
<%--                    <h5><b>Price : </b> <i class="fas fa-dollar-sign"></i> 598</h5>--%>
<%--                    <h5><b>Brand : </b> Apple</h5>--%>
<%--                    <h5><b>Warranty : </b> 12 Months</h5>--%>
<%--                    <h5><b>Delivery of the city : </b> Free</h5>--%>
<%--                    <h5><b>Payment : </b> COD, Visa, Mastercard, Debit, Credit, Installation</h5>--%>
<%--                    <h5><b>Availability : </b> in Stock</h5>--%>
<%--                    <h5><b>Product Code : </b> GA000006488</h5>--%>
<%--                    <a href="#" class="addtocart"><i class="fas fa-heart"></i> Add to Cart</a>--%>
<%--                    <a href="#" class="writereview"><i class="fas fa-pen"></i> Write a review</a>--%>
<%--                    <a href="#" class="buynow"><i class="fas fa-shopping-cart"></i> Buy Now</a>--%>
<%--                </div>--%>
<%--            </div>--%>
        </div>
        <!-- Product View Box / Quick Product View End -->
        <!-- footer begin -->
        <%@include file="footer.jsp" %>
        <!-- footer close -->


        </body>

        <!-- Mirrored from www.themenesia.com/themeforest/archi-light/shop.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 29 Jul 2015 14:09:50 GMT -->

</html>
