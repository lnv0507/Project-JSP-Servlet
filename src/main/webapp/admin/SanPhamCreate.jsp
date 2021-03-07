<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html><html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <base href=""/>
    <link rel="shortcut icon" type="image/png" href="images/logodend.png"/>
    <title>Tạo Sản phẩm</title>
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
        <div class="alert alert-dange ajax-error" role="alert"><span
                style="font-weight: bold; font-size: 18px;">Thông báo!</span><br>

            <div class="ajax-error-ct"></div>
        </div>
        <div class="alert ajax-success" role="alert"
             style="width: 350px;background: rgba(92,130,79,0.9); display:none; color: #fff;"><span
                style="font-weight: bold; font-size: 18px;">Thông báo!</span>
            <br>

            <div class="ajax-success-ct"></div>
        </div>

        <div class="products">
            <div class="products">
                <form method="post" action="addproduct">
                    <div class="breadcrumbs-fixed panel-action">
                        <div class="row">
                            <div class="products-act">
                                <div class="col-md-4 col-md-offset-2">
                                    <div class="left-action text-left clearfix">
                                        <h2><i class="fa fa-refresh" style="font-size: 14px; cursor: pointer;"
                                               onclick="cms_vcrproduct('1')"></i>Tạo sản phẩm</h2>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="right-action text-right">
                                        <div class="btn-groups">

                                            <a href="SanPham.jsp">
                                                <button type="button" class="btn btn-primary"
                                                        onclick="cms_javascript_redirect( cms_javascrip_fullURL() )">
                                                    <i class="fa fa-arrow-left"></i> Trở về
                                                </button>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="main-space orders-space"></div>
                    <!-- Tạo sản phẩm -->
                    <div class="products-content" style="margin-bottom: 25px;">

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
                                                <input type="text" id="prd_name" value=""
                                                       class="form-control"
                                                       placeholder="Nhập tên sản phẩm"
                                                       name="txtName">
                                            </div>
                                            <div class="col-md-6 padd-right-0">
                                                <label>Mã sản phẩm</label>
                                                <input type="text" id="prd_code" class="form-control "
                                                       placeholder="Nếu không nhập, hệ thống sẽ tự sinh."
                                                       name="txtIDName">
                                            </div>
                                        </div>
                                        <div class="form-group clearfix">
                                            <div class="col-md-6 padd-left-0">
                                                <label>Số lượng</label>
                                                <input type="text" id="prd_sls" value="" placeholder="0"
                                                       class="form-control text-right txtNumber"
                                                       name="txtNumber">
                                            </div>
                                            <div class="col-md-6 padd-right-0">
                                                <label>Giá bán</label>
                                                <input name="txtGia" type="text" id="prd_sell_price"
                                                       value=""
                                                       class="form-control txtMoney text-right"
                                                       placeholder="0">
                                            </div>
                                        </div>


                                        <div class="form-group clearfix">
                                            <div class="col-md-6 padd-left-0">
                                                <label>Danh mục</label>
                                                <div class="col-md-11 padd-0">
                                                    <select name="txtChatLieu" style="width: 100%">
                                                        <option>Gỗ</option>
                                                        <option>Nhựa</option>
                                                        <option>Sắt</option>
                                                    </select>
                                                </div>
                                                <div class="col-md-1 padd-0">
                                                    <button type="button" class="btn btn-primary"
                                                            data-toggle="modal"
                                                            data-target="#list-prd-group"
                                                            style="border-radius: 0 3px 3px 0; box-shadow: none;">
                                                        ...
                                                    </button>
                                                </div>
                                            </div>
                                            <div class="col-md-6 padd-right-0">
                                                <label>Tình Trạng</label>
                                                <div class="col-md-11 padd-0">
                                                    <select class="form-control" id="prd_manufacture_id"
                                                            name="txtTinhTrang">
                                                        <optgroup label="Chọn Tình Trạng">
                                                            <option>
                                                                Đang Về Hàng
                                                            </option>
                                                            <option>
                                                                Có Hàng
                                                            </option>

                                                        </optgroup>

                                                    </select>
                                                </div>

                                                <div class="col-md-1 padd-0">
                                                    <button type="button" class="btn btn-primary"
                                                            data-toggle="modal"
                                                            data-target="#list-prd-manufacture"
                                                            style="border-radius: 0 3px 3px 0; box-shadow: none;">
                                                        ...
                                                    </button>
                                                </div>
                                            </div>
                                            <div class="col-md-6 padd-right-0">
                                                <label> Loại</label>
                                                <br>
                                                <input type="text" name="txtLoai" value="" placeholder="Loại Sản Phẩm">
                                            </div>
<%--                                            <div class="col-md-6 padd-right-0">--%>
<%--                                                <input type="file" name="photos1" id="1" multiple>--%>
<%--                                            </div>--%>
                                        </div>
                                        <div class="form-group clearfix">
                                            <input type="submit" value="Tạo" name="txtSubmit">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="expand-info">
                        <div class="row">
                            <div class="col-md-12">
                                <h4 style="border-bottom: 1px solid white; padding-bottom: 10px;"><i
                                        class="fa fa-th-large blue"></i> <a
                                        style="color:white; text-decoration: none;" data-toggle="collapse"
                                        href="#collapseproductinfo" aria-expanded="false"
                                        aria-controls="collapseExample">Thông tin mở rộng(
                                    <small> Nhấn để thêm các thông tin cho thuộc tính web</small>
                                    )</a></h4>
                            </div>
                            <div class="col-md-12">
                                <div style="margin-top: 5px;"></div>
                                <div class="collapse" id="collapseproductinfo">

                                    <div class="col-md-12">
                                        <div class="row">
                                            <div class="col-md-12 padd-20">
                                                <div class="jumbotron text-center" id="img_upload"
                                                     style="border-radius: 0; margin-bottom: 10px; padding: 15px 20px;">
                                                    <h3 style="color: black;">Upload hình ảnh sản phẩm</h3>

                                                    <p>
                                                        <input type="file" name="photos1">
                                                        <input type="file" name="photos2">
                                                        <input type="file" name="photos3">
                                                        <input type="file" name="photos4">
                                                        <input type="file" name="photos5">
                                                        <input type="file" name="photos6">
                                                    </p>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="col-md-12 padd-20">
                                        <h4 style="margin-top: 0;">Mô tả
                                            <small style="font-style: italic;">(Nhập thông tin mô tả chi
                                                tiết hơn để khách hàng hiểu sản phẩm của bạn)
                                            </small>
                                        </h4>
                                        <textarea id="ck_editor" id="prd_description"
                                                  style="width: 1070px; height: 500px;"></textarea>

                                        <div class="col-md-12">

                                            <div class="btn-groups pull-right" style="margin-top: 15px;">
                                                <button type="button" class="btn btn-primary"
                                                        onclick="cms_add_product( 'save' );"><i
                                                        class="fa fa-check"></i> Lưu
                                                </button>
                                                <button type="button" class="btn btn-primary "
                                                        onclick="cms_add_product( 'saveandcontinue' );"><i
                                                        class="fa fa-floppy-o"></i>
                                                    Lưu và tiếp tục
                                                </button>
                                                <button type="button" class="btn btn-default btn-back"
                                                        onclick="cms_javascript_redirect( cms_javascrip_fullURL() )">
                                                    <i class="fa fa-arrow-left"></i> Trở về
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
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
