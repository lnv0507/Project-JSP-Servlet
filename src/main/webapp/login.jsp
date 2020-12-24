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
        <div class="header-banner">
            <div class="header-banner-item">
                <div class="search">
                    <span> <i class="fa fa-envelope-square icon-email"></i> Email: daihocnonglam@hcmuaf.edu.vn </span>
                </div>
            </div>
            <div class="header-banner-item">
                <ul>
                    <h5><a href="login.jsp"><i class="fa fa-user"></i></a></h5>
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
                                <li><a href="projects.jsp">Dự Án</a></li>
                                <li>
                                    <a href="tintuc.jsp">Tin tức</a>

                                </li>
                                <li><a href="about.jsp">Về Chúng Tôi</a></li>
                                <li><a href="shop.jsp">Sản Phẩm</a></li>
                                <li><a href="contact.jsp">Liên Hệ</a></li>

                            </ul>
                            <div>

                                <ul id="menu-bar">
                                    <li>
                                        <p id="search">
                                            <i onmouseout="searchOut()" onmouseover="search()" class="fa fa-search">
                                                    <input placeholder="Tìm Kiếm..." style="display: none;" id="input-search" type="text" class="input-text">
                                                </i>
                                        </p>
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
        <div id="content" class="no-bottom no-top">
            <!-- subheader -->

            <!-- subheader close -->

            <!-- content begin -->
            <div id="content" class="no-bottom no-top">
                <section class="background-login">
                    <div class="login-wrap">
                        <div class="login-jsp">
                            <input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab"><a href="#">Đăng Nhập</a></label>
                            <input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab"><a href="register.jsp">Đăng Ký</a></label>
                            <div class="login-form">
                                <div class="sign-in-htm">
                                    <div class="group">
                                        <label for="user" class="label">Tài Khoản</label>
                                        <input id="user" type="text" class="input">
                                    </div>
                                    <div class="group">
                                        <label for="pass" class="label">Mật Khẩu</label>
                                        <input id="pass" type="password" class="input" data-type="password">
                                    </div>
                                    <div class="group">
                                        <input id="check" type="checkbox" class="check">
                                        <label for="check"><span class="icon"></span>Lưu Đăng Nhập</label>
                                    </div>
                                    <div class="group">
                                        <input type="submit" class="button" value="Sign In" onclick="signIn()">
                                    </div>
                                    <div class="hr"></div>
                                    <div class="foot-lnk">
                                        <a href="forgot.jsp">Quên Mật Khẩu?</a>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </section>
                <!-- footer begin -->
                <footer>
                    <div class="container">
                        <div class="row">
                            <div class="col-md-4">
                                <img src="images/logo.png" class="logo-small" alt=""><br> Xin chào! Chắc hẳn AnhEm Clothing còn là một cái tên khá mới đối với nhiều người, sau đây là một số thông tin giúp bạn có thể hiểu rõ hơn về đơn vị của chúng tôi:
                                AnhEm Clothing được thành lập vào ngày 17-7-2020, cửa hàng được đặt tại thành phố Hồ Chí Minh, với 4 thành viên sáng lập. Đây là đơn vị chuyên cung cấp các mặt hàng thời trang chính hãng có tên tuổi trên toàn thế giới giúp
                                cho bạn luôn có một phong cách hiện đại, thời thượng và luôn an tâm về chất lượng mà sản phẩm mang lại.
                            </div>

                            <div class="col-md-4">
                                <div class="widget widget_recent_post">
                                    <h3>Tin Tức Khách Hàng</h3>
                                    <ul>
                                        <li><a href="#">5 Điều Hoàn Hảo</a></li>
                                        <li><a href="#">Làm Tốt Sản Phẩm Cho Khách Hàng</a></li>
                                        <li><a href="#">Liên Hệ Chúng Tôi</a></li>
                                        <li><a href="#">Có 0 Năm Kinh Nghiệm Nhưng Sản Phẩm Luôn Chất Lượng</a></li>
                                        <li><a href="#">Web Chuyên Bán Nội Thất Sang Chảnh</a></li>
                                    </ul>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <h3>Liên Hệ</h3>
                                <div class="widget widget-address">
                                    <address>
                            <span>Đại Học Nông Lâm</span>
                            <span><strong>SĐT:</strong>(84) 937 983 205</span>
                            <span><strong>SLH:</strong>(84) 937 983 205</span>
                            <span><strong>Email:</strong><a href="18130121@st.hcmuaf.edu.vn">lamdilinh.nguyen@gmail.com</a></span>
                            <span><strong>Web:</strong><a href="#">http://anhemclothing.ga/</a></span>
                        </address>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="subfooter">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-6">
                                    &copy; Copyright 2020
                                </div>
                                <div class="col-md-6 text-right">
                                    <div class="social-icons">
                                        <a href="#"><i class="fa fa-facebook fa-lg"></i></a>
                                        <a href="#"><i class="fa fa-twitter fa-lg"></i></a>
                                        <a href="#"><i class="fa fa-rss fa-lg"></i></a>
                                        <a href="#"><i class="fa fa-google-plus fa-lg"></i></a>
                                        <a href="#"><i class="fa fa-skype fa-lg"></i></a>
                                        <a href="#"><i class="fa fa-dribbble fa-lg"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
            </div>
            </footer>
            <!-- footer close -->
        </div>
    </div>



    <!-- style switcher
================================================== -->
    <script src="js/switcher.jsp"></script>
    <script src="//cdn.jsdelivr.net/npm/less"></script>

    <!-- <div id="switcher">
    <span class="custom-close"></span>
    <span class="custom-show"></span>

    <span class="sw-title">Header Style</span>
    <select name="switcher" id="de-header">
    <option value="opt-1" selected>Solid</option>
    <option value="opt-2">Transparent</option>
</select>

    <div class="clearfix"></div>

    <span class="sw-title">Menu Style</span>
    <select name="switcher" id="de-menu">
    <option value="opt-1" selected>Dotted Separator</option>
    <option value="opt-2">Line Separator</option>
    <option value="opt-3">Circle Separator</option>
    <option value="opt-4">Square Separator</option>
    <option value="opt-5">Plus Separator</option>
    <option value="opt-6">Strip Separator</option>
    <option value="opt-0">No Separator</option>
</select>

    <div class="clearfix"></div>

    <span class="sw-title">Color :</span>
    <ul id="de-color">
        <li class="bg1"></li>
        <li class="bg2"></li>
        <li class="bg3"></li>
        <li class="bg4"></li>
        <li class="bg5"></li>
        <li class="bg6"></li>
        <li class="bg7"></li>
        <li class="bg8"></li>
        <li class="bg9"></li>
        <li class="bg10"></li>
    </ul>
</div> -->

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
        $(document).ready(function() {
            $('#search').hover(function() {
                $('#input-search').fadeToggle(300);
                $('#mainmenu').toggle(1000);
            });
        });
    </script>

</body>

<!-- Mirrored from www.themenesia.com/themeforest/archi-light/contact.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 29 Jul 2015 14:09:50 GMT -->

</html>