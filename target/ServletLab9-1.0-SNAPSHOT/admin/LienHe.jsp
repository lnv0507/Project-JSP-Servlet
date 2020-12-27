<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html><html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <base href=""/>
    <link rel="shortcut icon" type="image/png" href="images/logodend.png"/>
    <title>Liên Hệ</title>
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
                        <li id="orders"><a href="#" ><i class="fa fa-shopping-cart"></i><b>Đơn hàng</b></a></li>
                        <li id="product"><a href="SanPham.jsp"><i class="fa fa-product-hunt"></i><b>Sản phẩm</b></a></li>
                        <li id="customer"><a href="KhachHang.jsp" ><i class="fa fa-users"></i><b>Khách hàng</b></a></li>
                        <li id="import"><a href="NhapKho.jsp" ><i class="fa fa-truck"></i><b>Nhập kho</b></a></li>
                        <li id="inventory"><a href="TonKho.jsp" ><i class="fa fa-list-alt"></i><b>Tồn kho</b></a></li>
                        <li id="inventory"><a href="LienHe.jsp" style=" color: white;background-color: #33CB82!important;"><i class="fa fa-user"></i><b>Liên hệ</b></a></li>
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

                    <div class="customer-supplier">
                        <div class="breadcrumbs-fixed panel-action">
                            <div class="row">
                                <div class="orders-act">
                                    <div class="col-md-4 col-md-offset-2">
                                        <div class="left-action text-left clearfix">
                                            <h2>Danh sách liên hệ</h2>
                                        </div>
                                    </div>
                                  
                                </div>
                            </div>
                        </div>
    <div class="main-space customer"></div>
    <div>
        <ul class="nav nav-tabs tab-setting" role="tablist" style="padding-left: 20px;">
            <li role="presentation" onclick="tab_click_act('customer');" class="active"><a href="#orderNotCheck"
                                                                                             aria-controls="customer"
                                                                                             role="tab"
                                                                                             data-toggle="tab"><i
                        class="fa fa-user"></i> Liên Hệ Chờ Xác Nhận</a></li>
            <li role="presentation" onclick="tab_click_act('supplier');" ><a href="#orderCheck"
                                                                             aria-controls="supplier"
                                                                             role="tab"
                                                                             data-toggle="tab"><i
                         class="fa fa-user"></i> Liên Hệ Được Xác Nhận</a></li>
        </ul>
        <div class="tab-content">
            <div id="orderNotCheck" class="tab-pane active">
                <div class="product-sear panel-sear">
                    <div class="form-group col-md-3 padd-0">
                        <input type="text" class="form-control" id="order-search"
                               placeholder="Nhập mã liên hệ để tìm kiếm">
                    </div>
                    <div class="form-group col-md-9 padd-0" style="padding-left: 5px;">
                        <div class="col-md-9 padd-0">
                           
                            <div class="col-md-3 padd-0" style="padding-left: 5px;">
                                <button style="box-shadow: none;" type="button" class="btn btn-primary btn-large"
                                        onclick="cms_paging_order(1)"><i class="fa fa-search"></i> Tìm kiếm
                                </button>
                            </div>
                        </div>
                        <!-- <div class="col-md-3 padd-0" style="padding-left: 5px;">
                            <div class="btn-group order-btn-calendar">
                                <button type="button" onclick="cms_order_week()" class="btn btn-default">Tuần</button>
                                <button type="button" onclick="cms_order_month()" class="btn btn-default">Tháng</button>
                                <button type="button" onclick="cms_order_quarter()" class="btn btn-default">Quý</button>
                            </div>
                        </div> -->
                    </div>
                </div>
                <div class="cus-body">
                    <table class="table table-bordered table-striped">
                        <thead>
                        <tr>
                            <th></th>
                            <th class="text-center">Mã liên hệ</th>
                            <th class="text-center">Tên người dùng</th>
                            <th class="text-center">Email</th>
                            <th class="text-center">Tiêu đề</th>
                            <th class="text-center">Ngày gửi</th>
                            <th class="text-center"> Check</th>
                        </tr>
                        </thead>
                        <tbody>
                                    <tr>
                                    <td style="text-align: center;">
                                        <i style="color: #478fca!important;" title="Chi tiết đơn hàng" onclick="cms_show_detail_order(248)" class="fa fa-plus-circle i-detail-order-248">
                    
                                        </i>
                                        <i style="color: #478fca!important;" title="Chi tiết đơn hàng" onclick="cms_show_detail_order(248)" class="fa fa-minus-circle i-hide i-detail-order-248">
                    
                                        </i>
                                    </td>
                                    <td class="text-center" onclick="cms_detail_order(248)">LH0000001</td>
                                    <td class="text-center">Nguyễn Công Dự</td>
                                    <td class="text-center">congdu@gmail.com</td>
                                    <td class="text-center">Kí kết hợp tác</td>
                                    <td class="text-center">22:41 24/11/2020</td>
                                    <td>
                                        <div class="col-md-3 padd-0" style="padding-left: 15px;">
                                            <button style="box-shadow: none; left: 10px;" type="button" class="btn btn-primary btn-large"
                                                    onclick="cms_paging_order(1)"><i class="fa fa-user"></i> Xác Nhận
                                            </button>
                                        </div>
                                    </td>
                                    <!-- <td class="text-center"><label class="checkbox" style="margin: 0;"><input type="checkbox" value="248" class="checkbox chk"><span style="width: 15px; height: 15px;"></span></label>
                                    </td> -->
                                   
                            </tr>
                                <tr class="tr-hide" id="tr-detail-order-248">
                                    <td colspan="15">
                                        <div class="tabbable">
                                            <ul class="nav nav-tabs">
                                                <li class="active">
                                                    <a data-toggle="tab">
                                                        <i class="green icon-reorder bigger-110"></i>
                                                        Nội dung liên hệ
                                                    </a>
                                                </li>
                                            </ul>
                                            <div class="tab-content">
                                                <div class="tab-pane active">
                                                        <textarea style="width: 1100px; height: 100px;" placeholder="Nội dung" name="message" required=""></textarea>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                                </tbody>
                    </table>
                    <div class="alert alert-info summany-info clearfix" role="alert">
                        <div class="sm-info pull-left padd-0">
                            Tổng số liên hệ: <span>1</span>
                        </div>
                      
                    </div>
                    
                </div>
            </div>
            <div id="orderCheck" class="tab-pane">
               
                <div class="product-sear panel-sear">
                    <div class="form-group col-md-3 padd-0">
                        <input type="text" class="form-control" id="order-search"
                               placeholder="Nhập mã liên hệ để tìm kiếm">
                    </div>
                    <div class="form-group col-md-9 padd-0" style="padding-left: 5px;">
                        <div class="col-md-9 padd-0">
                           
                            <div class="col-md-3 padd-0" style="padding-left: 5px;">
                                <button style="box-shadow: none;" type="button" class="btn btn-primary btn-large"
                                        onclick="cms_paging_order(1)"><i class="fa fa-search"></i> Tìm kiếm
                                </button>
                            </div>
                        </div>
                       
                    </div>
                </div>
                <div class="cus-body">
                    <table class="table table-bordered table-striped">
                        <thead>
                        <tr>
                            <th></th>
                            <th class="text-center">Mã liên hệ</th>
                            <th class="text-center">Tên người dùng</th>
                            <th class="text-center">Email</th>
                            <th class="text-center">Tiêu đề</th>
                            <th class="text-center">Ngày xác nhận</th>
                        </tr>
                        </thead>
                        <tbody>
                                    <tr>
                                    <td style="text-align: center;">
                                        <i style="color: #478fca!important;" title="Chi tiết đơn hàng" onclick="cms_show_detail_order(249)" class="fa fa-plus-circle i-detail-order-249">
                    
                                        </i>
                                        <i style="color: #478fca!important;" title="Chi tiết đơn hàng" onclick="cms_show_detail_order(249)" class="fa fa-minus-circle i-hide i-detail-order-249">
                    
                                        </i>
                                    </td>
                                    <td class="text-center" onclick="cms_detail_order(248)">LH0000001</td>
                                    <td class="text-center">Nguyễn Công Dự</td>
                                    <td class="text-center">congdu@gmail.com</td>
                                    <td class="text-center">Kí kết hợp tác</td>
                                    <td class="text-center">22:41 24/11/2020</td>
                                   
                                    <!-- <td class="text-center"><label class="checkbox" style="margin: 0;"><input type="checkbox" value="248" class="checkbox chk"><span style="width: 15px; height: 15px;"></span></label>
                                    </td> -->
                                   
                            </tr>
                                <tr class="tr-hide" id="tr-detail-order-249">
                                    <td colspan="15">
                                        <div class="tabbable">
                                            <ul class="nav nav-tabs">
                                                <li class="active">
                                                    <a data-toggle="tab">
                                                        <i class="green icon-reorder bigger-110"></i>
                                                        Nội dung liên hệ
                                                    </a>
                                                </li>
                                            </ul>
                                            <div class="tab-content">
                                                <div class="tab-pane active">
                                                        <textarea style="width: 1100px; height: 100px;" placeholder="Nội dung" name="message" required=""></textarea>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                                </tbody>
                    </table>
                    <div class="alert alert-info summany-info clearfix" role="alert">
                        <div class="sm-info pull-left padd-0">
                            Tổng số liên hệ: <span>1</span>
                        </div>
                      
                    </div>
                    
                </div>
                <!-- <div class="sup-body"><table class="table table-bordered">
                    <thead>
                    <tr>
                        <th class="text-center">Mã NCC</th>
                        <th class="text-center">Tên NCC</th>
                        <th class="text-center">Điện thoại</th>
                        <th class="text-center">Địa chỉ</th>
                        <th class="text-center">Lần cuối nhập hàng</th>
                        <th class="text-center" style="background-color: #fff;">Tổng tiền hàng</th>
                        <th class="text-center">Nợ</th>
                        <th></th>
                    </tr>
                    </thead>
                    <tbody>
                                <tr>
                                <td class="text-center" onclick="cms_detail_supplier(23)" style="cursor: pointer; color: #1b6aaa;">NCC000003</td>
                                <td class="text-center" onclick="cms_detail_supplier(23)" style="cursor: pointer; color: #1b6aaa;">HieuSecondHand</td>
                                <td class="text-center">02081234567</td>
                                <td class="text-left">Nguyễn Ngọc Vũ - Hà Nội</td>
                                <td class="text-center">2019-06-14 23:32:00</td>
                                <td class="text-right" style="font-weight: bold; background-color: #f9f9f9;">75,000,000                </td>
                                <td class="text-right">0</td>
                                <td class="text-center"><i class="fa fa-trash-o" style="cursor:pointer;" onclick="cms_delsup(23,1);"></i></td>
                            </tr>
                                    <tr>
                                <td class="text-center" onclick="cms_detail_supplier(22)" style="cursor: pointer; color: #1b6aaa;">NCC000002</td>
                                <td class="text-center" onclick="cms_detail_supplier(22)" style="cursor: pointer; color: #1b6aaa;">The Nineteen 2Hand</td>
                                <td class="text-center">02083656789</td>
                                <td class="text-left">Gò Vấp - Thành Phố Hồ Chí Minh</td>
                                <td class="text-center">-</td>
                                <td class="text-right" style="font-weight: bold; background-color: #f9f9f9;">0                </td>
                                <td class="text-right">0</td>
                                <td class="text-center"><i class="fa fa-trash-o" style="cursor:pointer;" onclick="cms_delsup(22,1);"></i></td>
                            </tr>
                                    <tr>
                                <td class="text-center" onclick="cms_detail_supplier(21)" style="cursor: pointer; color: #1b6aaa;">NCC000001</td>
                                <td class="text-center" onclick="cms_detail_supplier(21)" style="cursor: pointer; color: #1b6aaa;">3Bich</td>
                                <td class="text-center">0123456777</td>
                                <td class="text-left">Bình Thạnh - Thành Phố Hồ Chí Minh</td>
                                <td class="text-center">-</td>
                                <td class="text-right" style="font-weight: bold; background-color: #f9f9f9;">0                </td>
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
                </div>
            </div> -->

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
<script src="js/ajax1.js"></script>
</html>
