<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html><html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <base href=""/>
    <link rel="shortcut icon" type="image/png" href="images/logodend.png"/>
    <title>Khách Hàng</title>
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
                        <li id="product"><a href="SanPham.jsp"><i class="fa fa-product-hunt"></i><b>Sản phẩm</b></a></li>
                        <li id="customer"><a href="KhachHang.jsp" style=" color: white;background-color: #33CB82!important;"><i class="fa fa-users"></i><b>Khách hàng</b></a></li>
                        <li id="import"><a href="NhapKho.jsp" ><i class="fa fa-truck"></i><b>Nhập kho</b></a></li>
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
<div class="modal fade" id="create-func" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
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
</div>
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
                <h4 class="modal-title" id="myModalLabel" style="color: white;">Tạo mới khách hàng</h4>
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
                            <label for="customer_birthday">Ngày sinh</label>
                        </div>
                        <div class="col-sm-9">
                            <input type="text" id="customer_birthday" name="customer_birthday"
                                   class="form-control txttimes" value="" placeholder="yyyy-mm-dd">
                            <span style="color: red;" class="error error-customer_birthday"></span>
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
                <h4 class="modal-title" id="myModalLabel" style="color: white;">Tạo mới nhà cung cấp</h4>
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
                                <div class="text-center"><img src="/images/balls.gif"/></div>
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
                    <div class="customer-supplier">
    <div class="breadcrumbs-fixed panel-action">
        <div class="row">
            <div class="customer-act act">
                <div class="col-md-4 col-md-offset-2">
                    <div class="left-action text-left clearfix">
                        <h2>Khách hàng</h2>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="right-action text-right">
                        <div class="btn-groups">
                            <button type="button" class="btn btn-primary" data-toggle="modal"
                                    data-target="#create-cust"><i class="fa fa-plus-circle"></i> Tạo khách hàng
                            </button>
                            <button type="button" class="btn btn-success" onclick=""><i class="fa fa-download"></i> Xuất Excel</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="supplier-act act" style="display: none;">
                <div class="col-md-4 col-md-offset-2">
                    <div class="left-action text-left clearfix">
                        <h2>Nhà cung cấp</h2>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="right-action text-right">
                        <div class="btn-groups">
                            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#create-sup">
                                <i class="fa fa-plus-circle"></i> Tạo nhà cung cấp
                            </button>
                            <button type="button" class="btn btn-success" ><i class="fa fa-download"></i> Xuất Excel</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="main-space customer"></div>
    <div>
        <ul class="nav nav-tabs tab-setting" role="tablist" style="padding-left: 20px;">
            <li role="presentation" onclick="tab_click_act('customer');" class="active"><a href="#cus"
                                                                                             aria-controls="customer"
                                                                                             role="tab"
                                                                                             data-toggle="tab"><i
                        class="fa fa-user"></i> Khách hàng</a></li>
            <li role="presentation" onclick="tab_click_act('supplier');" ><a href="#sup"
                                                                             aria-controls="supplier"
                                                                             role="tab"
                                                                             data-toggle="tab"><i
                        class="fa fa-truck"></i> Nhà cung cấp</a></li>
        </ul>
        <div class="tab-content">
            <div id="cus" class="tab-pane active">
                <div class="cus-sear panel-sear">
                    <div action="" class="">
                        <div class="form-group col-md-6 padd-0">
                            <input type="text" class="form-control txt-scustomer"
                                   placeholder="Nhập tên, mã hoặc SDT khách hàng">
                        </div>
                        <div class="form-group col-md-6 ">
                            <div class="col-md-4 padd-0" style="margin-right: 10px;">
                                <select id="cus-option" class="form-control">
                                    <option value="0">Tất cả</option>
                                    <option value="1">KH từng mua hàng</option>
                                    <option value="2">KH còn nợ</option>
                                </select>
                            </div>
                            <button type="button" onclick="cms_paging_listcustomer(1)" class="btn btn-primary btn-large btn-sCustomer" ><i
                                    class="fa fa-search""></i> Tìm kiếm
                            </button>
                        </div>
                    </div>
                </div>
                <div class="cus-body">
                    <table class="table table-bordered table-striped">
                        <thead>
                        <tr>
                            <th class="text-center">Mã KH</th>
                            <th class="text-center">Tên KH</th>
                            <th class="text-center">Điện thoại</th>
                            <th class="text-center">Địa chỉ</th>
                            <th class="text-center">Lần cuối mua hàng</th>
                            <th class="text-center" >Tổng tiền hàng</th>
                            <th class="text-center">Tổng nợ</th>
                            <th></th>
                        </tr>
                        </thead>
                        <tbody class="ajax-loadlist-customer">
                                                        <tr id="tr-item-45">
                                    <td  class="text-center tr-detail-item"
                                       >KH000006</td>
                                    <td  class="text-center tr-detail-item"
                                       >Mai Huỳnh Phước Đạt</td>
                                    <td class="text-center">0969022097</td>
                                    <td class="text-center">Vĩnh Long</td>
                                    <td class="text-center">-</td>
                                    <td class="text-right"
                                        style="font-weight: bold; ">-</td>
                                    <td class="text-right">-</td>
                                    <td class="text-center"><i class="fa fa-trash-o" style="cursor:pointer;"
                                                               onclick="cms_delCustomer(45,1);"></i>
                                    </td>
                                </tr>
                                                            <tr id="tr-item-44">
                                    <td  class="text-center tr-detail-item"
                                       >KH000005</td>
                                    <td  class="text-center tr-detail-item"
                                       >Phan Thành Đoan</td>
                                    <td class="text-center">0862083141</td>
                                    <td class="text-center">Phan Rang - Ninh Thuận</td>
                                    <td class="text-center">-</td>
                                    <td class="text-right"
                                        style="font-weight: bold; ">-</td>
                                    <td class="text-right">-</td>
                                    <td class="text-center"><i class="fa fa-trash-o" style="cursor:pointer;"
                                                               onclick="cms_delCustomer(44,1);"></i>
                                    </td>
                                </tr>
                                                            <tr id="tr-item-43">
                                                                <!-- onclick="cms_detail_customer(43)" -->
                                    <td  class="text-center tr-detail-item"
                                       >KH000004</td>
                                    <td  class="text-center tr-detail-item"
                                       >Phạm Minh Nguyên</td>
                                    <td class="text-center">0924404048</td>
                                    <td class="text-center">Biên Hòa - Đồng Nai</td>
                                    <td class="text-center">2020-11-15 23:42:29</td>
                                    <td class="text-right"
                                        style="font-weight: bold; ">22,000,000</td>
                                    <td class="text-right">-</td>
                                    <td class="text-center"><i class="fa fa-trash-o" style="cursor:pointer;"
                                                               onclick="cms_delCustomer(43,1);"></i>
                                    </td>
                                </tr>
                                                            <tr id="tr-item-42">
                                    <td  class="text-center tr-detail-item"
                                       >KH000003</td>
                                    <td  class="text-center tr-detail-item"
                                       >Nguyễn Công Dự</td>
                                    <td class="text-center">0921172028</td>
                                    <td class="text-center">Đồng Tháp</td>
                                    <td class="text-center">-</td>
                                    <td class="text-right"
                                        style="font-weight: bold; ">-</td>
                                    <td class="text-right">-</td>
                                    <td class="text-center"><i class="fa fa-trash-o" style="cursor:pointer;"
                                                               onclick="cms_delCustomer(42,1);"></i>
                                    </td>
                                </tr>
                                                            <tr id="tr-item-41">
                                    <td  class="text-center tr-detail-item"
                                       >KH000002</td>
                                    <td  class="text-center tr-detail-item"
                                       >Phạm Huy Phước</td>
                                    <td class="text-center">0948733173</td>
                                    <td class="text-center">Biên Hòa-Đồng Nai</td>
                                    <td class="text-center">-</td>
                                    <td class="text-right"
                                        style="font-weight: bold; ">-</td>
                                    <td class="text-right">-</td>
                                    <td class="text-center"><i class="fa fa-trash-o" style="cursor:pointer;"
                                                               onclick="cms_delCustomer(41,1);"></i>
                                    </td>
                                </tr>
                                                            <tr id="tr-item-40">
                                    <td  class="text-center tr-detail-item"
                                       >KH000001</td>
                                    <td  class="text-center tr-detail-item"
                                       >Nguyễn Viết Lâm</td>
                                    <td class="text-center">0937983205</td>
                                    <td class="text-center">Di Linh- Lâm Đồng</td>
                                    <td class="text-center">-</td>
                                    <td class="text-right"
                                        style="font-weight: bold; ">-</td>
                                    <td class="text-right">-</td>
                                    <td class="text-center"><i class="fa fa-trash-o" style="cursor:pointer;"
                                                               onclick="cms_delCustomer(40,1);"></i>
                                    </td>
                                </tr>
                                                    </tbody>
                    </table>
                    <div class="alert alert-info summany-info clearfix" role="alert">
                        <div class="ajax-loadlist-total sm-info pull-left padd-0">Số khách hàng:
                            <span><b>6</b></span>
                             | Tổng tiền hàng: <span><b>22,000,000</b> đ</span> | Tổng nợ: <span><b>0</b> đ</span></div>
                        <div class="pull-right">
                                                    </div>
                    </div>
                </div>
            </div>
            <div id="sup" class="tab-pane">
                <div class="sup-sear panel-sear">
                    <div>
                        <div class="form-group col-md-6 padd-0">
                            <input type="text" class="form-control txt-ssupplier"
                                   placeholder="Nhập tên, mã hoặc SDT Nhà cung cấp">
                        </div>
                        <div class="form-group col-md-6 ">
                            <div class="col-md-4 padd-0" style="margin-right: 10px;">
                                <select id="sup-option" class="form-control">
                                    <option value="0">Tất cả</option>
                                    <option value="1">NCC từng nhập hàng</option>
                                    <option value="2">Còn nợ NCC</option>
                                </select>
                            </div>
                            <button type="button" class="btn btn-primary btn-large btn-ssup"
                                    onclick="cms_paging_supplier(1)"><i class="fa fa-search"></i> Tìm kiếm
                            </button>
                        </div>
                    </div>
                </div>
                <div class="sup-body"><table class="table table-bordered">
                    <thead>
                    <tr>
                        <th class="text-center">Mã NCC</th>
                        <th class="text-center">Tên NCC</th>
                        <th class="text-center">Điện thoại</th>
                        <th class="text-center">Địa chỉ</th>
                        <th class="text-center">Lần cuối nhập hàng</th>
                        <th class="text-center" >Tổng tiền hàng</th>
                        <th class="text-center">Nợ</th>
                        <th></th>
                    </tr>
                    </thead>
                    <tbody>
                                <tr>
                                <td class="text-center" onclick="cms_detail_supplier(23)">NCC000003</td>
                                <td class="text-center" onclick="cms_detail_supplier(23)">HieuSecondHand</td>
                                <td class="text-center">02081234567</td>
                                <td class="text-left">Nguyễn Ngọc Vũ - Hà Nội</td>
                                <td class="text-center">2019-06-14 23:32:00</td>
                                <td class="text-right" style="font-weight: bold; ">75,000,000                </td>
                                <td class="text-right">0</td>
                                <td class="text-center"><i class="fa fa-trash-o" style="cursor:pointer;" onclick="cms_delsup(23,1);"></i></td>
                            </tr>
                                    <tr>
                                <td class="text-center" onclick="cms_detail_supplier(22)">NCC000002</td>
                                <td class="text-center" onclick="cms_detail_supplier(22)">The Nineteen 2Hand</td>
                                <td class="text-center">02083656789</td>
                                <td class="text-left">Gò Vấp - Thành Phố Hồ Chí Minh</td>
                                <td class="text-center">-</td>
                                <td class="text-right" style="font-weight: bold; ">0                </td>
                                <td class="text-right">0</td>
                                <td class="text-center"><i class="fa fa-trash-o" style="cursor:pointer;" onclick="cms_delsup(22,1);"></i></td>
                            </tr>
                                    <tr>
                                <td class="text-center" onclick="cms_detail_supplier(21)">NCC000001</td>
                                <td class="text-center" onclick="cms_detail_supplier(21)">3Bich</td>
                                <td class="text-center">0123456777</td>
                                <td class="text-left">Bình Thạnh - Thành Phố Hồ Chí Minh</td>
                                <td class="text-center">-</td>
                                <td class="text-right" style="font-weight: bold; ">0                </td>
                                <td class="text-right">0</td>
                                <td class="text-center"><i class="fa fa-trash-o" style="cursor:pointer;" onclick="cms_delsup(21,1);"></i></td>
                            </tr>
                            </tbody>
                </table>
                <div class="alert alert-info summany-info clearfix" role="alert">
                    <div class="sm-info pull-left padd-0">
                        Số NCC:<span>3</span>
                        Tổng tiền: <span>75,000,000 đ</span>
                        Tổng nợ: <span>0 đ</span>
                    </div>
                    <div class="pull-right ajax-pagination">
                            </div>
                </div></div>
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
