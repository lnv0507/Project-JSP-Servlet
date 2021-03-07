<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Shop Furniture</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Responsive Minimal Bootstrap Theme">
    <meta name="keywords" content="onepage,responsive,minimal,bootstrap,theme">
    <meta name="author" content="">

    <!-- Magnific Popup core CSS file -->
    <link rel="stylesheet" href="magnific-popup/magnific-popup.css">

    <!-- jQuery 1.7.2+ or Zepto.js 1.0+ -->
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>

    <!-- Magnific Popup core JS file -->
    <script src="magnific-popup/jquery.magnific-popup.js"></script>
    <%--    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">--%>
    <%--    <meta name="viewport" content="width=device-width, initial-scale=1">--%>
    <%--    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">--%>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <%--    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>--%>
    <style>
        .checked {
            color: orange;
        }

        .modal {
            display: none; /* Hidden by default */
            position: fixed; /* Stay in place */
            z-index: 1; /* Sit on top */
            padding-top: 100px; /* Location of the box */
            left: 0;
            top: 0;
            width: 100%; /* Full width */
            height: 100%; /* Full height */
            overflow: auto; /* Enable scroll if needed */
            background-color: rgb(0, 0, 0); /* Fallback color */
            background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
        }

        /* Modal Content */
        .modal-content {
            background-color: #fefefe;
            margin: auto;
            padding: 20px;
            border: 1px solid #888;
            width: 45%;
        }

        /* The Close Button */
        .close {
            color: #aaaaaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }

        .close:hover,
        .close:focus {
            color: #000;
            text-decoration: none;
            cursor: pointer;
        }

    </style>


    <!--  -->
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

</head>

<body id="homepage">

<div id="wrapper">
    <%@include file="header.jsp" %>
    <!-- header close -->
    <section id="subheader" data-speed="8" data-type="background">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h1>Sản Phẩm</h1>
                </div>
            </div>
        </div>
    </section>


    <!-- content begin -->
    <div id="content" class="no-bottom no-top">
        <br><br><br>
        <!-- Product Detail Page Start -->
        <c:forEach items="${product}" var="p">
        <div class="product-detail" style="background-color: #fff;">
            <div class="container">
                <div class="product-detail-left">

                    <div class="sp-wrap sp-non-touch" style="display: inline-block;">


                        <div class="sp-large">
                            <a class="sp-current-big"><img
                                    src="images/products/${p.getImages().get(0)}" alt=""></a>

                                <%--                                ${pageContext.request.contextPath}/images/products/${p.getImages().get(0)}--%>
                        </div>

                        <div class="sp-thumbs sp-tb-active">
                                <%--                            <a href="images/products/${p.getImages().get(0)}" style="background-image:url(images/products/${p.getImages().get(0)})"--%>
                                <%--                               class="sp-current"></a>--%>
                            <c:forEach items="${images}" var="i">
                                <a class="sp-current-big2" ><img src="images/products/${i}"></a>
                            </c:forEach>
                        </div>
                    </div>
                </div>
                <div class="product-detail-right-1">
                    <h3>${p.getTenProduct()}<br><small>Mã sản phẩm : ${p.getIdProduct()}</small>
                    </h3>
                    <h5><b>Giá: </b>${p.getGiaTien()}</h5>
                    <h5><b>Chất liệu: </b> ${p.getChatLieu()}</h5>


                    <h5><b>Trạng thái: </b>${p.getTinhTrang()}</h5>
                    <c:if test="${not empty user}">
                        <a href="<c:url value="/print"/>" data-tip="Thêm vào giỏ hàng "><i
                                style="color:  #FAB702; font-size: 30px" class="fa fa-shopping-cart "></i></a>
                    </c:if>
                    <c:if test="${empty user}">
                        <a style="font-size: 30px;" href="<c:url value="/Signin?message=you_need_to_login&alert=danger"/>" data-tip="Thêm vào giỏ hàng "><i
                                style="color:  #FAB702;" class="fa fa-shopping-cart "></i></a>
                    </c:if>
                    <h5><b> Nhận xét </b></h5>
                    <div class="star_mark">
                    <span onmouseover="starmark(this)" onclick="starmark(this)" id="1one"
                          style="font-size:40px;cursor:pointer;" class="fa fa-star checked"></span>
                        <span onmouseover="starmark(this)" onclick="starmark(this)" id="2one"
                              style="font-size:40px;cursor:pointer;" class="fa fa-star "></span>
                        <span onmouseover="starmark(this)" onclick="starmark(this)" id="3one"
                              style="font-size:40px;cursor:pointer;" class="fa fa-star "></span>
                        <span onmouseover="starmark(this)" onclick="starmark(this)" id="4one"
                              style="font-size:40px;cursor:pointer;" class="fa fa-star"></span>
                        <span onmouseover="starmark(this)" onclick="starmark(this)" id="5one"
                              style="font-size:40px;cursor:pointer;" class="fa fa-star"></span>
                    </div>
                    <c:if  test="${not empty user}">
                        <a style="font-size: 20px;" href="<c:url value="/print"/>" data-tip="Thêm vào giỏ hàng "><i
                                style="color:  #FAB702;" class="fa fa-shopping-cart "></i></a>
                    </c:if>
                    <c:if test="${empty user}">
                        <a style="font-size: 20px" href="<c:url value="/Signin?message=you_need_to_login&alert=danger"/>" data-tip="Thêm vào giỏ hàng "><button style="background-color: black"><i
                                style="color:  #FAB702;" class="fa fa-shopping-cart "></i>MUA NGAY</button></a>
                    </c:if>
                </div>
                    <%--                <div class="product-detail-feature">--%>
                    <%--                    <h3>Thông số kỹ thuật</h3>--%>
                    <%--                    <p>Phong cách: Trang trại, Công nghiệp</p>--%>
                    <%--                    <p>Vật chất: Kim loại</p>--%>


                    <%--                    <p>Màu sắc: Đen, vàng, xám, trắng</p>--%>

                    <%--                    <p>Kích thước: 64.0 In. X 84,7 In. X 48,4 In</p>--%>
                    <%--                    <p>ự bảo đảm Nhà sản xuất: giới hạn 10 nam</p>--%>
                    <%--                    <p>Nước xuất xứ: Đài loan</p>--%>


                    <%--                </div>--%>
                    <%--                <div class="product-detail-feature">--%>
                    <%--                    <h3 style="font-size: 25px; text-align: left;">Chi tiết</h3>--%>
                    <%--                    <span>Mẫu tủ áo đẹp có kệ trang trí nổi bật nhờ thiết kế sang trọng hơn, đẹp hơn, vừa mang đến giá trị sử dụng trong đời sống hàng ngày vừa mang lại tính thẩm mỹ và trang trí hấp dẫn cho người sử dụng. Với những ưu điểm nổi bật từ kiểu dáng, thiết kế cho đến chất liệu và cả giá thành. Một lựa chọn được đánh giá là tối ưu hiệu quả và cả giá trị lợi ích mang lại cho người tiêu dùng chắc chắn sẽ là một sản phẩm mà bạn nên cân nhắc khi tìm kiếm và đặt mua.</span>--%>
                    <%--                    <!-- Other Information start -->--%>
                    <%--                    <div class="otherInfo">--%>

                    <%--                        <h3 style="border-bottom: none;padding: 0px;" class="otherInfoHandle">Xem thêm</h3>--%>
                    <%--                        <div class="otherInfoBody">--%>
                    <%--                                <span style="text-align: left;">Tủ áo có kệ trang trí TA02H mang lại giá trị thẩm mỹ cho không gian--%>
                    <%--Không giống như trước đây các mẫu tủ áo công nghiệp được đánh giá thấp về tính thẩm mỹ và thiết kế so với các loại tủ gỗ tự nhiên. Hiện nay, các mẫu tủ gỗ công nghiệp ngày càng tỏ ra không hề kém cạnh từ chất lượng cho đến kiểu dáng. Với sản phẩm này tính trang trí được tăng lên một tầm cao mới với kiểu dáng cửa mở cơ bản kết hợp cùng những chiếc kệ trang trí tuyệt đẹp bên hông tủ. Tăng thêm khoảng không gian sử dụng, tính đa dụng và bày trí thêm một vài phụ kiện quan trọng với đời sống của mọi người.--%>
                    <%--Các hộc tủ và khay chứa đồ được tính toán kích thước đồng đều với nhau để tạo nên sự cân bằng và hài hòa trong tổng thiết kế của sản phẩm. Giống như các phần trên tủ như cánh tủ, mặt trên, mặt dưới đều có kích thước chính xác đến từng mm. Kết hợp thêm việc chọn màu sơn thông minh giúp sản phẩm trở lên nổi bật mà không phải đục chạm các hoa văn hay họa tiết cầu kỳ như các loại đồ gỗ tự nhiên.--%>
                    <%--Tủ áo có màu kem kết hợp thêm đường chạy chỉ màu đen khá lạ mắt. Thay vì để toàn bộ là màu kem chúng tôi thêm một lớp màu sơn đen tăng thêm điểm nhấn cho sản phẩm, lạ mắt hơn và hấp dẫn hơn với người tiêu dùng. Thích hợp với những người yêu thích sự mới lạ, cuốn hút và khác biệt hơn so với các mẫu đại trà trên thị trường hiện nay.--%>
                    <%--Bên trong tủ được chia thành 2 ngăn lớn gồm 1 buồng treo và 1 buồng xếp. Buồng treo lớn gồm 1 ngăn treo rộng và 1 ngăn kéo âm có gắn thêm hộc khóa. Buồng xếp gồm các ngăn được chia đều nhau và 2 hộc để đồ. Kết hợp thêm với các hộc và kệ để đồ bên hông mang lại khoảng không gian cực kỳ rộng rãi và nhiều lựa chọn sử dụng dành cho khách hàng.--%>
                    <%--Đánh giá về giá trị sản phẩm TA02H--%>
                    <%--Chất lượng gỗ tốt với khả năng chịu lực, chịu ẩm mốc và mối mọt vượt trội bởi toàn bộ sản phẩm đều được làm từ gỗ MDF chất lượng cao tốt nhất thị trường hiện nay.--%>
                    <%--                                </span></div>--%>

                    <%--                    </div>--%>
                <!-- Other Information end -->


            </div>
            </c:forEach>
            <!-- Product Detail Page End -->
            <!-- Popular Store Start -->


        </div>
        <div style="margin: 0 auto;width: 960px;">

            <br/>
            <textarea style="margin-top:5px;" class="form-control" rows="3" id="comment"
                      placeholder="nhận xét của bạn"></textarea>

            <button onclick="result()" type="button" style="margin-top:10px;margin-left:5px;"
                    class="btn btn-lg btn-success">gửi
            </button>

            <script>
                var count;

                function starmark(item) {
                    count = item.id[0];
                    sessionStorage.starRating = count;
                    var subid = item.id.substring(1);
                    for (var i = 0; i < 5; i++) {
                        if (i < count) {
                            document.getElementById((i + 1) + subid).style.color = "orange";
                        } else {
                            document.getElementById((i + 1) + subid).style.color = "black";
                        }
                    }

                }

                function result() {
                    //Rating : Count
                    //Review : Comment(id)
                    alert("Rating : " + count + "\nReview : " + document.getElementById("comment").value);
                }
            </script>
        </div>
        <!-- Popular Store End -->


        <!-- Greatest Offer News Start -->
        <div class="news " style="background-color: white;">
            <div class="container ">
                <h3>Các sản phẩm liên quan </h3>
                <div class="owl-carousel ">
                    <c:forEach items="${otherProduct}" var="o">
                    <div class="item "><a href="<c:url value="/ProductDetailController?id=${o.getIdProduct()}"/> "><img src="images/products/${o.getImages().get(0)} "></a></div>
                    </c:forEach>

                </div>
            </div>
        </div>

        <div class="support " style="padding-left: 250px;">
            <div class="container ">
                <a href="# ">
                    <img src="images/icon1.png ">
                    <h5>Chuyển phát nhanh</h5>
                </a>
                <a href="# ">
                    <img src="images/icon2.png ">
                    <h5> Hỗ trợ 24 giờ</h5>
                </a>
                <a href="# ">
                    <img src="images/icon3.png ">
                    <h5>Phương thức thanh toán dễ dàng</h5>
                </a>


            </div>


        </div>


    </div>
    <!-- Greatest Offer News End -->
    <div class="support ">


    </div>
    <div id="myModal" class="modal">
        <!-- Modal content -->
        <div class="modal-content">
            <span class="close">&times;</span>
            <div id="popup"></div>
        </div>
    </div>
    <!-- footer close -->
    <%@include file="footer.jsp" %>
    <!-- footer close -->


</body>

<!-- Mirrored from www.themenesia.com/themeforest/archi-light/index.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 29 Jul 2015 14:08:17 GMT -->

</html>

