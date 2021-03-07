<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html><html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <base href=""/>
    <link rel="shortcut icon" type="image/png" href="images/logodend.png"/>
    <title>Sửa Sản Phẩm</title>
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
<div class="col-md-10 padd-left-0">
    <div class="main-content">
        <div class="products">
            <div class="breadcrumbs-fixed panel-action">
                <div class="row">
                    <div class="products-act">
                        <div class="col-md-4 col-md-offset-2">
                            <div class="left-action text-left clearfix">
                                <h2><i class="fa fa-refresh" style="font-size: 14px; cursor: pointer;"
                                       onclick="cms_vcrproduct('1')"></i>Sửa sản phẩm</h2>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="right-action text-right">
                                <div class="btn-groups">
                                    <button type="button" class="btn btn-primary" onclick="cms_update_product(120);">
                                        <i class="fa fa-check"></i> Lưu
                                    </button>
                                    <a href="SanPham.jsp">
                                        <!-- onclick="cms_javascript_redirect( cms_javascrip_fullURL() )" -->
                                        <button type="button" class="btn btn-default"><i class="fa fa-arrow-left"></i>
                                            Hủy
                                        </button>
                                    </a>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="main-space orders-space"></div>

            <div class="products-content" style="margin-bottom: 25px;">
                <div class="basic-info">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="col-md-4 padd-0">
                                <h3>Thông tin cơ bản</h3>
                                <small>Nhập tên và các thông tin cơ bản của sản phẩm</small>
                            </div>
                            <div class="col-md-8">
                                <div class="row">
                                    <div class="form-group clearfix">
                                        <div class="col-md-6 padd-left-0">
                                            <label>Tên sản phẩm</label>
                                            <input type="text" id="prd_name" value="Áo Jacket JK123123"
                                                   class="form-control" placeholder="Nhập tên sản phẩm">
                                        </div>
                                        <div class="col-md-6 padd-right-0">
                                            <label>Mã sản phẩm</label>
                                            <input disabled="disabled" type="text" id="prd_code" class="form-control"
                                                   value="SP0000012" placeholder="Nếu không nhập, hệ thống sẽ tự sinh.">
                                        </div>
                                    </div>

                                    <div class="form-group clearfix">
                                        <div class="col-md-6 padd-left-0">
                                            <label>Số lượng</label>
                                            <input type="text" id="prd_sls" value="5" placeholder="0"
                                                   class="form-control text-right txtNumber">
                                        </div>
                                        <div class="col-md-6 padd-right-0">
                                            <label>Giá bán</label>
                                            <input type="text" id="prd_sell_price" value="150000"
                                                   class="form-control txtMoney text-right" placeholder="0">
                                        </div>
                                    </div>


                                    <div class="form-group clearfix">
                                        <div class="col-md-6 padd-left-0">
                                            <label>Danh mục</label>
                                            <div class="col-md-11 padd-0">
                                                <select class="form-control" id="prd_group_id">
                                                    <optgroup label="Chọn danh mục">

                                                    </optgroup>
                                                </select>
                                            </div>
                                            <div class="col-md-1 padd-0">
                                                <button type="button" class="btn btn-primary" data-toggle="modal"
                                                        data-target="#list-prd-group"
                                                        style="border-radius: 0 3px 3px 0; box-shadow: none;">...
                                                </button>
                                            </div>
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
                                        <h3 style="color:white; float: left;">Sửa hình ảnh sản phẩm</h3>
                                        <input type="file" style="float: right; margin-top: 25px;">
                                        <img src="images/a1.jpg" style="width: 300px ; height: 300px;" alt="">
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
    </div>
</div>
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
