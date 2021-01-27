<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8"%>
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
    <%@include file="header.jsp"%>
    <!-- header close -->
    <div id="content" class="no-bottom no-top">
        <!-- subheader -->

        <!-- subheader close -->

        <!-- content begin -->
        <div id="content" class="no-bottom no-top">
            <section class="background-login">
                <div class="login-wrap login-html-login">
                    <div class="login-html login-html-login">
                        <input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1"
                                                                                                 class="tab"><a
                            href="<c:url value="/Signin"/> ">Đăng Nhập</a></label>
                        <input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab"><a
                            href="<c:url value="/signup"/>">Đăng Ký</a></label>
                        <div class="login-form">

                            <form action="Signin" method="post">
                                <div class="sign-in-htm">
                                    <c:if test="${not empty message}">
                                    <div class="alert alert-${alert}" role="alert">
                                       ${message}
                                    </div>
                                    </c:if>
                                    <div class="group">
                                        <label for="user" class="label">Tài Khoản</label>
                                        <input id="user" type="text" class="input" name="username" id="username">
                                    </div>
                                    <div class="group">
                                        <label for="pass" class="label">Mật Khẩu</label>
                                        <input id="pass" type="password" class="input" data-type="password"
                                               name="password" id="password">
                                    </div>
                                    <div class="group">
                                        <input id="check" type="checkbox" class="check">
                                        <label for="check"><span class="icon"></span>Lưu Đăng Nhập</label>
                                    </div>
                                    <input type="hidden" name="action" value="login">
                                    <div class="group">
                                        <input type="submit" class="button" value="Đăng nhập" onclick="signIn()">
                                    </div>
                                    <div class="hr"></div>
                                    <div class="foot-lnk">
                                        <a href="<c:url value="forgot.jsp"/> ">Quên Mật Khẩu?</a>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </section>
            <!-- footer begin -->
           <%@include file="footer.jsp"%>
        <!-- footer close -->
            <script>
                window.onload =function(){
                    document.getElementById("username").onchange=validateLogin;
                    document.getElementById("password").onchange=validateLogin;
                }
                function validateLogin(){
                    var u =document.getElementById("username").value;
                    var p =document.getElementById("password").value;
                    if(u==''){
                        document.getElementById("username").setCustomValidity('Bạn phải nhập tên đăng nhập');
                    }else{
                        document.getElementById("username").setCustomValidity('');

                    }
                    if(p==null){
                        document.getElementById("password").setCustomValidity('Bạn phải nhập mật khẩu');
                    }else{
                        document.getElementById("password").setCustomValidity('');

                    }
                }


            </script>
</body>

<!-- Mirrored from www.themenesia.com/themeforest/archi-light/contact.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 29 Jul 2015 14:09:50 GMT -->

</html>
