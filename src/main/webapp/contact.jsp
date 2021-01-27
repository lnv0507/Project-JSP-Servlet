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
    <link rel="stylesheet/less" type="text/css" href="css/style.less"/>
    <script src="//cdn.jsdelivr.net/npm/less"></script>
</head>

<body id="homepage">

<div id="wrapper">
    <%@include file="header.jsp" %>
    <!-- header close -->

    <!-- subheader -->
    <div id="content" class="no-bottom no-top">
        <section id="subheader" data-speed="8" data-type="background">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h1>Liên Hệ</h1>
                        <ul class="crumb">
                            <li><a href="index-2.jsp">Trang Chủ</a></li>
                            <li class="sep">/</li>
                            <li>Liên Hệ</li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>
        <!-- subheader close -->

        <!-- content begin -->
        <div>
            <div style="overflow:hidden;width: 100%;position: relative;">
                <iframe width="100%" height="600px"
                        src="https://maps.google.com/maps?width=700&amp;height=440&amp;hl=en&amp;q=University%20N%C3%B4ng%20L%C3%A2m%2C%20Vi%E1%BB%87t%20Nam+(%C4%90%E1%BA%A1i%20H%E1%BB%8Dc%20N%C3%B4ng%20L%C3%A2m)&amp;ie=UTF8&amp;t=&amp;z=10&amp;iwloc=B&amp;output=embed"
                        frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe>
                <div style="position: absolute;width: 80%;bottom: 10px;left: 0;right: 0;margin-left: auto;margin-right: auto;color: #000;text-align: center;">
                    <small style="line-height: 1.8;font-size: 2px;background: #fff;">Powered by <a
                            href="https://embedgooglemaps.com/de/">https://embedgooglemaps.com/de/</a> & <a
                            href="https://newyorkhoponhopoffbus.nl">deal krijgen</a></small></div>
                <style>
                    #gmap_canvas img {
                        max-width: none !important;
                        background: none !important
                    }
                </style>
            </div>
            <br/>
        </div>
        <div>
            <%
                String message = (String) request.getAttribute("message");
            %>
            <div class="headder">
                <h1>Hòm Thư Hỗ Trợ</h1>
                <form action="LienHe" method="post">
                <div class="header_bg " id="fullname">
                    <div class="headder_1">
                        <h4>Họ Và Tên* </h4>
                    </div>
                    <div class="headder_2">
                        <input type="text" placeholder="Enter Your Name" id="name" name="txtName">
                    </div>
                </div>
                <div class="badao">
                    <div class="header_bg" id="email">
                        <div class="headder_4" style="width: 220px;">
                            <h4>Email* </h4>
                        </div>
                        <div class="headder_5">
                            <input type="text" placeholder="Enter Your EMail" id="emailInput" name="txtemail">
                        </div>
                    </div>
                    <div class="header_bg" id="phone">
                        <div class="headder_4" style="width: 220px;">
                            <h4>Số Điện Thoại </h4>
                        </div>
                        <div class=" headder_5 ">
                            <input type="text " placeholder="Enter Your Number Phone " id="phoneInput" name="txtSDT">
                        </div>
                    </div>
                </div>
                <div class="header_bg ">
                    <div>
                        <div class="headder_1 ">
                            <p>Nhắn Tin </p>
                        </div>
                        <div class="headder_3 ">
                            <textarea name="txtnoidung" id="txtnoidung" style="outline: none; border: none" cols="95%" rows="10" placeholder="Enter Để Viết Hỗ Trợ "></textarea>
                        </div>
                    </div>

                </div>
                <button id="submit" onclick="submit()" style="width: 100%">Gửi</button>
                <%
                    if (message != null) {
                %>
                <span style="color: red;margin-left: 15px;">Gửi phản hồi thành công, cảm ơn bạn đã luôn đồng hành cùng chúng tôi</span>
                <%
                    }
                %>
                </form>
            </div>
        </div>
        <!-- footer begin -->
        <%@include file="footer.jsp" %>
        <!-- footer close -->


</body>

<!-- Mirrored from www.themenesia.com/themeforest/archi-light/contact.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 29 Jul 2015 14:09:50 GMT -->

</html>
