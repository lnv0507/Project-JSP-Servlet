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


    <!--[if lt IE 9]>
    <script src="js/jsp5shiv.js"></script>
    <![endif]-->

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
    <link rel="stylesheet" type="text/css" href="css/profile.css">

    <!-- load fonts -->
    <link rel="stylesheet" href="fonts/font-awesome/css/font-awesome.css" type="text/css">
    <link rel="stylesheet" href="fonts/elegant_font/HTML_CSS/style.css" type="text/css">
    <link rel="stylesheet" href="fonts/et-line-font/style.css" type="text/css">

    <!-- revolution slider -->
    <link rel="stylesheet" href="rs-plugin/css/settings.css" type="text/css">
    <link rel="stylesheet" href="css/rev-settings.css" type="text/css">

</head>

<body id="homepage">

<div id="wrapper">
    <%@include file="header.jsp" %>
    <!-- header close -->

    <div id="content" class="no-bottom no-top">
        <section id="subheader" data-speed="8" data-type="background">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h1>Hồ Sơ Cá Nhân</h1>
                        <ul class="crumb">
                            <li><a href="index-2.jsp">Trang Chủ</a></li>
                            <li class="sep">/</li>
                            <li>
                                <a style="color: aliceblue;" href="products.jsp">Hồ Sơ Cá Nhân</a></li>


                        </ul>
                    </div>
                </div>
            </div>
        </section>


        <!-- content begin -->
        <div class="profile">
            <div class="profile-account">
                <div>
                    <i class="fa fa-user"></i>
                    <span>lamlam0633</span>
                </div>
                <div>
                    <ul>
                        <li class="account-user"><i class="fa fa-user"></i> <span> Tài Khoản Của Tôi</span>
                            <ul>
                                <li class="account-item">Hồ Sơ</li>
                                <li class="account-item">Ngân Hàng</li>
                                <li class="account-item">Địa Chỉ</li>
                                <li class="account-item">Đổi Mật Khẩu</li>
                            </ul>
                        </li>
                        <li class="account-user">
                            <i class="fas fa-tags"></i> <span>Đơn Mua</span></li>
                        <li class="account-user"><i class="fas fa-cart-plus"></i> <span>Ví Voucher</span></li>
                    </ul>
                </div>
            </div>
            <div class="profile-infor">
                <div>
                    <h3>Hồ Sơ Của Tôi</h3>
                    <h5>Quản Lý Hồ Sơ</h5>
                </div>
                <div>
                    <form action="">
                        <table>
                            <tr class="infor">
                                <td>Tên Đăng Nhập</td>
                                <td>lamlam0633</td>
                            </tr>
                            <tr class="infor">
                                <td>Tên</td>
                                <td><input type="text"></td>
                            </tr>
                            <tr class="infor">
                                <td>Email</td>
                                <td><a href="">Thêm</a></td>
                            </tr>
                            <tr class="infor">
                                <td>Số Điện Thoại</td>
                                <td>*******05 <a href="">Thay Đổi</a></td>
                            </tr>
                            <tr class="infor">
                                <td>Số Tài Khoản</td>
                                <td><input type="text" value=""></td>
                            </tr>
                            <tr class="infor">
                                <td>Giới Tinh</td>
                                <td>
                                    <input type="checkbox"> Nam
                                    <input type="checkbox"> Nữ
                                    <input type="checkbox"> Khác
                                </td>
                            </tr>
                            <tr class="infor">
                                <td>Ngày Sinh</td>
                                <td>
                                    <input type="date">
                                </td>
                            </tr>
                            <tr class="infor">
                                <td>

                                </td>
                                <td>
                                    <input type="button" value="Lưu">
                                </td>
                            </tr>
                        </table>
                    </form>
                </div>
            </div>
        </div>


        <%@include file="footer.jsp" %>
        <!-- footer close -->
    </div>

</div>

<!-- style switcher
================================================== -->
<script src="js/switcher.jsp"></script>




<!-- Javascript Files
================================================== -->
<script src="js/style.js"></script>
<script src="js/jquery.min.js"></script>
<script src="js/jpreLoader.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.isotope.min.js"></script>
<script src="js/easing.js"></script>
<script src="js/jquery.flexslider-min.js"></script>
<script src="js/jquery.scrollto.js"></script>
<script src="js/owl.carousel.js"></script>
<script src="js/jquery.countTo.js"></script>
<script src="js/classie.js"></script>
<script src="js/video.resize.js"></script>
<script src="js/validation.js"></script>
<script src="js/wow.min.js"></script>
<script src="js/jquery.magnific-popup.min.js"></script>
<script src="js/enquire.min.js"></script>
<script src="js/designesia.js"></script>
<script src="demo/demo.js"></script>

<!-- SLIDER REVOLUTION SCRIPTS  -->
<script type="text/javascript " src="rs-plugin/js/jquery.themepunch.plugins.min.js"></script>
<script type="text/javascript " src="rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
<script>
    $(document).ready(function () {
        $('#search').hover(function () {
            $('#input-search').fadeToggle(500);
            $('#mainmenu').toggle(1000);
        });
    });
</script>
</body>
</html>
