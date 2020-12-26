<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html><html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <base href=""/>
    <link rel="shortcut icon" type="image/png" href="images/logodend.png"/>
    <title>Nhập kho</title>
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
                        <li id="customer"><a href="KhachHang.jsp"><i class="fa fa-users"></i><b>Khách hàng</b></a></li>
                        <li id="import"><a href="NhapKho.jsp" style=" color: white;background-color: #33CB82!important;"><i class="fa fa-truck"></i><b>Nhập kho</b></a></li>
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
                    <div class="orders imports">
    <div class="breadcrumbs-fixed panel-action">
        <div class="row">
            <div class="orders-act">
                <div class="col-md-4 col-md-offset-2">
                    <div class="left-action text-left clearfix">
                        <h2>Danh sách phiếu nhập</h2>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="right-action text-right">
                        <div class="btn-groups">
                            <a href="NhapKhoCreate.jsp">
                                <button type="button" class="btn btn-primary"  onclick="cms_vsell_import();"><i
                                    class="fa fa-plus"></i> Tạo phiếu nhập
                            </button>
                            </a>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="main-space orders-space"></div>
    <div class="orders-content">
        <div class="product-sear panel-sear">
            <div class="form-group col-md-3 padd-0">
                <input type="text" class="form-control" id="input-search" placeholder="Nhập mã phiếu nhập để tìm kiếm">
            </div>
            <div class="form-group col-md-9 padd-0" style="padding-left: 5px;">
                <div class="col-md-9 padd-0">
                    <div class="col-md-4 padd-0">
                        <select class="form-control" id="search-option-1">
                            <option value="0">Phiếu nhập</option>
                            <option value="1">Phiếu nhập đã xóa</option>
                            <option value="2">Phiếu nhập còn nợ</option>
                        </select>
                    </div>
                    <!-- <div class="col-md-5 padd-0" style="padding-left: 5px;">
                        <div class="input-daterange input-group" id="datepicker">
                            <input type="text" class="input-sm form-control" id="search-date-from" placeholder="Từ ngày"
                                   name="start"/>
                            <span class="input-group-addon">đến</span>
                            <input type="text" class="input-sm form-control" id="search-date-to" placeholder="Đến ngày"
                                   name="end"/>
                        </div>
                    </div> -->
                    <div class="col-md-3 padd-0" style="padding-left: 5px;">
                        <button style="box-shadow: none;" type="button" class="btn btn-primary btn-large"
                                onclick="cms_paging_input(1)"><i class="fa fa-search"></i> Tìm kiếm
                        </button>
                    </div>
                </div>
                <!-- <div class="col-md-3 padd-0" style="padding-left: 5px;">
                    <div class="btn-group order-btn-calendar">
                        <button type="button" onclick="cms_input_week()" class="btn btn-default">Tuần</button>
                        <button type="button" onclick="cms_input_month()" class="btn btn-default">Tháng</button>
                        <button type="button" onclick="cms_input_quarter()" class="btn btn-default">Quý</button>
                    </div>
                </div> -->
            </div>

        </div>
        <div class="imports-main-body"><table class="table table-bordered table-striped">
            <thead>
            <tr>
                <th></th>
                <th class="text-center">Mã phiếu nhập</th>
           
                <th class="text-center">Tình trạng</th>
                <th class="text-center">Ngày nhập</th>
                <th class="text-center">Người nhập</th>
                <th class="text-center" >Tổng tiền</th>
                <th class="text-center"><i class="fa fa-clock-o"></i> Nợ</th>
                <th></th>
            </tr>
            </thead>
            <tbody>
                        <tr>
                        <td style="text-align: center;">
                            <i style="color: #478fca!important;" title="Chi tiết phiếu nhập" onclick="cms_show_detail_input(35)" class="fa fa-plus-circle i-detail-input-35">
                            </i>
                            <i style="color: #478fca!important;" title="Chi tiết phiếu nhập" onclick="cms_show_detail_input(35)" class="fa fa-minus-circle i-hide i-detail-input-35">
        
                            </i>
                        </td>
                        <td class="text-center" onclick="cms_edit_import(35)">
                            PN0000001</td>
                  
                        <td class="text-center">Hoàn thành</td>
                        <td class="text-center">18:27 15/11/2020</td>
                        <td class="text-center">admin</td>
                        <td class="text-center" >90,000</td>
                        <td class="text-center" >0</td>
                        <td class="text-center" >
                            <i class="fa fa-trash-o" style="color: darkred;" title="Xóa" onclick="cms_del_temp_import(35,1)"></i></td>
                    </td></tr>
                    
                    <tr class="tr-hide" id="tr-detail-input-35">
                        <td colspan="15">
                            <div class="tabbable">
                                <ul class="nav nav-tabs">
                                    <li class="active">
                                        <a data-toggle="tab">
                                            <i class="green icon-reorder bigger-110"></i>
                                            Chi tiết phiếu nhập
                                        </a>
                                    </li>
                                </ul>
                                <div class="tab-content">
                                    <div class="tab-pane active">
                                        <div class="alert alert-success clearfix" style="display: flex;">
                                            <div>
                                                <i class="fa fa-cart-arrow-down">
                                                </i>
                                                <span class="hidden-768">Số lượng SP:
                                                </span>
                                                <label style="color: red;">3</label>
                                            </div>
                                            <div class="padding-left-10">
                                                <i class="fa fa-dollar">
                                                </i>
                                                <span class="hidden-768">Tiền hàng:
                                                </span>
                                                <label style="color: red;">90,000</label>
                                            </div>
                                            <div class="padding-left-10">
                                                <i class="fa fa-dollar">
                                                </i>
                                                <span class="hidden-768">Giảm giá:
                                                </span>
                                                <label style="color: red;">0</label>
                                            </div>  
                                            <div class="padding-left-10">
                                                <i class="fa fa-dollar">
                                                </i>
                                                <span class="hidden-768">Tổng tiền:
                                                </span>
                                                <label style="color: red;">90,000</label>
                                            </div>
                                            <div class="padding-left-10">
                                                <i class="fa fa-clock-o"></i>
                                                <span class="hidden-768">Còn nợ: </span>
                                                <label style="color: red;">0</label>
                                            </div>
                                        </div>
                                        <table class="table table-striped1 table-bordered table-hover dataTable">
                                            <thead>
                                            <tr role="row">
                                                <th class="text-center">STT</th>
                                                <th class="text-left hidden-768">Mã sản phẩm</th>
                                                <th class="text-left">Tên sản phẩm</th>
                                                <th class="text-center">Số lượng</th>
                                                <th class="text-center">Giá nhập</th>
                                                <th class="text-center ">Thành tiền</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td class="text-center width-5 hidden-320 ">
                                                        1                 </td>
                                                    <td class="text-left hidden-768">
                                                        SP000001       </td>
                                                    <td class="text-left ">
                                                        Áo Đầu Lâu Bốc Cháy                                          </td>
                                                    <td class="text-center ">
                                                        3                  </td>
                                                    <td class="text-center">
                                                        30,000             </td>
                                                    <td class="text-center">
                                                        90,000            </td>
                                                </tr>
                                                
                                                </tbody>
                                                                                                                                          
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </td>
                    </tr>
                    </tbody>
        </table>
        <div class="alert alert-info summany-info clearfix" role="alert">
            <div class="sm-info pull-left padd-0">
                Tổng số phiếu nhập: <span>3</span>
                Tổng tiền: <span>180,000</span>
                Tổng nợ: <span>0</span>
            </div>
            <div class="pull-right ajax-pagination">
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
<script src="js/ajax1.js"></script>
</html>
