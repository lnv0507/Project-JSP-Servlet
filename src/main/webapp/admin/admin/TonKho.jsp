<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html><html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <base href=""/>
    <link rel="shortcut icon" type="image/png" href="images/logodend.png"/>
    <title>Tồn Kho</title>
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
                        <li id="dashboard"><a href="#" ><i class="fa fa-gg-circle"></i><b>Trang Chủ</b></a></li>
                        <li id="orders"><a href="DonHang.jsp"><i class="fa fa-shopping-cart"></i><b>Đơn hàng</b></a></li>
                        <li id="product"><a href="SanPham.jsp"><i class="fa fa-product-hunt"></i><b>Sản phẩm</b></a></li>
                        <li id="customer"><a href="KhachHang.jsp"><i class="fa fa-users"></i><b>Khách hàng</b></a></li>
                        <li id="import"><a href="NhapKho.jsp"><i class="fa fa-truck"></i><b>Nhập kho</b></a></li>
                        <li id="inventory"><a href="#" style=" color: white;background-color: #33CB82!important;"><i class="fa fa-list-alt"></i><b>Tồn kho</b></a></li>
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
    <div class="inventory">
    <div class="breadcrumbs-fixed panel-action">
            <div class="row">
                <div class="orders-act">
                    <div class="col-md-4 col-md-offset-2">
                        <div class="left-action text-left clearfix">
                            <h2>Danh sách tồn kho</h2>
                        </div>
                    </div>
                   
                </div>
            </div>
    </div>
    <div class="main-space inventory-space"></div>
    <div class="inventory-content">
        <div class="product-sear panel-sear">
            <div>
                <div class="form-group col-md-4 padd-0">
                    <input type="text" class="form-control txt-sinventory"
                           placeholder="Nhập tên hoặc mã sản phẩm để tìm kiếm">
                </div>
                <div class="form-group col-md-8 padd-0" style="padding-left: 5px;">
                    <div class="col-md-12 padd-0">
                        <div class="col-md-9 padd-0">
                            <div class="col-md-4 padd-0">
                                <select class="form-control" id="prd_group_id">
                                    <option value="-1" selected='selected'>Chọn danh mục</option>
                                    <optgroup label="Chọn danh mục">
                                        <option value="36">Áo           </option>
                                        <option value="101">|---Áo Blazer           </option>
                                        <option value="102">|---Áo Bóng Chày             </option>
                                        <option value="103">|---Áo Denim               </option>
                                        <option value="104">|---Áo Len               </option>
                                        <option value="105">|---Áo Sơmi              </option>
                                        <option value="106">|---Áo Sweater                </option>
                                        <option value="107">|---Áo Thun                </option>
                                        <option value="35">Quần               </option>
                                        <option value="92">|---Quần Cargo                </option>
                                        <option value="93">|---Quần Jean                </option>
                                        <option value="94">|---Quần Kaki                </option>
                                        <option value="95">|---Quần Nhung                </option>
                                        <option value="96">|---Quần Short                </option>
                                        <option value="34">Phụ kiện               </option>
                                        <option value="82">|---Thắt lưng                </option>
                                        <option value="83">|---Mắt Kính                </option>
                                        <option value="84">|---Xách tay                </option>
                                        <option value="85">|---Mũ                </option>
                                        <option value="86">|---Móc khóa                </option>
                                        <option value="87">|--- Khăn choàng                </option>
                                        <option value="88">|---Vớ                </option>
                                        <option value="89">|---Sticker                </option>                                                
                                                 
                                                                                </optgroup>
                                    <optgroup label="------------------------">
                                    </optgroup>
                                </select>
                            </div>
                            
                            <div class="col-md-4 padd-0">
                                <select class="form-control" id="option_inventory">
                                    <option value="0">Tất cả</option>
                                    <option value="1" selected="selected">Chỉ lấy hàng tồn</option>
                                    <option value="2">Hết Hàng</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3 padd-0" style="padding-left: 5px;">
                            <button style="box-shadow: none;" type="button" class="btn btn-primary btn-large"
                                    ><i class="fa fa-search"></i> Xem
                            </button>
                            <!-- <button type="button" class="btn btn-success"  onclick="cms_export_inventory()"><i
                                   class="fa fa-download"></i>Xuất Excel
                            </button> -->
                        </div>
                    </div>
                    <div class="col-md-1 padd-0" style="padding-left: 1px;">
                    </div>
                </div>
            </div>
        </div>
        <div class="inventory-main-body"><div class="quick-info report row" style="margin-bottom: 15px;">
            <div class="col-md-12 padd-0">
                <div class="col-md-3 padd-right-0">
                    <div class="report-box" style="border: 2px solid #ddd; border-radius: 0">
                        <div class="infobox-icon">
                            <i class="fa fa-clock-o cgreen" style="font-size: 45px;" aria-hidden="true"></i>
                        </div>
                        <div class="infobox-data">
                            <h3 class="infobox-title cgreen" style="font-size: 25px;">26/11/2020</h3>
                            <span class="infobox-data-number text-center" style="font-size: 20px; color: while;">Ngày lập</span>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 padd-right-0">
                    <div class="report-box" style="border: 2px solid #ddd; border-radius: 0">
                        <div class="infobox-icon">
                            <i class="fa fa-tag blue" style="font-size: 45px; color: #307ECC;" aria-hidden="true"></i>
                        </div>
                        <div class="infobox-data">
                            <h3 class="infobox-title blue" style="font-size: 25px;">51</h3>
                            <span class="infobox-data-number text-center" style="font-size: 20px; color: while;">SL tồn kho</span>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 padd-right-0">
                    <div class="report-box " style="border: 2px solid #ddd; border-radius: 0">
                        <div class="infobox-icon">
                            <i class="fa fa-refresh orange" style="font-size: 45px;"></i>
                        </div>
                        <div class="infobox-data">
                            <h3 class="infobox-title orange" style="font-size: 25px;">1,470,000 VND</h3>
                            <span class="infobox-data-number text-center" style="font-size: 20px; color: while;">Tổng vốn tồn kho</span>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 padd-right-0">
                    <div class="report-box" style="border: 2px solid #ddd; border-radius: 0">
                        <div class="infobox-icon">
                            <i class="fa fa-shopping-cart cred" style="font-size: 45px;"></i>
                        </div>
                        <div class="infobox-data">
                            <h3 class="infobox-title cred" style="font-size: 25px;">2,550,000 VND</h3>
                            <span class="infobox-data-number text-center" style="font-size: 20px; color: while;">Tổng giá trị tồn kho</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <table class="table table-bordered table-striped">
            <thead>
            <tr>
                <th class="text-center">Mã hàng</th>
                <th class="text-center">Tên sản phẩm</th>
                <th class="text-center">SL</th>
                <th class="text-center">Vốn tồn kho</th>
                <th class="text-center">Giá trị tồn</th>
            </tr>
            </thead>
            <tbody>
                        <tr>
                        <td  >SP000001</td>
                        <td class="text-left" >Áo Đầu Lâu Bốc Cháy</td>
                        <td class="text-center">5</td>
                        <td class="text-right">150,000</td>
                        <td class="text-right">250,000</td>
                    </tr>
                            <tr>
                        <td  >SP000002</td>
                        <td class="text-left" >Áo Denim The Devil</td>
                        <td class="text-center">6</td>
                        <td class="text-right">120,000</td>
                        <td class="text-right">300,000</td>
                    </tr>
                            <tr>
                        <td  >SP000003</td>
                        <td class="text-left" >Quần Jeans Robin Hood</td>
                        <td class="text-center">10</td>
                        <td class="text-right">300,000</td>
                        <td class="text-right">500,000</td>
                    </tr>
                            <tr>
                        <td >SP000004</td>
                        <td class="text-left" >Quần Short Champion</td>
                        <td class="text-center">12</td>
                        <td class="text-right">360,000</td>
                        <td class="text-right">600,000</td>
                    </tr>
                            <tr>
                        <td >SP000005</td>
                        <td class="text-left" >Quần Short White Navy</td>
                        <td class="text-center">8</td>
                        <td class="text-right">240,000</td>
                        <td class="text-right">400,000</td>
                    </tr>
                            <tr>
                        <td  >SP000006</td>
                        <td class="text-left" >Mắt Kính 02</td>
                        <td class="text-center">10</td>
                        <td class="text-right">300,000</td>
                        <td class="text-right">500,000</td>
                    </tr>
                            
                    </tbody>
        </table>
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
