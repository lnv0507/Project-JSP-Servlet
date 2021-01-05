<%@ page import="com.dao.ProductDAO" %>
<%@ page import="com.dtos.ProductDTO" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en">
<!-- Mirrored from www.themenesia.com/themeforest/archi-light/ by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 29 Jul 2015 14:03:59 GMT -->
hihihi
<head>
    <jsp:useBean id="t" class="com.dao.ProductDAO" scope="request"/>
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
                        <li><a style="color: aliceblue;" href="products.jsp"> Sản Phẩm</a></li>
                        <li class="sep">/</li>
                        <li>
                            <a style="color: aliceblue;" href="pkhach.jsp">phòng khách </a>
                        </li>


                        <li class="sep">/</li>

                    </ul>
                </div>
            </div>
        </div>
    </section>
    <!-- subheader close -->


    <!-- content begin -->
    <!-- content begin -->
    <div id="content" class="no-bottom no-top">
        <br><br><br><br>
        <div class=" danhmuc ">
            <div class="slick-slider slick-initialized " style="padding-left: 150px;">
                <div class="slick-list ">
                    <div class="slick-track " style="width: 870px; opacity: 1; transform: translate3d(0px, 0px, 0px); ">
                        <div data-index="0 " class="slick-slide slick-active slick-current " tabindex="-1 "
                             aria-hidden="false " style="outline: none; width: 145px;float: left; ">
                            <div>
                                <div class="qNnW6aqnuALd3o_gNDcqn Div-ln5jk2-0 UcezA " display="flex " tabindex="-1 "
                                     style="width: 100%; display: inline-block; ">
                                    <a href="pbep1-xenhabep.jsp">
                                        <div class="ImageShimmer__ImagePlaceHolderWrapper-sc-1uc61-0 dbRlxn "
                                             overflow="auto " height="80px "><img class="Img-sc-1au8jwx-0 iaHwKP "
                                                                                  width="80px " src="https://www.hometown.in/media/cms/icon/Dining-Tables.png
            " alt="Giường " height="auto " display="block "></div>
                                        <label class="Label-sc-1anmpe5-0 gpDkZH " display="block " font-size="0.875rem "
                                               font-style="normal " font-family="regular " type="note "
                                               color="textDark "><font style="vertical-align: inherit;
            "><font style="vertical-align: inherit; ">Xe nhà bếp</font></font></label></a>
                                </div>
                            </div>
                        </div>
                        <div data-index="1 " class="slick-slide slick-active " tabindex="-1 " aria-hidden="false "
                             style="outline: none; width: 145px;float: left; ">
                            <div>
                                <div class="qNnW6aqnuALd3o_gNDcqn Div-ln5jk2-0 UcezA " display="flex " tabindex="-1 "
                                     style="width: 100%; display: inline-block; ">
                                    <a href="pbep2-tubep.jsp">
                                        <div class="ImageShimmer__ImagePlaceHolderWrapper-sc-1uc61-0 dbRlxn "
                                             overflow="auto " height="80px "><img class="Img-sc-1au8jwx-0 iaHwKP "
                                                                                  width="80px " src="https://www.hometown.in/media/cms/hometownnew/banner/storage-sideboard.png
            " alt="Tủ quần áo " height="auto " display="block "></div>
                                        <label class="Lael-sc-1anmpe5-0 gpDkZH " display="block " font-size="0.875rem "
                                               font-style="normal " font-family="regular " type="note "
                                               color="textDark "><font style="vertical-align: inherit;
            "><font style="vertical-align: inherit; ">Tủ bếp </font></font></label></a>
                                </div>
                            </div>
                        </div>
                        <div data-index="2 " class="slick-slide slick-active " tabindex="-1 " aria-hidden="false "
                             style="outline: none; width: 145px;float: left; ">
                            <div>
                                <div class="qNnW6aqnuALd3o_gNDcqn Div-ln5jk2-0 UcezA " display="flex " tabindex="-1 "
                                     style="width: 100%; display: inline-block; ">
                                    <a href="pbep3-bodoan.jsp">
                                        <div class="ImageShimmer__ImagePlaceHolderWrapper-sc-1uc61-0 dbRlxn "
                                             overflow="auto " height="80px "><img class="Img-sc-1au8jwx-0 iaHwKP "
                                                                                  width="80px " src="https://www.hometown.in/media/cms/banner/20150513/Cutlery-Sets.png
            " alt="Bàn đầu giường " height="auto " display="block "></div>
                                        <label class="Label-sc-1anmpe5-0 gpDkZH " display="block " font-size="0.875rem "
                                               font-style="normal " font-family="regular " type="note "
                                               color="textDark "><font style="vertical-align: inherit;
            "><font style="vertical-align: inherit; ">Bộ đồ ăn </font></font></label></a>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>


        <br><br><br><br><br>


        <div class="container">
            <div class="row">

                <div id="sidebar" class="col-md-3">
                    <div class="widget widget_search">
                        <input type='text' name='search' id='search' class="form-control"
                               placeholder="tìm kiếm sản phẩm">
                        <button id="btn-search" type='submit'></button>
                        <div class="clearfix"></div>
                    </div>
                    <div class="widget widget_category">
                        <h4>DANH MỤC SẢN PHẨM</h4>
                        <ul class="product">

                            <li><a href="products.jsp">Tất cả <i class="fa fa-angle-right"
                                                                 style="padding-top:5px ;"></i> </a></li>
                            <li><a href="pngu.jsp"> Nội thất phòng ngủ <i class="fa fa-angle-right"
                                                                          style="padding-top:5px ;"></i> </a></li>
                            <li><a href="pkhach.jsp">Nội thất phòng khách <i class="fa fa-angle-right"
                                                                             style="padding-top:5px ;"></i> </a></li>
                            <li><a href="products.jsp">Nội thất phòng ăn <i class="fa fa-angle-right"
                                                                            style="padding-top:5px ;"></i> </a></li>

                            <li><a href="ptreem.jsp">nội thất trẻ em <i class="fa fa-angle-right"
                                                                        style="padding-top:5px ;"></i> </a></li>
                            <li><a href="trangtri.jsp">Đồ trang trí<i class="fa fa-angle-right"
                                                                      style="padding-top:5px ;"></i> </a></li>
                        </ul>
                    </div>


                    <div class="widget widget_top_rated_product">
                        <h4>Các SẢN PHẨM mới NHẤT </h4>
                        <ul>
                            <c:forEach items="${t.top5}" var="o">
                                <li>

                                    <a href="product-details.jsp">
                                        <img src="images/shop/6.jpg" alt="">
                                        <div class="text">
                                                ${o.tenProduct}
                                            <div class="price">${o.giaTien}</div>
                                            <a href="cart.jsp " data-tip="Thêm vào giỏ hàng "><i
                                                    style="color:  #FAB702;" class="fa fa-shopping-cart "></i></a>

                                        </div>
                                    </a>
                                </li>
                            </c:forEach>
                        </ul>

                    </div>

                </div>

                <div class="col-md-9">
                    <div class="row">

                        <div class="row " style="padding-left: 30px;">

                            <%--                                        product--%>
                            <c:forEach items="${data}" var="d">
                                <div class="col-md-3 col-sm-6 ">
                                    <div class="product-grid ">
                                        <div class="product-image ">
                                            <a href="product-details.jsp">
                                                <img class="pic-1 "
                                                     src="${pageContext.request.contextPath}/images/products/${d.getImages().get(0)}">
                                                <img class="pic-2 "
                                                     src="${pageContext.request.contextPath}/images/products/${d.getImages().get(0)}">
                                            </a>
                                            <!-- <span class="product-trend-label ">Mới</span> -->

                                            <ul class="social ">
                                                <li><a href="cart.jsp " data-tip="Thêm vào giỏ hàng "><i
                                                        class="fa fa-shopping-cart "></i></a></li>
                                                <li><a href="# " data-tip="Thích "><i class="fa fa-heart "></i></a></li>
                                                <li><a href="# " data-tip="So sánh "><i class="fa fa-random "></i></a>
                                                </li>
                                                <li><a href="product-details.jsp " data-tip="Xem thêm "><i
                                                        class="fa fa-search "></i></a></li>
                                            </ul>
                                        </div>
                                        <div class="product-content ">
                                            <h3 class="title ">
                                                <a href="ProductDetailController?id=${d.getIdProduct()}">"${d.tenProduct}"</a>

                                            </h3>
                                            <div class="price  ">${d.giaTien}</div>
                                        </div>
                                    </div>
                                </div>

                            </c:forEach>

                            <%--end product--%>


                            <!-- end -->

                        </div>
                        <div class="otherInfo ">

                            <ul class="pagination">
                                <c:forEach begin="1" end="${endPage}" var="i">
                                    <a href="Products?index=${i}">${i}</a>
                                </c:forEach>
                            </ul>
                            <div class="otherInfoBody ">
                                <div class="col-md-3 col-sm-6 ">
                                    <div class="product-grid ">
                                        <div class="product-image ">
                                            <a href="giuong.jsp ">
                                                <img class="pic-1 " src="images/shop/bankhach15.jpg ">
                                                <img class="pic-2 " src="images/shop/bankhach15.jpg ">
                                            </a>
                                            <span class="product-trend-label ">Mới</span>

                                            <ul class="social ">
                                                <li><a href="cart.jsp " data-tip="Thêm vào giỏ hàng "><i
                                                        class="fa fa-shopping-cart "></i></a></li>
                                                <li><a href="# " data-tip="Thích "><i class="fa fa-heart "></i></a></li>
                                                <li><a href="# " data-tip="So sánh "><i class="fa fa-random "></i></a>
                                                </li>
                                                <li><a href="product-details.jsp " data-tip="Xem thêm "><i
                                                        class="fa fa-search "></i></a></li>
                                            </ul>
                                        </div>
                                        <div class="product-content ">
                                            <h3 class="title "><a href="pkhach-ban.jsp">Kệ Tivi MFC Màu Xám </a></h3>
                                            <div class="price ">1.890.000 đ</div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>


                    </div>

                </div>


            </div>

        </div>


        <div class="phobien ">
            <!-- Greatest Offer News Start -->
            <div class="news " style="background-color: white; ">
                <div class="container ">
                    <h4 style="text-align: center; font-weight: bolder; ">SẢN PHẨM BÁN CHẠY NHẤT TRONG DANH MỤC NÀY</h4>
                    <div class="owl-carousel ">

                        <div class="item ">
                            <div class="product-grid ">
                                <div class="product-image ">
                                    <a href="giuong.jsp ">
                                        <img class="pic-1 " src="images/shop/ketivi21.jpg ">
                                        <img class="pic-2 " src="images/shop/ketivi20.jpg ">
                                    </a>
                                    <span class="product-trend-label ">Mới</span>

                                    <ul class="social ">
                                        <li><a href="cart.jsp " data-tip="Thêm vào giỏ hàng "><i
                                                class="fa fa-shopping-cart "></i></a></li>
                                        <li><a href="# " data-tip="Thích "><i class="fa fa-heart "></i></a></li>
                                        <li><a href="# " data-tip="So sánh "><i class="fa fa-random "></i></a></li>
                                        <li><a href="product-details.jsp " data-tip="Xem thêm "><i
                                                class="fa fa-search "></i></a></li>
                                    </ul>
                                </div>
                                <div class="product-content ">
                                    <h3 class="title "><a href="# ">Giường GD1</a></h3>
                                    <div class="price ">$100</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="support ">


        </div>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js "></script>
        <script src="https://unpkg.com/flickity@2/dist/flickity.pkgd.min.js "></script>


        <!-- footer begin -->
        <%@include file="footer.jsp" %>
        <!-- footer close -->
    </div>
</div>

<!-- style switcher
================================================== -->
<script src="js/switcher.jsp "></script>
<script src="detail/js/switcher.jsp "></script>
<script src="detail/js/jquery-3.3.1.min.js "></script>
<script src="detail/js/jquery.cycle.js "></script>
<script src="detail/js/owl.carousel.min.js "></script>
<script src="detail/js/smoothproducts.min.js "></script>
<script>
    $("#sliderShuffle ").cycle({
        next: '#next',
        prev: '#prev'
    });

    $('.owl-carousel').owlCarousel({
        items: 4,
        loop: true,
        margin: 15,
        autoplay: true,
        autoplayTimeout: 3000, //3 Second
        nav: true,
        responsiveClass: true,
        responsive: {
            0: {
                items: 1,
                nav: true
            },
            600: {
                items: 3,
                nav: true
            },
            1000: {
                items: 4,
                nav: true
            }
        }

    });

    $(function () {
        $(".topbar ul li ").click(function () {
            $(".topbar ul li ").not(this).find("ul ").slideUp();
            $(this).find("ul ").slideToggle();
        });
        $(".topbar ul li ul li, productCategories ul li .megamenu ").click(function (e) {
            e.stopPropagation();
        });
        $(".productCategories ul li ").click(function () {
            $(".productCategories ul li ").not(this).find(".megamenu ").hide();
            $(this).find(".megamenu ").toggle();
        });
        $(".otherInfoBody ").hide();
        $(".otherInfoHandle ").click(function () {
            $(".otherInfoBody ").slideToggle();
        });
        $(".signBtn ").click(function () {
            $("body ").css("overflow ", "hidden ");
            $(".loginBox ").slideDown();
        });
        $(".closeBtn ").click(function () {
            $("body ").css("overflow ", "visible ");
            $(".loginBox ").slideUp();
        });
        $(".productViewBtn ").click(function (e) {
            e.preventDefault();
            $("body ").css("overflow ", "hidden ");
            $(".productViewBox ").slideDown();
        });
        $(".productViewBox-closeBtn ").click(function () {
            $("body ").css("overflow ", "visible ");
            $(".productViewBox ").slideUp();
        });

        $(".sp-wrap ").smoothproducts();
    });
    //-----------------------------------------------------------------------
    //JQUERY IN SEARCH----------------------------------------
    $(document).ready(function () {
        $('#search').hover(function () {
            $('#input-search').fadeToggle(500);
            $('#mainmenu').toggle(1000);
        });
    });
    //-----------------------------------
</script>


<!-- Javascript Files
================================================== -->
<script src="js/style.js "></script>
<script src="js/jquery.min.js "></script>
<script src="js/jpreLoader.js "></script>
<script src="js/bootstrap.min.js "></script>
<script src="js/jquery.isotope.min.js "></script>
<script src="js/easing.js "></script>
<script src="js/jquery.flexslider-min.js "></script>
<script src="js/jquery.scrollto.js "></script>
<script src="js/owl.carousel.js "></script>
<script src="js/jquery.countTo.js "></script>
<script src="js/classie.js "></script>
<script src="js/video.resize.js "></script>
<script src="js/validation.js "></script>
<script src="js/wow.min.js "></script>
<script src="js/jquery.magnific-popup.min.js "></script>
<script src="js/enquire.min.js "></script>
<script src="js/designesia.js "></script>
<script src="demo/demo.js "></script>

<!-- SLIDER REVOLUTION SCRIPTS  -->
<script type="text/javascript " src="rs-plugin/js/jquery.themepunch.plugins.min.js "></script>
<script type="text/javascript " src="rs-plugin/js/jquery.themepunch.revolution.min.js "></script>
</body>

<!-- Mirrored from www.themenesia.com/themeforest/archi-light/products.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 29 Jul 2015 14:09:50 GMT -->

</html>

