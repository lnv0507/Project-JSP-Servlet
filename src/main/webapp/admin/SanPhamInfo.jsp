<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                        <li id="product"><a href="SanPham.jsp" style=" color: white;background-color: #33CB82!important;"><i class="fa fa-product-hunt"></i><b>Sản phẩm</b></a></li>
                        <li id="customer"><a href="KhachHang.jsp" ><i class="fa fa-users"></i><b>Khách hàng</b></a></li>
                        <li id="import"><a href="NhapKho.jsp"><i class="fa fa-truck"></i><b>Nhập kho</b></a></li>
                        <li id="inventory"><a href="TonKho.jsp" ><i class="fa fa-list-alt"></i><b>Tồn kho</b></a></li>
                        <li id="inventory"><a href="LienHe.jsp" ><i class="fa fa-user"></i><b>Liên hệ</b></a></li>
                        <li id="config"><a href="ThietLap.jsp" ><i class="fa fa-empire"></i><b>Thiết lập</b></a></li>
                        <img id="dend" style="width: 180px; height: 180px; margin-left: 15px;" src="images/logodend.png" alt=" ">
                    </ul>
</div>            </div>
            <div class="col-md-10 ">
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
                                        <div class="right-action text-right">
                                            <div class="btn-groups">
                                                <button type="button" class="btn btn-primary" style="background-color: #8B8B8B;" onclick="cms_deactivate_product_bydetail(119)"><i class="fa fa-pause"></i> Ngừng kinh doanh
                                                </button>
                                                <a href="SanPhamRepair.jsp"> 
                                                    <button type="button" class="btn btn-primary " onclick="cms_edit_product(119)"><i class="fa fa-pencil-square-o"></i> Sửa thông tin
                                                    </button>
                                                </a>
                                                
                                                <button type="button" class="btn btn-danger" onclick="cms_delete_product_bydetail(119)"><i class="fa fa-trash-o"></i> Xóa
                                                </button>
                                                <button type="button" class="btn btn-default" onclick="cms_javascript_redirect( cms_javascrip_fullURL() )"><i class="fa fa-arrow-left"></i> Trở về
                                                </button>
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
    
                                    <div style="font-size: 18px; color: white; ">Đồng hồ thể thao nữ Sport watch samda</div>
                                </div>
                                <div class="col-md-6 padd-right-0">
                                    <label>Mã sản phẩm</label>
    
                                    <div style="font-size: 18px; color: white; ">SP000006</div>
                                </div>
                            </div>
                            <div class="form-group clearfix">
                                <div class="col-md-6 padd-left-0">
                                    <label>Số lượng</label>
                                    <div style="font-size: 18px; color: white; ">1997</div>
                                </div>
                                <div class="col-md-6">
                                    <div style="padding-bottom: 5px; font-weight: 700; color: #ffffff; "><span>Theo dõi tồn kho :</span> <span class="yes">Có</span>                                </div>
                                    <div style="padding-bottom: 5px; font-weight: 700; color: #ffffff; "><span>Cho phép bán âm :</span> <span class="no">Không</span>                                </div>
                                </div>
                            </div>
                            <div class="form-group clearfix">
                                <div class="col-md-6 padd-left-0">
                                    <label>Giá vốn</label>
    
                                    <div style="font-size: 18px; color: white; ">150,000</div>
                                </div>
                                <div class="col-md-6 padd-right-0">
                                    <label>Giá bán</label>
    
                                    <div style="font-size: 18px; color: white; ">300,000</div>
                                </div>
                            </div>
                            <div class="form-group clearfix">
                                <div class="col-md-6 padd-left-0">
                                    <label>Danh mục</label>
    
                                    <div class="col-md-12 padd-0">
                                        <div style="font-size: 18px; color: white; ">Đồng Hồ Nữ</div>
                                    </div>
                                </div>
                                <div class="col-md-6 padd-right-0">
                                    <label>Nhà Cung cấp</label>
    
                                    <div class="col-md-12 padd-0">
                                        <div style="font-size: 18px; color: white; ">3Bich</div>
                                    </div>
                                </div>
    
                            </div>
                            <!--                            <div class="form-group clearfix">-->
                            <!--                                <div class="col-md-6 padd-0">-->
                            <!--                                    <label>Thuế VAT</label>-->
                            <!---->
                            <!--                                    <div>-->
                            <!--</div>-->
                            <!--                                </div>-->
                            <!--                            </div>-->
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
                                    <h3 style="color:white;">Hình ảnh sản phẩm</h3>
                                    <img src="images/a1.jpg" style="width: 300px ; height: 300px;" alt="">
                                </div>
    
                                <div class="col-md-6 padd-20">
                                    <h3 style="color:white;">Mô tả</h3>
                                    <div id="ckeditor">
                                        <textarea id="ck_editor" id="prd_description" style="width: 500px; height: 300px;"></textarea>
                                    </div>
                                </div>
                            </div>
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
