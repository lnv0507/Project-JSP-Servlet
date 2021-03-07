<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html><html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <base href=""/>
    <link rel="shortcut icon" type="image/png" href="images/logodend.png"/>
    <title>Thông Tin Sản Phẩm</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap-datepicker.css" rel="stylesheet">
    <link href="css/bootstrap-datetimepicker.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href="css/jquery-ui.min.css" rel="stylesheet">
    <link href="css/jquery.datetimepicker.css" rel="stylesheet">
</head>
<body>
<%@include file="HeaderAdmin.jsp" %>
<div class="col-md-10 ">
    <div class="main-content">
        <!-- PRODUCTS -->
        <div class="products">
            <div class="breadcrumbs-fixed panel-action">
                <div class="row">
                    <div class="products-act">
                        <div class="col-md-4 col-md-offset-2">
                            <div class="left-action text-left clearfix">
                                <h2>Chi tiết sản phẩm</h2>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <c:forEach items="${product}" var="p">
                                <div class="right-action text-right">
                                    <div class="btn-groups">
                                        <button type="button" class="btn btn-primary" style="background-color: #8B8B8B;"
                                                onclick="cms_deactivate_product_bydetail('${p.idProduct}')"><i
                                                class="fa fa-pause"></i>
                                            Ngừng kinh doanh
                                        </button>
                                        <a href="SanPhamRepair.jsp">
                                            <button type="button" class="btn btn-primary "
                                                    onclick="cms_edit_product(119)">
                                                <i class="fa fa-pencil-square-o"></i> Sửa thông tin
                                            </button>
                                        </a>

                                        <button type="button" class="btn btn-danger"
                                                onclick="cms_delete_product_bydetail('${p.idProduct}')"><i class="fa fa-trash-o"></i>
                                            Xóa
                                        </button>
                                        <button type="button" class="btn btn-default"
                                                onclick="cms_javascript_redirect( cms_javascrip_fullURL() )"><i
                                                class="fa fa-arrow-left"></i> Trở về
                                        </button>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                </div>
            </div>

            <div class="main-space orders-space"></div>
            <c:forEach items="${product}" var="p">
                <div class="products-content" style="margin-bottom: 25px;">
                    <div class="basic-info">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="col-md-4 padd-0">
                                    <h3>
                                        Thông tin cơ bản</h3>
                                    <small>Nhập tên và các thông tin cơ bản của sản phẩm</small>
                                </div>
                                <div class="col-md-8">
                                    <div class="row">
                                        <div class="form-group clearfix">
                                            <div class="col-md-6 padd-left-0">
                                                <label>Tên sản phẩm</label>

                                                <div style="font-size: 18px; color: white; ">${p.getTenProduct()}
                                                </div>
                                            </div>
                                            <div class="col-md-6 padd-right-0">
                                                <label>Mã sản phẩm</label>

                                                <div style="font-size: 18px; color: white; ">${p.getIdProduct()}></div>
                                            </div>
                                        </div>
                                        <div class="form-group clearfix">
                                            <div class="col-md-6 padd-left-0">
                                                <label>Số lượng</label>
                                                <div style="font-size: 18px; color: white; ">${p.getSoLuongTrongKho()}</div>
                                            </div>
                                            <div class="col-md-6">
                                                <div style="padding-bottom: 5px; font-weight: 700; color: #ffffff; ">
                                                    <span>Theo dõi tồn kho :</span>
                                                    <span class="yes">Có</span></div>
                                                <div style="padding-bottom: 5px; font-weight: 700; color: #ffffff; ">
                                                    <span>Cho phép bán âm :</span>
                                                    <span class="no">Không</span></div>
                                            </div>
                                        </div>
                                        <div class="form-group clearfix">

                                            <div class="col-md-6 padd-right-0">
                                                <label>Giá bán</label>
                                                <div style="font-size: 18px; color: white; ">${p.getGiaTien()}</div>
                                            </div>
                                        </div>
                                        <div class="form-group clearfix">
                                            <div class="col-md-6 padd-left-0">
                                                <label>Danh mục</label>
                                                <div class="col-md-12 padd-0">
                                                    <div style="font-size: 18px; color: white; ">${p.getLoai()}</div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="expand-info">
                        <div class="row">
                            <div class="col-md-12">
                                <div style="margin-top: 5px;"></div>
                                <div id="collapseproductinfo">
                                    <div class="col-md-12 padd-20">
                                        <div class="row">
                                            <div class="col-md-6 padd-20">
                                                <h3 style="color:white;">Hình ảnh sản phẩm</h3>
                                                <img src="../images/products/${p.getImages().get(0)}"
                                                     style="width: 300px ; height: 300px;" alt="">
                                            </div>
                                            <div class="col-md-6 padd-20">
                                                <h3 style="color:white;">Mô tả</h3>
                                                <div id="ckeditor">
                                                    <textarea id="ck_editor" id="prd_description"
                                                              style="width: 500px; height: 300px;"></textarea>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</div>
</section>
<script src=" js/jquery.js"></script>
<script src=" js/jquery-ui.min.js"></script>
<script src=" js/html5shiv.min.js"></script>
<script src=" js/respond.min.js"></script>
<script src=" js/bootstrap.min.js"></script>
<script src=" js/jquery.datetimepicker.full.js"></script>
<script src=" js/bootstrap-datepicker.min.js"></script>
<script src=" js/bootstrap-datepicker.vi.min.js"></script>
<script src=" js/ckeditor.js"></script>
<script src=" js/editor.js"></script>
<script src=" js/ajax.js"></script>
</body>

</html>
