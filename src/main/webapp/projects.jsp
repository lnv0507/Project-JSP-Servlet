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
                    <h1>Thiết kế</h1>
                    <ul class="crumb">
                        <li><a href="index-2.jsp">Trang chủ</a></li>
                        <li class="sep">/</li>
                        <li>Thiết Kế</li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
    <!-- subheader close -->

    <!-- content begin -->
    <div id="content" class="no-top no-bottom">
        <!-- section begin -->
        <section id="section-portfolio" class="no-top no-bottom">
            <div class="container">

                <div class="spacer-single"></div>

                <!-- portfolio filter begin -->
                <div class="row">
                    <div class="col-md-12 text-center">
                        <ul id="filters" class="wow fadeInUp" data-wow-delay="0s">
                            <li><a href="#" data-filter="*" class="selected">Xem tất cả</a></li>
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

        </section>
        <!-- section close -->


        <!-- section begin -->
        <section id="call-to-action" class="call-to-action bg-color dark text-center" data-speed="5"
                 data-type="background">
            <a href="contact.jsp" class="btn btn-line-black btn-big">Nhận Làm Các Hạng Mục</a>
        </section>
        <!-- logo carousel section close -->


    </div>

    <!-- footer begin -->
    <%@include file="footer.jsp" %>


</body>

<!-- Mirrored from www.themenesia.com/themeforest/archi-light/projects.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 29 Jul 2015 14:08:53 GMT -->

</html>
