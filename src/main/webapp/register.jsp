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

</head>

<body id="homepage">

<div id="wrapper">
    <%@include file="header.jsp" %>
    <!-- header close -->
    <div id="content" class="no-bottom no-top">
        <!-- subheader -->

        <!-- subheader close -->

        <!-- content begin -->
        <section class="background-login">
            <div class="login-wrap">
                <div class="login-jsp">
                    <input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab"><a
                        href="#">Đăng Ký</a></label>
                    <input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab"><a
                        href="login.jsp">Đăng Nhập</a></label>
                    <div class="login-form">
                        <form action="signup" method="POST">
                            <div class="sign-in-htm">
                                <div class="group">
                                    <label for="user" class="label">Tài Khoản</label>
                                    <input id="user" type="text" class="input" name="txtID">
                                </div>
                                <div class="group">
                                    <label for="pass" class="label">Mật Khẩu</label>
                                    <input id="pass" type="password" class="input" data-type="password" name="password">
                                </div>
                                <div class="group">
                                    <label for="pass" class="label">Nhập Lại Mật Khẩu</label>
                                    <input id="passRepeat" type="password" class="input" data-type="password"
                                           name="repass">
                                </div>
                                <div class="group">
                                    <label for="pass" class="label">Email</label>
                                    <input id="email" name="email" type="text" class="input">
                                </div>
                                <div class="group">
                                    <input type="submit" class="button" onclick="signIn()" value="Sign Up">
                                </div>
                                <div class="hr"></div>
                                <div class="foot-lnk">
                                    <label for="tab-1">Đã Có Tài Khoản?</a>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

        </section>
        <!-- footer begin -->
        <%@include file="footer.jsp" %>
        <!-- footer close -->
    </div>
</div>


<!-- style switcher
================================================== -->
<script src="js/switcher.jsp"></script>
<script src="//cdn.jsdelivr.net/npm/less"></script>


<!-- Javascript Files
================================================== -->
<script src="js/style.js"></script>
<script src="js/jquery.min.js"></script>
<script src="js/jpreLoader.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.isotope.min.js"></script>
<script src="js/easing.js"></script>
<script src="js/jquery.scrollto.js"></script>
<script src="js/owl.carousel.js"></script>
<script src="js/jquery.countTo.js"></script>
<script src="js/classie.js"></script>
<script src="js/validation.js"></script>
<script src="js/wow.min.js"></script>
<script src="js/jquery.magnific-popup.min.js"></script>
<script src="js/enquire.min.js"></script>
<script src="js/designesia.js"></script>
<script src="demo/demo.js"></script>

<!-- SLIDER REVOLUTION SCRIPTS  -->
<script type="text/javascript" src="rs-plugin/js/jquery.themepunch.plugins.min.js"></script>
<script type="text/javascript" src="rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
<script>
    $(document).ready(function () {
        $('#search').hover(function () {
            $('#input-search').fadeToggle(300);
            $('#mainmenu').toggle(1000);
        });
    });
</script>

</body>

<!-- Mirrored from www.themenesia.com/themeforest/archi-light/contact.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 29 Jul 2015 14:09:50 GMT -->

</html>
