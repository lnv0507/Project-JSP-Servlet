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

        <!-- Start create employee -->
        <div class="modal fade" id="create-nv" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel" style="text-transform: uppercase;"><i
                                class="fa fa-user"></i>
                            Thêm tài khoản đăng nhập </h4>
                    </div>
                    <div class="modal-body">
                        <form class="form-horizontal" id="frm-cruser">
                            <div class="form-group">
                                <div class="col-sm-3">
                                    <label for="tennhanvien">Tên nhân viên</label>
                                </div>
                                <div class="col-sm-9">
                                    <input type="text" id="display_name" name="display_name" class="form-control"
                                           value=""
                                           placeholder="Nhập tên nhân viên">
                                    <span style="color: red; font-style: italic;"
                                          class="error error-display_name"></span>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-3">
                                    <label for="manv">Mã nhân viên</label>
                                </div>
                                <div class="col-sm-9">
                                    <input type="text" id="manv" name="manv" class="form-control" value=""
                                           placeholder="Nhập mã nhân viên">
                                    <span style="color: red; font-style: italic;" class="error error-manv"></span>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-3">
                                    <label for="manv">Email</label>
                                </div>
                                <div class="col-sm-9">
                                    <input type="text" id="mail" name="email" class="form-control" value=""
                                           placeholder="Nhập email của bạn">
                                    <span style="color: red; font-style: italic;" class="error error-mail"></span>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-3">
                                    <label for="manv">Mật khẩu</label>
                                </div>
                                <div class="col-sm-9">
                                    <input type="password" id="password" name="password" class="form-control" value=""
                                           placeholder="Nhập Mật khẩu">
                                    <span style="color: red; font-style: italic;" class="error error-password"></span>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-3 padd-right-0">
                                    <label for="manv">Nhóm người dùng</label>
                                </div>
                                <div class="col-sm-9">
                                    <div class="group-user">
                                        <div class="group-selbox">

                                        </div>
                                        <span style="color: red; font-style: italic;" class="error error-group"></span>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-3">
                                    <label for="stock">Kho làm việc</label>
                                </div>
                                <div class="col-sm-9">
                                    <div class="stock-selbox"></div>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary btn-sm btn-crnv" onclick="cms_cruser()"><i
                                class="fa fa-check"></i> Lưu
                        </button>
                        <button type="button" class="btn btn-default btn-sm btn-close" data-dismiss="modal"><i
                                class="fa fa-undo"></i> Bỏ qua
                        </button>
                    </div>
                </div>
            </div>
        </div>
        <!-- end create employee -->

        <!-- Start create function -->
        <div class="modal fade" id="create-func" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel" style="text-transform: uppercase;"><i
                                class="fa fa-user"></i>
                            Thêm Chức năng </h4>
                    </div>
                    <div class="modal-body">
                        <form class="form-horizontal">
                            <div class="form-group">
                                <div class="col-sm-3">
                                    <label for="tennhanvien">URL</label>
                                </div>
                                <div class="col-sm-9">
                                    <input type="text" id="permisstion_url" name="permisstion_url" class="form-control"
                                           value=""
                                           placeholder="Nhập url cho phép của chức năng">
                                    <span style="color: red; font-style: italic;"
                                          class="error error-permisstion_url"></span>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-3">
                                    <label for="manv">Tên chức năng</label>
                                </div>
                                <div class="col-sm-9">
                                    <input type="text" id="permisstion_name" name="permisstion_name"
                                           class="form-control"
                                           value="" placeholder="Nhập tên chức năng">
                                    <span style="color: red; font-style: italic;"
                                          class="error error-permisstion_name"></span>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary btn-sm btn-crfunc"><i class="fa fa-check"></i> Lưu
                        </button>
                        <button type="button" class="btn btn-default btn-sm btn-close" data-dismiss="modal"><i
                                class="fa fa-undo"></i> Bỏ qua
                        </button>
                    </div>
                </div>
            </div>
        </div>
        <!-- end create function -->

        <!-- Start create group -->
        <div class="modal fade" id="create-group" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel" style="text-transform: uppercase;"><i
                                class="fa fa-user"></i>
                            Thêm nhóm người dùng </h4>
                    </div>
                    <div class="modal-body">
                        <form class="form-horizontal">
                            <div class="form-group">
                                <div class="col-sm-3">
                                    <label for="group-name">Tên Nhóm</label>
                                </div>
                                <div class="col-sm-9">
                                    <input type="text" id="group-name" name="group_name" class="form-control" value=""
                                           placeholder="Nhập tên nhóm người dùng">
                                    <span style="color: red; font-style: italic;" class="error error-group_name"></span>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary btn-sm btn-crgroup"><i class="fa fa-check"></i> Lưu
                        </button>
                        <button type="button" class="btn btn-default btn-sm btn-close" data-dismiss="modal"><i
                                class="fa fa-undo"></i> Bỏ qua
                        </button>
                    </div>
                </div>
            </div>
        </div>
        <!-- end create function -->

        <!-- Start create group -->
        <div class="modal fade" id="create-store" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel" style="text-transform: uppercase;"><i
                                class="fa fa-user"></i>
                            Thêm kho </h4>
                    </div>
                    <div class="modal-body">
                        <form class="form-horizontal">
                            <div class="form-group">
                                <div class="col-sm-3">
                                    <label for="group-name">Tên Kho</label>
                                </div>
                                <div class="col-sm-9">
                                    <input type="text" id="store-name" name="store_name" class="form-control" value=""
                                           placeholder="Nhập tên kho">
                                    <span style="color: red; font-style: italic;" class="error error-store_name"></span>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary btn-sm" onclick="cms_crstore();"><i
                                class="fa fa-check"></i> Lưu
                        </button>
                        <button type="button" class="btn btn-default btn-sm btn-close" data-dismiss="modal"><i
                                class="fa fa-undo"></i> Bỏ qua
                        </button>
                    </div>
                </div>
            </div>
        </div>
        <!-- end create function -->

        <!-- start create customer -->

        <div class="modal fade" id="create-cust" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel">Tạo mới khách hàng</h4>
                    </div>
                    <div class="modal-body">
                        <form class="form-horizontal" id="frm-crcust">
                            <div class="form-group">
                                <div class="col-sm-3">
                                    <label for="customer_name">Mã khách hàng</label>
                                </div>
                                <div class="col-sm-9">
                                    <input type="text" id="customer_code" name="customer_code" class="form-control"
                                           value=""
                                           placeholder="Mã khách hàng(tự sinh nếu bỏ trống)">
                                    <span style="color: red; font-style: italic;"
                                          class="error error-customer_code"></span>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-3">
                                    <label for="customer_name">Tên Khách hàng</label>
                                </div>
                                <div class="col-sm-9">
                                    <input type="text" id="customer_name" name="customer_name" class="form-control"
                                           value=""
                                           placeholder="Nhập tên khách hàng( bắc buộc )">
                                    <span style="color: red; font-style: italic;"
                                          class="error error-customer_name"></span>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-3">
                                    <label for="customer_phone">Số điện thoại</label>
                                </div>
                                <div class="col-sm-9">
                                    <input type="text" id="customer_phone" name="customer_phone"
                                           class="form-control" value="" placeholder="">
                                    <span style="color: red; font-style: italic;"
                                          class="error error-customer_phone"></span>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-3">
                                    <label for="customer_email">Email</label>
                                </div>
                                <div class="col-sm-9">
                                    <input type="text" id="customer_email" name="customer_email" class="form-control"
                                           value=""
                                           placeholder="Nhập email khách hàng ( ví dụ: kh10@gmail.com )">
                                    <span style="color: red; font-style: italic;"
                                          class="error error-customer_email"></span>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-3">
                                    <label for="customer_addr">Địa chỉ</label>
                                </div>
                                <div class="col-sm-9">
                                    <input type="text" id="customer_addr" name="customer_addr" class="form-control"
                                           value="" placeholder="">
                                    <span style="color: red; font-style: italic;"
                                          class="error error-customer_addr"></span>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-3">
                                    <label for="customer_notes">Ghi chú</label>
                                </div>
                                <div class="col-sm-9">
                                    <input type="text" id="customer_notes" name="customer_notes" class="form-control"
                                           value=""
                                           placeholder="">
                                    <span style="color: red; font-style: italic;"
                                          class="error error-customer_notes"></span>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-3">
                                    <label for="customer_birthday">Ngày sinh</label>
                                </div>
                                <div class="col-sm-9">
                                    <input type="text" id="customer_birthday" name="customer_birthday"
                                           class="form-control txttimes" value="" placeholder="yyyy-mm-dd">
                                    <span style="color: red;" class="error error-customer_birthday"></span>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-3">
                                    <label for="customer_gender">Giới tính</label>
                                </div>
                                <div class="col-sm-9">
                                    <input type="radio" name="gender" checked class="customer_gender" value="0"> Nam
                                    <input type="radio" name="gender" class="customer_gender" value="1"> Nữ
                                    <span style="color: red; font-style: italic;"
                                          class="error error-customer_gender"></span>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary btn-sm btn-crcust" onclick="cms_crCustomer();"><i
                                class="fa fa-check"></i> Lưu
                        </button>
                        <button type="button" class="btn btn-default btn-sm btn-close" data-dismiss="modal"><i
                                class="fa fa-undo"></i> Bỏ qua
                        </button>
                    </div>
                </div>
            </div>
        </div>

        <!-- end customer -->

        <!-- start create supplier -->

        <div class="modal fade" id="create-sup" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel">Tạo mới nhà cung cấp</h4>
                    </div>
                    <div class="modal-body">
                        <form class="form-horizontal" id="frm-crsup">
                            <div class="form-group">
                                <div class="col-sm-3">
                                    <label for="supplier_name">Mã nhà cung cấp</label>
                                </div>
                                <div class="col-sm-9">
                                    <input type="text" id="supplier_code" name="supplier_code" class="form-control"
                                           value=""
                                           placeholder="Mã nhà cung cấp (Tự sinh nếu bỏ trống)">
                                    <span style="color: red; font-style: italic;"
                                          class="error error-supplier_code"></span>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-3">
                                    <label for="supplier_name">Tên nhà cung cấp</label>
                                </div>
                                <div class="col-sm-9">
                                    <input type="text" id="supplier_name" name="supplier_name" class="form-control"
                                           value=""
                                           placeholder="Nhập tên nhà cung cấp (bắc buộc)">
                                    <span style="color: red; font-style: italic;"
                                          class="error error-supplier_name"></span>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-3">
                                    <label for="supplier_phone">Số điện thoại</label>
                                </div>
                                <div class="col-sm-9">
                                    <input type="text" id="supplier_phone" name="supplier_phone" class="form-control"
                                           value="" placeholder="Số điện thoại">
                                    <span style="color: red; font-style: italic;"
                                          class="error error-supplier_phone"></span>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-3">
                                    <label for="supplier_email">Email</label>
                                </div>
                                <div class="col-sm-9">
                                    <input type="text" id="supplier_email" name="supplier_email" class="form-control"
                                           value=""
                                           placeholder="Nhập email nhà cung cấp ( ví dụ: kh10@gmail.com )">
                                    <span style="color: red; font-style: italic;"
                                          class="error error-supplier_email"></span>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-3">
                                    <label for="supplier_addr">Địa chỉ</label>
                                </div>
                                <div class="col-sm-9">
                                    <input type="text" id="supplier_addr" name="supplier_addr" class="form-control"
                                           value="" placeholder="">
                                    <span style="color: red; font-style: italic;"
                                          class="error error-supplier_addr"></span>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-3">
                                    <label for="tax_code">Mã số thuế</label>
                                </div>
                                <div class="col-sm-9">
                                    <input type="text" id="tax_code" name="tax_code" class="form-control" value=""
                                           placeholder="">
                                    <span style="color: red; font-style: italic;" class="error error-tax_code"></span>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-3">
                                    <label for="supplier_notes">Ghi chú</label>
                                </div>
                                <div class="col-sm-9">
                                    <input type="text" id="supplier_notes" name="notes" class="form-control" value=""
                                           placeholder="">
                                    <span style="color: red; font-style: italic;"
                                          class="error error-supplier_notes"></span>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary btn-sm btn-crsup" onclick="cms_crsup();"><i
                                class="fa fa-check"></i> Lưu
                        </button>
                        <button type="button" class="btn btn-default btn-sm btn-close" data-dismiss="modal"><i
                                class="fa fa-undo"></i> Bỏ qua
                        </button>
                    </div>
                </div>
            </div>
        </div>

        <!-- end supacture -->

        <!-- PRODUCTS -->
        <div class="modal fade" id="list-prd-manufacture" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel" style="color: white;">Quản lý nhà sản xuất</h4>
                    </div>
                    <div class="modal-body">
                        <div class="tabtable">
                            <!-- Nav tabs -->
                            <ul class="nav nav-tabs tab-setting" role="tablist"
                                style="background-color: #EFF3F8; padding: 5px 0 0 15px;">
                                <li role="presentation" class="active list-manufacture-click"
                                    style="margin-right: 3px;"><a
                                        href="#list-manufacture" aria-controls="list-manufacture" role="tab"
                                        data-toggle="tab"><i class="fa fa-list"></i> Danh sách Nhà sản xuất</a></li>
                                <li role="presentation"><a href="#create-manufacture" aria-controls="create-manufacture"
                                                           role="tab" data-toggle="tab"><i class="fa fa-plus"></i> Tạo
                                    mới chủng
                                    loại</a></li>
                            </ul>

                            <!-- Tab panes -->
                            <div class="tab-content" style="padding:10px; border: 1px solid #ddd; border-top: none;">
                                <div role="tabpanel" class="tab-pane active" id="list-manufacture">
                                    <div class="prd_manufacture-body">
                                        <p style="color: white;">HieuSecondHand</p>
                                        <p style="color: white;"> 3Bich</p>
                                        <p style="color: white;">The Nineteen 2Hand</p>

                                    </div>
                                </div>

                                <!-- Tab Function -->
                                <div role="tabpanel" class="tab-pane" id="create-manufacture">
                                    <div class="row form-horizontal">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <div class="col-md-7 padd-right-0">
                                                    <input type="text" style="border-radius: 0 !important;"
                                                           class="form-control"
                                                           id="prd_manuf_name" value=""
                                                           placeholder="Nhập tên Nhà sản xuất">
                                                </div>
                                                <div class="input-groups-btn col-md-5 padd-0">
                                                    <button type="button" class="btn btn-primary"
                                                            style="border-radius: 0 3px 3px 0;"
                                                            onclick="cms_create_manufacture(1);"><i
                                                            class="fa fa-check"></i> Lưu
                                                    </button>
                                                    <button type="button" class="btn btn-primary "
                                                            onclick="cms_create_manufacture(0);"><i
                                                            class="fa fa-floppy-o"></i> Lưu và tiếp tục
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default btn-sm btn-close" data-dismiss="modal"><i
                                class="fa fa-undo"></i> Đóng
                        </button>
                    </div>
                </div>
            </div>
        </div>

        <div class="modal fade" id="list-prd-group" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel" style="color: white;">Quản lý danh mục</h4>
                    </div>
                    <div class="modal-body">
                        <div class="tabtable">
                            <!-- Nav tabs -->
                            <ul class="nav nav-tabs tab-setting" role="tablist"
                                style="background-color: #EFF3F8; padding: 5px 0 0 15px;">
                                <li role="presentation" class="active" style="margin-right: 3px;"><a href="#list-groups"
                                                                                                     aria-controls="list-group"
                                                                                                     role="tab"
                                                                                                     data-toggle="tab"><i
                                        class="fa fa-list"></i> Danh sách danh mục</a></li>
                                <li role="presentation"><a href="#create-groups" aria-controls="create-group" role="tab"
                                                           data-toggle="tab"><i class="fa fa-plus"></i> Tạo mới danh mục</a>
                                </li>
                            </ul>

                            <!-- Tab panes -->
                            <div class="tab-content" style="padding:10px; border: 1px solid #ddd; border-top: none;">
                                <div role="tabpanel" class="tab-pane active" id="list-groups">
                                    <div class="prd_group-body">
                                        <p style="color:white;">Áo </p>
                                        <p style="color:white;">|---Áo Blazer </p>
                                        <p style="color:white;">|---Áo Bóng Chày </p>
                                        <p style="color:white;">|---Áo Denim </p>
                                        <p style="color:white;">|---Áo Len </p>
                                        <p style="color:white;">|---Áo Sơmi </p>
                                        <p style="color:white;">|---Áo Sweater </p>
                                        <p style="color:white;">|---Áo Thun </p>
                                        <p style="color:white;">Quần </p>
                                        <p style="color:white;">|---Quần Cargo </p>
                                        <p style="color:white;">|---Quần Jean </p>
                                        <p style="color:white;">|---Quần Kaki </p>
                                        <p style="color:white;">|---Quần Nhung </p>
                                        <p style="color:white;">|---Quần Short </p>
                                        <p style="color:white;">Phụ kiện </p>
                                        <p style="color:white;">|---Thắt lưng </p>
                                        <p style="color:white;">|---Mắt Kính </p>
                                        <p style="color:white;">|---Xách tay </p>
                                        <p style="color:white;">|---Mũ </p>
                                        <p style="color:white;">|---Móc khóa </p>
                                        <p style="color:white;">|--- Khăn choàng </p>
                                        <p style="color:white;">|---Vớ </p>
                                        <p style="color:white;">|---Sticker </p>
                                    </div>
                                </div>

                                <!-- Tab Function -->
                                <div role="tabpanel" class="tab-pane" id="create-groups">
                                    <div class="row form-horizontal">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <div class="col-md-4 text-right">
                                                    <label>Tên danh mục</label>
                                                </div>
                                                <div class="col-md-8">
                                                    <input type="text" id="prd_group_name" class="form-control"
                                                           placeholder="Nhập tên danh mục.">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-md-4 text-right">
                                                    <label>Danh mục cấp cha</label>
                                                </div>
                                                <div class="col-md-8">
                                                    <select id="parentid" class="form-control">

                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-md-8 col-md-offset-4">
                                                    <button type="button" class="btn btn-primary"
                                                            style="border-radius: 0 3px 3px 0;"
                                                            onclick="cms_create_group(1);"><i
                                                            class="fa fa-check"></i> Lưu
                                                    </button>
                                                    <button type="button" class="btn btn-primary "
                                                            onclick="cms_create_group(0);"><i
                                                            class="fa fa-floppy-o"></i> Lưu
                                                        và tiếp tục
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default btn-sm btn-close" data-dismiss="modal"><i
                                class="fa fa-undo"></i> Đóng
                        </button>
                    </div>
                </div>
            </div>
        </div>
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
                                            <label class="checkbox" style="display: block;"><input type="checkbox"
                                                                                                   id="prd_inventory"
                                                                                                   class="checkbox"
                                                                                                   name="confirm"
                                                                                                   value="1"><span></span>
                                                Theo dõi tồn kho?</label>
                                            <label class="checkbox"><input type="checkbox" id="prd_allownegative"
                                                                           class="checkbox" name="confirm" value="1">
                                                <span></span> Cho phép bán âm?</label>
                                        </div>
                                    </div>

                                    <div class="form-group clearfix">
                                        <div class="col-md-6 padd-left-0">
                                            <label>Giá vốn</label>
                                            <input type="text" id="prd_origin_price" value="100000"
                                                   class="form-control text-right txtMoney" placeholder="Nhập giá vốn">
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
                                                        <option value="36">Áo</option>
                                                        <option value="101">|---Áo Blazer</option>
                                                        <option value="102">|---Áo Bóng Chày</option>
                                                        <option value="103">|---Áo Denim</option>
                                                        <option value="104">|---Áo Len</option>
                                                        <option value="105">|---Áo Sơmi</option>
                                                        <option value="106">|---Áo Sweater</option>
                                                        <option value="107">|---Áo Thun</option>
                                                        <option value="35">Quần</option>
                                                        <option value="92">|---Quần Cargo</option>
                                                        <option value="93">|---Quần Jean</option>
                                                        <option value="94">|---Quần Kaki</option>
                                                        <option value="95">|---Quần Nhung</option>
                                                        <option value="96">|---Quần Short</option>
                                                        <option value="34">Phụ kiện</option>
                                                        <option value="82">|---Thắt lưng</option>
                                                        <option value="83">|---Mắt Kính</option>
                                                        <option value="84">|---Xách tay</option>
                                                        <option value="85">|---Mũ</option>
                                                        <option value="86">|---Móc khóa</option>
                                                        <option value="87">|--- Khăn choàng</option>
                                                        <option value="88">|---Vớ</option>
                                                        <option value="89">|---Sticker</option>
                                                    </optgroup>
                                                    <optgroup label="------------------------">
                                                        <option value="product_group" data-toggle="modal"
                                                                data-target="#list-prd-group">Tạo mới danh
                                                            mục
                                                        </option>
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
                                        <div class="col-md-6 padd-right-0">
                                            <label>Nhà cung cấp</label>

                                            <div class="col-md-11 padd-0">
                                                <select class="form-control" id="prd_manufacture_id">
                                                    <optgroup label="Chọn nhà sản xuất">
                                                        <option>
                                                            HieuSecondHand
                                                        </option>
                                                        <option>
                                                            3Bich
                                                        </option>
                                                        <option>
                                                            The Nineteen 2Hand
                                                        </option>
                                                    </optgroup>
                                                    <optgroup label="------------------------">
                                                        <option value="product_manufacture" data-toggle="modal"
                                                                data-target="#list-prd-manufacture">Tạo mới
                                                            Nhà sản xuất
                                                        </option>
                                                    </optgroup>
                                                </select>
                                            </div>
                                            <div class="col-md-1 padd-0">
                                                <button type="button" class="btn btn-primary" data-toggle="modal"
                                                        data-target="#list-prd-manufacture"
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
                <div class="expand-info">
                    <div class="row">
                        <!-- <div class="col-md-12">
                            <h4 style="border-bottom: 1px solid white; padding-bottom: 10px;"><i class="fa fa-th-large blue"></i> <a style="color: white; text-decoration: none;" data-toggle="collapse" href="#collapseproductinfo" aria-expanded="false" aria-controls="collapseExample">Thông
                                    tin mở rộng(
                                    <small> Nhấn để xem các thông tin cho thuộc tính web</small>
                                    )</a></h4>
                        </div> -->
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
</body>
<script src="js/jquery.js"></script>
<script src="js/jquery-ui.min.js"></script>
<script src="../admin/js/jsp5shiv.min.js"></script>
<script src="js/respond.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.datetimepicker.full.js"></script>
<script src="js/bootstrap-datepicker.min.js"></script>
<script src="js/bootstrap-datepicker.vi.min.js"></script>
<script src="js/ckeditor.js"></script>
<script src="js/editor.js"></script>
<script src="js/ajax.js"></script>
</html>
