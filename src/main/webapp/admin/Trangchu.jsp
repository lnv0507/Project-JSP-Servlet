<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html><html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <base href="admin"/>
    <link rel="shortcut icon" type="image/png" href="images/logodend.png"/>
    <title>Trang chủ</title>
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
                           
                        <li id="dashboard"><a href="Trangchu.jsp" style=" color: white;background-color: #33CB82!important;"><i class="fa fa-gg-circle"></i><b>Trang Chủ</b></a></li>
                        <li id="orders"><a href="DonHang.jsp"><i class="fa fa-shopping-cart"></i><b>Đơn hàng</b></a></li>
                        <li id="product"><a href="SanPham.jsp"><i class="fa fa-product-hunt"></i><b>Sản phẩm</b></a></li>
                        <li id="customer"><a href="KhachHang.jsp"><i class="fa fa-users"></i><b>Khách hàng</b></a></li>
                        <li id="import"><a href="NhapKho.jsp"><i class="fa fa-truck"></i><b>Nhập kho</b></a></li>
                        <li id="inventory"><a href="TonKho.jsp"><i class="fa fa-list-alt"></i><b>Tồn kho</b></a></li>
                        <li id="inventory"><a href="LienHe.jsp"><i class="fa fa-user"></i><b>Liên Hệ</b></a></li>
                        <li id="config"><a href="ThietLap.jsp"><i class="fa fa-empire"></i><b>Thiết lập</b></a></li>
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




                    <!--<div class="row">-->
<!--    <div class="col-md-12">-->
<!--        <div class="alert alert-success text-center text-capitalize" role="alert">Chào mừng bạn đến với hệ thông quản lý bán hàng doanh nghiệp tư nhân kim khí Quang Na</div>-->
<!--    </div>-->
<!--</div>-->

<div class="row">
    <div class="report">
        <div class="col-md-12"><center><h4 class="dashboard-title"><i class="fa fa-check-square"></i>Hoạt động hôm nay</h4></center></div>
        <div class="col-md-3">
            <div class="report-box box-green">
                <div class="infobox-icon">
                    <i class="fa fa-credit-card"></i>
                </div>
                <div class="infobox-data">
                    <h3 class="infobox-title">Tiền bán hàng</h3>
                    <span
                        class="infobox-data-number text-center">0</span>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="report-box box-blue">
                <div class="infobox-icon">
                    <i class="fa fa-shopping-cart"></i>
                </div>
                <div class="infobox-data">
                    <h3 class="infobox-title">Số đơn hàng:</h3>
                    <span
                        class="infobox-data-number text-center">0</span>

                    <h3 class="infobox-title">Số sản phẩm:</h3>
                    <span
                        class="infobox-data-number text-center">0</span>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="report-box box-red">
                <div class="infobox-icon">
                    <i class="fa fa-arrow-circle-left"></i>
                </div>
                <div class="infobox-data">
                    <h3 class="infobox-title">Hàng khách trả</h3>
                    <span class="infobox-data-number">0</span>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="report-box box-orange">
                <div class="infobox-icon">
                    <i class="fa fa-soundcloud"></i>
                </div>
                <div class="infobox-data">
                    <h3 class="infobox-title">Đơn hàng web</h3>
                    <span class="infobox-data-number">0</span>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="row" style=" margin: 20px 0; overflow: hidden; ">
   
    <div class="col-md-4">
        <div class="widget widget-orange">
            <div class="widget-header">
                <h3 class="widget-title"><i class="fa fa-ioxhost"></i>Thông tin kho</h3>
            </div>
            <div class="widget-body">
                <div class="row">
                    <div class="info col-xs-7">Tồn kho</div>
                    <div
                        class="info col-xs-5 data text-right"><b>6</b></div>
                    <!-- <div class="info col-xs-7">Hết Hàng</div>
                    <div
                        class="info col-xs-5 data text-right"><b>0</b></div>
                    <div class="info col-xs-7">Sắp hết hàng</div>
                    <div class="info col-xs-5 data text-right"><b>0</b></div>
                    <div class="info col-xs-7">Vượt định mức</div>
                    <div class="info col-xs-5 data text-right"><b>0</b></div> -->
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-4">
        <div class="widget widget-blue">
            <div class="widget-header">
                <h3 class="widget-title"><i class="fa fa-play-circle"></i>Hoạt động</h3>
            </div>
            <div class="widget-body">
                <div class="row">
                    <div class="info col-xs-7">Tiền bán hàng</div>
                    <div
                        class="info col-xs-5 data text-right"><b>0</b></div>
                    <div class="info col-xs-7">Số đơn hàng</div>
                    <div
                        class="info col-xs-5 data text-right"><b>0</b></div>
                    <div class="info col-xs-7">Số sản phẩm</div>
                    <div
                        class="info col-xs-5 data text-right"><b>0</b></div>
                    <div class="info col-xs-7">Khách hàng trả</div>
                    <div class="info col-xs-5 data text-right"><b>0</b></div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-4">
        <div class="widget widget-green">
            <div class="widget-header">
                <h3 class="widget-title"><i class="fa fa-barcode"></i>Thông tin sản phẩm</h3>
            </div>
            <div class="widget-body">
                <div class="row">
                    <div class="info col-xs-7">Sản phẩm/Nhà sản xuất</div>
                    <div
                        class="info col-xs-5 data text-right"><b>6</b>
                        / <b>36</b></div>
                    <!-- <div class="info col-xs-7">Chưa làm giá bán</div>
                    <div
                        class="info col-xs-5 data text-right"><b>0</b></div>
                    <div class="info col-xs-7">Chưa nhập giá mua</div>
                    <div
                        class="info col-xs-5 data text-right"><b>0</b></div>
                    <div class="info col-xs-7">Hàng chưa phân loại</div>
                    <div class="info col-xs-5 data text-right"><b>0</b></div> -->
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
