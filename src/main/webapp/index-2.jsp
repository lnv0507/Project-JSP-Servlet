<%@ page import="com.dtos.AccountDTO" %>
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
    <jsp:useBean id="t" class="com.dao.ProductDAO" scope="request"/>

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

</head>

<body id="homepage">

<div id="wrapper">
    <%--    Header Open  --%>
    <%@include file="header.jsp" %>
    <%--    Header Close--%>
    <!-- content begin -->
    <div id="content" class="no-bottom no-top">

        <!-- revolution slider begin -->
        <section id="section-slider" class="fullwidthbanner-container">
            <div id="revolution-slider">
                <ul>
                    <li data-transition="fade" data-slotamount="10" data-masterspeed="200" data-thumb="">
                        <!--  BACKGROUND IMAGE -->
                        <img src="images-slider/wide1.jpg" alt=""/>
                        <div class="tp-caption big-white sft" data-x="0" data-y="160" data-speed="800" data-start="400"
                             data-easing="easeInOutExpo" data-endspeed="450">
                            Với Chuyên Môn Giỏi
                        </div>

                        <div class="tp-caption ultra-big-white customin customout start" data-x="0" data-y="center"
                             data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:2;scaleY:2;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                             data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.85;scaleY:0.85;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                             data-speed="800" data-start="400" data-easing="easeInOutExpo" data-endspeed="400">
                            Nhà Thiết Kế Nội Thất
                        </div>

                        <div class="tp-caption sfb" data-x="0" data-y="335" data-speed="400" data-start="800"
                             data-easing="easeInOutExpo">
                            <a href="projects.jsp" class="btn-slider">Xem Thiết Kế
                            </a>
                        </div>
                    </li>

                    <li data-transition="fade" data-slotamount="10" data-masterspeed="200" data-thumb="">
                        <!--  BACKGROUND IMAGE -->
                        <img src="images-slider/wide2.jpg" alt=""/>
                        <div class="tp-caption big-white sft" data-x="0" data-y="160" data-speed="800" data-start="400"
                             data-easing="easeInOutExpo" data-endspeed="450">
                            Sản Phẩm Đặc Trưng
                        </div>

                        <div class="tp-caption ultra-big-white customin customout start" data-x="0" data-y="center"
                             data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:2;scaleY:2;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                             data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.85;scaleY:0.85;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                             data-speed="800" data-start="400" data-easing="easeInOutExpo" data-endspeed="400">
                            Nội Thất Xanh
                        </div>

                        <div class="tp-caption sfb" data-x="0" data-y="335" data-speed="400" data-start="800"
                             data-easing="easeInOutExpo">
                            <a href="shop.jsp" class="btn-slider">Mua Ngay
                            </a>
                        </div>
                    </li>

                    <li data-transition="fade" data-slotamount="10" data-masterspeed="200" data-thumb="">
                        <!--  BACKGROUND IMAGE -->
                        <img src="images-slider/wide3.jpg" alt=""/>
                        <div class="tp-caption big-white sft" data-x="0" data-y="160" data-speed="800" data-start="400"
                             data-easing="easeInOutExpo" data-endspeed="450">
                            Tu Sửa Nội Thất
                        </div>

                        <div class="tp-caption ultra-big-white customin customout start" data-x="0" data-y="center"
                             data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:2;scaleY:2;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                             data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.85;scaleY:0.85;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                             data-speed="800" data-start="400" data-easing="easeInOutExpo" data-endspeed="400">
                            Cuộc Sống Dễ Dàng Hơn
                        </div>

                        <div class="tp-caption sfb" data-x="0" data-y="335" data-speed="400" data-start="800"
                             data-easing="easeInOutExpo">
                            <a href="#" class="btn-slider">Các Mảng Của Công Ty
                            </a>
                        </div>
                    </li>

                </ul>
            </div>
        </section>
        <!-- revolution slider close -->
        <section>

            <div class="phobien">
                <!-- Greatest Offer News Start -->
                <div class="news " style="background-color: white; ">
                    <div class="container ">
                        <h1>Sản phẩm mới nhất</h1>
                        <div class="separator"><span><i class="fa fa-circle"></i></span></div>
                        <div class="owl-carousel ">
                            <c:forEach items="${t.top5}" var="o">
                                <div class="item ">
                                    <div class="product-grid ">
                                        <div class="product-image ">
                                            <a href="<c:url value="ProductDetailController?id=${o.idProduct}"/>">
                                                <img class="pic-1 " src="images/products/${o.images.get(0)}">
                                                <img class="pic-2 " src="images/products/${o.images.get(1)}">
                                            </a>
                                            <span class="product-trend-label ">${o.tinhTrang}</span>

                                            <ul class="social ">
                                                <c:if test="${not empty user}">
                                                    <a href="<c:url value="/print"/>" data-tip="Thêm vào giỏ hàng "><i
                                                            style="color:  #FAB702;" class="fa fa-shopping-cart "></i></a>
                                                </c:if>
                                                <c:if test="${empty user}">
                                                    <a href="<c:url value="/Signin?message=you_need_to_login&alert=danger"/>" data-tip="Thêm vào giỏ hàng "><i
                                                            style="color:  #FAB702;" class="fa fa-shopping-cart "></i></a>
                                                </c:if>
                                                    <%--                                            <li><a href="# " data-tip="Thích "><i class="fa fa-heart "></i></a></li>--%>
                                                    <%--                                            <li><a href="# " data-tip="So sánh "><i class="fa fa-random "></i></a></li>--%>
                                                <li><a href="<c:url value="ProductDetailController?id=${o.idProduct}"/>" data-tip="Xem thêm "><i
                                                        class="fa fa-search "></i></a></li>
                                            </ul>
                                        </div>
                                        <div class="product-content ">
                                            <h3 class="title "><a href="<c:url value="ProductDetailController?id=${o.idProduct}"/> ">${o.tenProduct}</a></h3>
                                            <div class="price ">${o.giaTien}</div>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>

                    </div>
                </div>
            </div>
        </section>
        <!-- section begin -->
        <section id="section-about">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-md-offset-3 text-center wow fadeInUp">
                        <h1>Công việc thiết kế của chúng tôi</h1>
                        <div class="separator"><span><i class="fa fa-circle"></i></span></div>
                        <div class="spacer-single"></div>
                    </div>


                    <div class="col-md-4 wow fadeInLeft">
                        <h3>Thiết kế <span class="id-color">Nhà ở</span></h3>
                        Mang phong cách hơi hướng hiện đại, đem lại không gian thoáng mát nhưng cũng vừa ấm cúng, bằng
                        những đồ nội thất và cách bày trí hứng sáng sẽ làm cho căn nhà trở nên sáng hơn, đem lại 1 không
                        gian làm việc và thư giãn cho chủ sở hữu sau một ngày dài làm
                        việc mệt mỏi .
                        <div class="spacer-single"></div>
                        <img src="images/misc/pic_1.jpg" class="img-responsive" alt="">
                    </div>

                    <div class="col-md-4 wow fadeInUp" data-wow-delay=".2s">
                        <h3>Thiết kế <span class="id-color">Văn phòng</span></h3>
                        Đem lại cho không gian văn phòng một không gian thoải mái, giải tỏa áp lực và đầy sự sáng tạo
                        trong công việc. Không những thế, với những đồ nội thất với thiết kế đơn giản và tông màu sáng,
                        sẽ làm cho văn phòng trở nên đầy sức sống, giúp tăng sự tập trung.

                        <div class="spacer-single"></div>
                        <img src="images/misc/pic_2.jpg" class="img-responsive" alt="">
                    </div>

                    <div class="col-md-4 wow fadeInRight">
                        <h3>Thiết kế <span class="id-color">Thương mại</span></h3>
                        Thiết kế tùy theo mục đích, nhu cầu của khách hàng. Thiết kế không những làm đẹp cho không gian
                        của cửa hàng, mà còn mang những ý nghĩa , những giá trị nghệ thuật, đồng thời cũng làm nổi bật
                        cửa hàng, giúp cho người khách tới mua hàng cảm nhận được giá
                        trị cửa hàng.
                        <div class="spacer-single"></div>
                        <img src="images/misc/pic_3.jpg" class="img-responsive" alt="">
                    </div>

                </div>
            </div>
        </section>
        <!-- section close -->


        <!-- section begin -->
        <section id="section-steps" class="text-light">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-md-offset-3 text-center wow fadeInUp">
                        <h1>Tiến trình làm việc của chúng tôi</h1>
                        <div class="separator"><span><i class="fa fa-circle"></i></span></div>
                        <div class="spacer-single"></div>
                    </div>

                    <div class="col-md-12">
                        <div class="de_tab tab_steps">
                            <ul class="de_nav">
                                <li class="active wow fadeIn" data-wow-delay="0s"><span>Hẹn Lịch &amp; Gặp Gỡ</span>
                                    <div class="v-border"></div>
                                </li>
                                <li class="wow fadeIn" data-wow-delay=".4s"><span>Ý Tưởng &amp; Cách Thức</span>
                                    <div class="v-border"></div>
                                </li>
                                <li class="wow fadeIn" data-wow-delay=".8s"><span>Thiết Kế &amp; Mô Phỏng</span>
                                    <div class="v-border"></div>
                                </li>
                                <li class="wow fadeIn" data-wow-delay="1.2s"><span>Xây Dựng &amp; Bắt Đầu</span>
                                    <div class="v-border"></div>
                                </li>
                            </ul>

                            <div class="de_tab_content">

                                <div id="tab1">
                                    Chúng tôi sẽ hỏi ý kiến của khách hàng, sắp xếp lịch và cử đội ngũ nhân viên thiết
                                    kế nội thất đến tận nơi để gặp mặt khách hàng để biết được nhu cầu của khách hàng.
                                </div>

                                <div id="tab2">
                                    Đội ngũ nhân viên thiết kế sẽ đưa ra những ý tưởng, những sản phẩm phù hợp với thiết
                                    kế căn nhà của khách hàng và hỏi ý kiến của khách hàng, nếu khách hàng đồng ý thì
                                    chúng tôi sẽ đi tới bước thiết kế, còn nếu khách hàng chưa ưng ý thì chúng tôi sẽ
                                    đưa
                                    ra những ý tưởng khác và tư vấn theo nhu cầu cảu khách hàng.
                                </div>

                                <div id="tab3">
                                    Sau đó chúng tôi sẽ thiết kế, vẽ ra sơ đồ bày trí các vật dụng, đồ nội thất cho ngôi
                                    nhà
                                </div>

                                <div id="tab4">
                                    Dựa theo sơ đồ thiết kế và những sản phầm đã đưa ra, chúng tôi sẽ cử đội ngũ lắp đặt
                                    tới để lắp đặt cho khách hàng.
                                </div>

                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- section close -->


        <!-- section begin -->
        <section id="section-portfolio" class="no-top no-bottom">
            <div class="container">

                <div class="spacer-single"></div>

                <!-- portfolio filter begin -->
                <div class="row">
                    <div class="col-md-12 text-center">
                        <ul id="filters" class="wow fadeInUp" data-wow-delay="0s">
                            <li><a href="#" data-filter="*" class="selected">Tất cả thiết kế</a></li>
                            <c:forEach items="${direc}" var="direc">
                            <li><a href="#" data-filter=".${direc.getId()}">${direc.getType()}</a></li>
                            </c:forEach>
                        </ul>

                    </div>
                </div>
                <!-- portfolio filter close -->

            </div>

            <div id="gallery" class="gallery full-gallery de-gallery pf_full_width wow fadeInUp" data-wow-delay=".3s">

                <!-- gallery item -->
                <c:forEach items="${des}" var="des">
                    <div class="item ${des.type}">
                        <div class="picframe">
                            <a class="simple-ajax-popup-align-top"
                               href="<c:url value="/DetailDesignController?id=${des.idDes}"/>">
                                <span class="overlay">
                                    <span class="pf_text">
                                        <span class="project-name">${des.getNameDes()}</span> <!-- Nhap id thiet ke -->
                                </span>
                                </span>
                            </a>
                            <img src="<c:url value="images/design/${des.getImagesDes().get(0)}"/>" alt=""/> <!-- Nhap hinh anh -->
                        </div>
                    </div>
                </c:forEach>
                <!-- close gallery item -->


            </div>

            <div id="loader-area">
                <div class="project-load"></div>
            </div>
        </section>
        <!-- section close -->
        <!-- section begin -->
        <section id="view-all-projects" class="call-to-action bg-color text-center" data-speed="5"
                 data-type="background">
            <a href="projects.jsp" class="btn btn-line-black btn-big">Xem Tất Cả Dự Án</a>
        </section>
        <!-- logo carousel section close -->
        <!-- footer begin -->
        <%@include file="footer.jsp" %>
        <!-- footer close -->


</body>

<!-- Mirrored from www.themenesia.com/themeforest/archi-light/index.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 29 Jul 2015 14:08:17 GMT -->

</html>
