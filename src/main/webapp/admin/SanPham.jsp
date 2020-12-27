<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html><html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <base href=""/>
    <link rel="shortcut icon" type="image/png" href="images/logodend.png"/>
    <title>Sản Phẩm</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap-datepicker.css" rel="stylesheet">
    <link href="css/bootstrap-datetimepicker.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href="css/jquery-ui.min.css" rel="stylesheet">
    <link href="css/jquery.datetimepicker.css" rel="stylesheet">
</head>
<body>
<header>
    <nav id="navbar-container" class="navbar navbar- navbar-fixed-top">
        <div class="container-fluid">
            
            
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
               
                <ul class="nav navbar-nav navbar-right">
                                    <li style="border-right: 1px solid #E1E1E1; padding-right: 15px;">
                        <label style="margin: 13px 15px; color: white">
                            Tiệm đồ cũ DEND 
                        </label>
                    </li>
                   
                                    <li class="dropdown user-profile">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                           aria-expanded="false"><span class="hello">Xin chào, </span>DEND<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="TaiKhoan.jsp"><i class="fa fa-user"></i>Tài khoản</a></li>
                            <li><a href="DangNhap.jsp"><i class="fa fa-power-off"></i>Thoát</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav></header>
<section class="main" role="main">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-2 padd-0">
                <div class="sidebar sidebar-fixed hidden-xs hidden-sm hidden-md" id="sidebar">
                    <ul class="nav nav-pills nav-list nav-stacked">                        
                        <li id="dashboard"><a href="Trangchu.jsp" ><i class="fa fa-gg-circle"></i><b>Trang Chủ</b></a></li>
                        <li id="orders"><a href="DonHang.jsp"><i class="fa fa-shopping-cart"></i><b>Đơn hàng</b></a></li>
                        <li id="product"><a href="#"  style=" color: white;background-color: #33CB82!important;"><i class="fa fa-product-hunt"></i><b>Sản phẩm</b></a></li>
                        <li id="customer"><a href="KhachHang.jsp" ><i class="fa fa-users"></i><b>Khách hàng</b></a></li>
                        <li id="import"><a href="NhapKho.jsp"><i class="fa fa-truck"></i><b>Nhập kho</b></a></li>
                        <li id="inventory"><a href="TonKho.jsp" ><i class="fa fa-list-alt"></i><b>Tồn kho</b></a></li>
                        <li id="inventory"><a href="LienHe.jsp" ><i class="fa fa-user"></i><b>Liên hệ</b></a></li>
                        <li id="config"><a href="ThietLap.jsp" ><i class="fa fa-empire"></i><b>Thiết lập</b></a></li>
                        <img id="dend" style="width: 180px; height: 180px; margin-left: 15px;" src="images/logodend.png" alt=" ">
        </ul>
</div>            </div>
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
<!-- Start create employee -->
<div class="modal fade" id="create-nv" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel" style="text-transform: uppercase;"><i class="fa fa-user"></i>
                    Thêm tài khoản đăng nhập </h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" id="frm-cruser">
                    <div class="form-group">
                        <div class="col-sm-3">
                            <label for="tennhanvien">Tên nhân viên</label>
                        </div>
                        <div class="col-sm-9">
                            <input type="text" id="display_name" name="display_name" class="form-control" value=""
                                   placeholder="Nhập tên nhân viên">
                            <span style="color: red; font-style: italic;" class="error error-display_name"></span>
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
<!-- <div class="modal fade" id="create-func" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel" style="text-transform: uppercase;"><i class="fa fa-user"></i>
                    Thêm Chức năng </h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal"> 
                    <div class="form-group">
                        <div class="col-sm-3">
                            <label for="tennhanvien">URL</label>
                        </div>
                        <div class="col-sm-9">
                            <input type="text" id="permisstion_url" name="permisstion_url" class="form-control" value=""
                                   placeholder="Nhập url cho phép của chức năng">
                            <span style="color: red; font-style: italic;" class="error error-permisstion_url"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-3">
                            <label for="manv">Tên chức năng</label>
                        </div>
                        <div class="col-sm-9">
                            <input type="text" id="permisstion_name" name="permisstion_name" class="form-control"
                                   value="" placeholder="Nhập tên chức năng">
                            <span style="color: red; font-style: italic;" class="error error-permisstion_name"></span>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary btn-sm btn-crfunc"><i class="fa fa-check"></i> Lưu</button>
                <button type="button" class="btn btn-default btn-sm btn-close" data-dismiss="modal"><i
                        class="fa fa-undo"></i> Bỏ qua
                </button>
            </div>
        </div>
    </div>
</div>-->
<!-- end create function -->

<!-- Start create group -->
<div class="modal fade" id="create-group" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel" style="text-transform: uppercase;"><i class="fa fa-user"></i>
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
                <h4 class="modal-title" id="myModalLabel" style="text-transform: uppercase;"><i class="fa fa-user"></i>
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
                <button type="button" class="btn btn-primary btn-sm" onclick="cms_crstore();" ><i class="fa fa-check"></i> Lưu
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
                            <input type="text" id="customer_code" name="customer_code" class="form-control" value=""
                                   placeholder="Mã khách hàng(tự sinh nếu bỏ trống)">
                            <span style="color: red; font-style: italic;" class="error error-customer_code"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-3">
                            <label for="customer_name">Tên Khách hàng</label>
                        </div>
                        <div class="col-sm-9">
                            <input type="text" id="customer_name" name="customer_name" class="form-control" value=""
                                   placeholder="Nhập tên khách hàng( bắc buộc )">
                            <span style="color: red; font-style: italic;" class="error error-customer_name"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-3">
                            <label for="customer_phone">Số điện thoại</label>
                        </div>
                        <div class="col-sm-9">
                            <input type="text" id="customer_phone" name="customer_phone"
                                   class="form-control" value="" placeholder="">
                            <span style="color: red; font-style: italic;" class="error error-customer_phone"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-3">
                            <label for="customer_email">Email</label>
                        </div>
                        <div class="col-sm-9">
                            <input type="text" id="customer_email" name="customer_email" class="form-control" value=""
                                   placeholder="Nhập email khách hàng ( ví dụ: kh10@gmail.com )">
                            <span style="color: red; font-style: italic;" class="error error-customer_email"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-3">
                            <label for="customer_addr">Địa chỉ</label>
                        </div>
                        <div class="col-sm-9">
                            <input type="text" id="customer_addr" name="customer_addr" class="form-control"
                                   value="" placeholder="">
                            <span style="color: red; font-style: italic;" class="error error-customer_addr"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-3">
                            <label for="customer_notes">Ghi chú</label>
                        </div>
                        <div class="col-sm-9">
                            <input type="text" id="customer_notes" name="customer_notes" class="form-control" value=""
                                   placeholder="">
                            <span style="color: red; font-style: italic;" class="error error-customer_notes"></span>
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
                            <span style="color: red; font-style: italic;" class="error error-customer_gender"></span>
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
                            <input type="text" id="supplier_code" name="supplier_code" class="form-control" value=""
                                   placeholder="Mã nhà cung cấp (Tự sinh nếu bỏ trống)">
                            <span style="color: red; font-style: italic;" class="error error-supplier_code"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-3">
                            <label for="supplier_name">Tên nhà cung cấp</label>
                        </div>
                        <div class="col-sm-9">
                            <input type="text" id="supplier_name" name="supplier_name" class="form-control" value=""
                                   placeholder="Nhập tên nhà cung cấp (bắc buộc)">
                            <span style="color: red; font-style: italic;" class="error error-supplier_name"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-3">
                            <label for="supplier_phone">Số điện thoại</label>
                        </div>
                        <div class="col-sm-9">
                            <input type="text" id="supplier_phone" name="supplier_phone" class="form-control"
                                   value="" placeholder="Số điện thoại">
                            <span style="color: red; font-style: italic;" class="error error-supplier_phone"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-3">
                            <label for="supplier_email">Email</label>
                        </div>
                        <div class="col-sm-9">
                            <input type="text" id="supplier_email" name="supplier_email" class="form-control" value=""
                                   placeholder="Nhập email nhà cung cấp ( ví dụ: kh10@gmail.com )">
                            <span style="color: red; font-style: italic;" class="error error-supplier_email"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-3">
                            <label for="supplier_addr">Địa chỉ</label>
                        </div>
                        <div class="col-sm-9">
                            <input type="text" id="supplier_addr" name="supplier_addr" class="form-control"
                                   value="" placeholder="">
                            <span style="color: red; font-style: italic;" class="error error-supplier_addr"></span>
                        </div>
                    </div>
                                        <div class="form-group">
                                            <div class="col-sm-3">
                                                <label for="tax_code">Mã số thuế</label>
                                            </div>
                                            <div class="col-sm-9">
                                                <input type="text" id="tax_code" name="tax_code" class="form-control" value="" placeholder="">
                                                <span style="color: red; font-style: italic;" class="error error-tax_code"></span>
                                            </div>
                                        </div>
                    <div class="form-group">
                        <div class="col-sm-3">
                            <label for="supplier_notes">Ghi chú</label>
                        </div>
                        <div class="col-sm-9">
                            <input type="text" id="supplier_notes" name="notes" class="form-control" value="" placeholder="">
                            <span style="color: red; font-style: italic;" class="error error-supplier_notes"></span>
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
                <h4 class="modal-title" id="myModalLabel">Quản lý nhà sản xuất</h4>
            </div>
            <div class="modal-body">
                <div class="tabtable">
                    <!-- Nav tabs -->
                    <ul class="nav nav-tabs tab-setting" role="tablist"
                        style="background-color: #EFF3F8; padding: 5px 0 0 15px;">
                        <li role="presentation" class="active list-manufacture-click" style="margin-right: 3px;"><a
                                href="#list-manufacture" aria-controls="list-manufacture" role="tab"
                                data-toggle="tab"><i class="fa fa-list"></i> Danh sách Nhà sản xuất</a></li>
                        <li role="presentation"><a href="#create-manufacture" aria-controls="create-manufacture"
                                                   role="tab" data-toggle="tab"><i class="fa fa-plus"></i> Tạo mới chủng
                                loại</a></li>
                    </ul>

                    <!-- Tab panes -->
                    <div class="tab-content" style="padding:10px; border: 1px solid #ddd; border-top: none;">
                        <div role="tabpanel" class="tab-pane active" id="list-manufacture">
                            <div class="prd_manufacture-body">

                            </div>
                        </div>

                        <!-- Tab Function -->
                        <div role="tabpanel" class="tab-pane" id="create-manufacture">
                            <div class="row form-horizontal">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <div class="col-md-7 padd-right-0">
                                            <input type="text" style="border-radius: 0 !important;" class="form-control"
                                                   id="prd_manuf_name" value="" placeholder="Nhập tên Nhà sản xuất">
                                        </div>
                                        <div class="input-groups-btn col-md-5 padd-0">
                                            <button type="button" class="btn btn-primary"
                                                    style="border-radius: 0 3px 3px 0;"
                                                    onclick="cms_create_manufacture(1);"><i class="fa fa-check"></i> Lưu
                                            </button>
                                            <button type="button" class="btn btn-primary " onclick="cms_create_manufacture(0);"><i
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
                <h4 class="modal-title" id="myModalLabel">Quản lý danh mục</h4>
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
                                <div class="text-center"><img src="images/balls.gif"/></div>
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
                                                    style="border-radius: 0 3px 3px 0;" onclick="cms_create_group(1);"><i
                                                    class="fa fa-check"></i> Lưu
                                            </button>
                                            <button type="button" class="btn btn-primary "
                                                    onclick="cms_create_group(0);"><i class="fa fa-floppy-o"></i> Lưu
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
                        <h2>Danh sách sản phẩm</h2>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="right-action text-right">
                        <div class="btn-groups">
                            <!-- onclick="cms_vcrproduct('1')" -->
                             <a href="SanPhamCreate.jsp" > 
                                <button type="button" class="btn btn-primary"  ><i
                                    class="fa fa-plus"> </i> Tạo sản phẩm 
                            </button>
                            </a>
                            
                            <!-- <button type="button" class="btn btn-success"><i class="fa fa-download"></i> Xuất Excel</button> -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="main-space orders-space"></div>

    <div class="products-content">
        <div class="product-sear panel-sear">
            <div action="" class="">
                <div class="form-group col-md-5 padd-0">
                    <input type="text" class="form-control" placeholder="Nhập mã sản phẩm hoặc tên sản phẩm"
                           id="product-search">
                </div>
                <div class="form-group col-md-7 ">
                    <div class="col-md-3 padd-0" style="margin-right: 10px;">
                        <select class="form-control" id="search-option-1">
                            <option value="0">Đang kinh doanh</option>
                            <option value="1">Đã ngừng kinh doanh</option>
                            <option value="2">Đã xóa</option>
                        </select>
                    </div>
                    <div class="col-md-3 padd-0" style="margin-right: 10px;">
                        <select class="form-control search-option-2" id="prd_group_id">
                            <option value="-1" selected="selected">--Danh mục--</option>
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
                            <option value="product_group" data-toggle="modal" data-target="#list-prd-group">Tạo mới danh mục
                            </option>
                            </optgroup>
                        </select>
                    </div>
                    <div class="col-md-3 padd-0" style="margin-right: 10px;">
                        <select class="form-control search-option-3" id="prd_manufacture_id">
                            <option value="-1" selected="selected">Nhà cung cấp</option>
                            <optgroup label="Chọn nhà cung cấp">
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
                                <option value="product_manufacture" data-toggle="modal" data-target="#list-prd-manufacture">Tạo mới 1nhà cung câp
                                </option>
                            </optgroup>
                        </select>
                    </div>
                    <button type="button" class="btn btn-primary btn-large btn-ssup"  onclick="cms_paging_product(1)"><i
                            class="fa fa-search"></i> Tìm kiếm
                    </button>
                </div>
            </div>
        </div>
        
           
                <div class="product-main-body"><table class="table table-bordered table-striped">
                    <thead>
                    <tr>
                        <th class="text-center"><label class="checkbox" style="margin: 0;"><input type="checkbox" class="checkbox chkAll"><span style="width: 15px; height: 15px;"></span></label></th>
                        <th class="text-center">Tên sản phẩm</th>
                        <th class="text-center">Mã sản phẩm</th>
                        <th class="text-center">Hình ảnh</th>
                        <th class="text-center">SL</th>
                        <th class="text-center">Giá bán</th>
                        <th class="text-center">Danh mục</th>
                        <th class="text-center">Nhà cung cấp</th>
                <!--        <th class="text-center">Hình</th>-->
                        <th></th>
                    </tr>
                    </thead>
                    <tbody>
                                <tr>
                                <td class="text-center"><label class="checkbox" style="margin: 0;"><input type="checkbox" value="119" class="checkbox chk"><span style="width: 15px; height: 15px;"></span></label>
                                </td>
                                <!--  onclick="cms_detail_product(119)" style="color: #2a6496; cursor: pointer;" -->
                                <td class="text-left prd_name">Áo Đầu Lâu Bốc Cháy</td>
                                <td class="text-center">SP000001</td>
                                <td class="text-center">
                                    <img src="images/a1.jpg" style="width: 80px ; height: 80px;" alt="">
                                </td>
                                <td class="text-center">5</td>
                                <td class="text-right" style="font-weight: bold;">50,000</td>
                                <td>Áo thun</td>
                                <td>3Bich</td>
                                <td class="text-center">
                                    <a href="SanPhamInfo.jsp">
                                        <i class="fa fa-eye" style="margin-right: 5px; color: #307ECC;" aria-hidden="true"></i>

                                    </a>
                                        <i title="Ngừng kinh doanh" class="fa fa-pause" onclick="cms_deactivate_product(119,1);" style="margin-right: 5px; color: #C6699F; cursor: pointer;"></i>
                                        <i class="fa fa-trash-o" style="color: darkred;" title="Xóa" onclick="cms_delete_product(119,1)"></i>
                                </td>
                            </tr>
                                    <tr>
                                <td class="text-center"><label class="checkbox" style="margin: 0;"><input type="checkbox" value="118" class="checkbox chk"><span style="width: 15px; height: 15px;"></span></label>
                                </td>
                                <!-- onclick="cms_detail_product(118)" style="color: #2a6496; cursor: pointer;" -->
                                <td class="text-left prd_name" >Áo Denim The Devil</td>
                                <td class="text-center">SP000002</td>
                                <td class="text-center">
                                    <img src="images/a3.jpg" style="width: 80px ; height: 80px;" alt="">
                                </td>
                                <td class="text-center">6</td>
                                <td class="text-right" style="font-weight: bold;">50,000</td>
                                <td>Áo Denim</td>
                                <td>HieuSecondHand</td>
                                <td class="text-center">
                                    <a href="SanPhamInfo.jsp">
                                        <i class="fa fa-eye" style="margin-right: 5px; color: #307ECC;" aria-hidden="true"></i>

                                    </a>
                                     <i title="Ngừng kinh doanh" class="fa fa-pause" onclick="cms_deactivate_product(118,1);" style="margin-right: 5px; color: #C6699F; cursor: pointer;"></i>
                                     <i class="fa fa-trash-o" style="color: darkred;" title="Xóa" onclick="cms_delete_product(118,1)"></i>
                                </td>
                            </tr>
                                    <tr>
                                <td class="text-center"><label class="checkbox" style="margin: 0;"><input type="checkbox" value="117" class="checkbox chk"><span style="width: 15px; height: 15px;"></span></label>
                                </td>
                                <!-- onclick="cms_detail_product(117)" style="color: #2a6496; cursor: pointer;" -->
                                <td class="text-left prd_name" >Quần Jeans Robin Hood</td>
                                <td class="text-center">SP000003</td>
                                <td class="text-center">
                                    <img src="images/a6.jpg" style="width: 80px ; height: 80px;" alt="">
                                </td>
                                <td class="text-center">10</td>
                                <td class="text-right" style="font-weight: bold;">50,000</td>
                                <td>Quần short</td>
                                <td>3Bich</td>
                                <td class="text-center">
                                    <a href="SanPhamInfo.jsp">
                                        <i class="fa fa-eye" style="margin-right: 5px; color: #307ECC;" aria-hidden="true"></i>

                                    </a>
                                    <i title="Ngừng kinh doanh" class="fa fa-pause" onclick="cms_deactivate_product(117,1);" style="margin-right: 5px; color: #C6699F; cursor: pointer;"></i>
                                    <i class="fa fa-trash-o" style="color: darkred;" title="Xóa" onclick="cms_delete_product(117,1)"></i>
                                                                </td>
                            </tr>
                                    <tr>
                                <td class="text-center"><label class="checkbox" style="margin: 0;"><input type="checkbox" value="116" class="checkbox chk"><span style="width: 15px; height: 15px;"></span></label>
                                </td>
                                <!-- onclick="cms_detail_product(116)" style="color: #2a6496; cursor: pointer;" -->
                                <td class="text-left prd_name" >Quần Short Champion</td>
                                <td class="text-center">SP000004</td>
                                <td class="text-center">
                                    <img src="images/a2.jpg" style="width: 80px ; height: 80px;" alt="">

                                </td>
                                <td class="text-center">12</td>
                                <td class="text-right" style="font-weight: bold;">50,000</td>
                                <td>Quần Short</td>
                                <td>Nineteen 2Hand</td>
                                <td class="text-center">
                                    <a href="SanPhamInfo.jsp">
                                        <i class="fa fa-eye" style="margin-right: 5px; color: #307ECC;" aria-hidden="true"></i>

                                    </a>
                                      <i title="Ngừng kinh doanh" class="fa fa-pause" onclick="cms_deactivate_product(116,1);" style="margin-right: 5px; color: #C6699F; cursor: pointer;"></i>
                                    <i class="fa fa-trash-o" style="color: darkred;" title="Xóa" onclick="cms_delete_product(116,1)"></i>
                                                                </td>
                            </tr>
                                    <tr>
                                <td class="text-center"><label class="checkbox" style="margin: 0;"><input type="checkbox" value="115" class="checkbox chk"><span style="width: 15px; height: 15px;"></span></label>
                                </td>
                                <!-- onclick="cms_detail_product(115)" style="color: #2a6496; cursor: pointer;" -->
                                <td class="text-left prd_name" >Quần Short White Navy</td>
                                <td class="text-center">SP000005</td>
                                <td class="text-center">
                                    <img src="images/a5.jpg" style="width: 80px ; height: 80px;" alt="">
                                </td>
                                <td class="text-center">8</td>
                                <td class="text-right" style="font-weight: bold;">50,000</td>
                                <td>Quần Short</td>
                                <td>3Bich</td>
                                <td class="text-center">
                                    <a href="SanPhamInfo.jsp">
                                        <i class="fa fa-eye" style="margin-right: 5px; color: #307ECC;" aria-hidden="true"></i>

                                    </a>
                                     <i title="Ngừng kinh doanh" class="fa fa-pause" onclick="cms_deactivate_product(115,1);" style="margin-right: 5px; color: #C6699F; cursor: pointer;"></i>
                                    <i class="fa fa-trash-o" style="color: darkred;" title="Xóa" onclick="cms_delete_product(115,1)"></i>
                            </td>
                            </tr>
                                    <tr>
                                <td class="text-center"><label class="checkbox" style="margin: 0;"><input type="checkbox" value="114" class="checkbox chk"><span style="width: 15px; height: 15px;"></span></label>
                                </td>
                                <!-- onclick="cms_detail_product(114)" style="color: #2a6496; cursor: pointer;" -->
                                <td class="text-left prd_name" >Mắt Kính 02</td>
                                <td class="text-center">SP000006</td>
                                <td class="text-center">
                                    <img src="images/a2%20copy.jpg" style="width: 80px ; height: 80px;" alt="">
                                </td>
                                <td class="text-center">10</td>
                                <td class="text-right" style="font-weight: bold;">50,000</td>
                                <td>Mắt kính</td>
                                <td>HieuSecondHand</td>
                <!--                <td class="text-center"-->
                <!--                    style="width: 35px;">--><!--</td>-->
                                <td class="text-center">
                                    <a href="SanPhamInfo.jsp">
                                        <i class="fa fa-eye" style="margin-right: 5px; color: #307ECC;" aria-hidden="true"></i>

                                    </a>
                                      <i title="Ngừng kinh doanh" class="fa fa-pause" onclick="cms_deactivate_product(114,1);" style="margin-right: 5px; color: #C6699F; cursor: pointer;"></i>
                                    <i class="fa fa-trash-o" style="color: darkred;" title="Xóa" onclick="cms_delete_product(114,1)"></i>
                                 </td>
                            </tr>
                        
                    </tbody>
                </table>
                <div class="alert alert-info summany-info clearfix" role="alert">
                    <div class="sm-info pull-left padd-0">SL sản phẩm/SL nhà sản xuất:
                        <span>6            /36</span></div>
                    <div class="pull-right ajax-pagination">
                            </div>
                </div>
                </div>
            </div>
        </div>
    </div>
</div>                </div>
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
