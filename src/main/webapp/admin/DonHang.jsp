<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <base href=""/>
    <link rel="shortcut icon" type="image/png" href="images/logodend.png"/>
    <title>Đơn Hàng</title>
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
        <div class="customer-supplier">
            <div class="breadcrumbs-fixed panel-action">
                <div class="row">
                    <div class="orders-act">
                        <div class="col-md-4 col-md-offset-2">
                            <div class="left-action text-left clearfix">
                                <h2>Danh sách đơn hàng</h2>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="right-action text-right">
                                <div class="btn-groups">

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="main-space customer"></div>
            <div>
                <ul class="nav nav-tabs tab-setting" role="tablist" style="padding-left: 20px;">
                    <li role="presentation" onclick="tab_click_act('customer');" class="active"><a
                            href="#orderNotCheck"
                            aria-controls="customer"
                            role="tab"
                            data-toggle="tab"><i class="fa fa-user"></i> Đơn Hàng Chờ Xác Nhận</a></li>
                    <li role="presentation" onclick="tab_click_act('supplier');"><a href="#orderCheck"
                                                                                    aria-controls="supplier"
                                                                                    role="tab"
                                                                                    data-toggle="tab"><i
                            class="fa fa-truck"></i> Đơn Hàng Được Xác Nhận</a></li>
                </ul>
                <div class="tab-content">
                    <div id="orderNotCheck" class="tab-pane active">
                        <div class="product-sear panel-sear">
                            <div class="form-group col-md-3 padd-0">
                                <input type="text" class="form-control" id="order-search"
                                       placeholder="Nhập mã đơn hàng để tìm kiếm">
                            </div>
                            <div class="form-group col-md-9 padd-0" style="padding-left: 5px;">
                                <div class="col-md-9 padd-0">
                                    <div class="col-md-4 padd-0">
                                        <select id="search-option-1" class="form-control">
                                            <option value="0">Đơn hàng</option>
                                            <option value="1">Đơn hàng đã xóa</option>
                                            <option value="2">Đơn hàng còn nợ</option>
                                        </select>
                                    </div>
                                    <div class="col-md-5 padd-0" style="padding-left: 5px;">
                                        <div class="input-daterange input-group" id="datepicker">
                                            <input type="text" class="input-sm form-control"
                                                   id="search-date-from" placeholder="Từ ngày"
                                                   name="start"/>
                                            <span class="input-group-addon">đến</span>
                                            <input type="text" class="input-sm form-control"
                                                   id="search-date-to" placeholder="Đến ngày"
                                                   name="end"/>
                                        </div>
                                    </div>
                                    <div class="col-md-3 padd-0" style="padding-left: 5px;">
                                        <button style="box-shadow: none;" type="button"
                                                class="btn btn-primary btn-large"
                                                onclick="cms_paging_order(1)"><i class="fa fa-search"></i>
                                            Tìm kiếm
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
                                    <th class="text-center">Mã đơn hàng</th>
                                    <th class="text-center">Ngày bán</th>

                                    <th>Khách hàng</th>
                                    <th class="text-center">Địa chỉ</th>
                                    <th class="text-center">Trạng thái</th>
                                    <th class="text-center">Tổng tiền</th>
                                    <th class="text-center">Xóa</th>
                                    <th class="text-center"> Check</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td style="text-align: center;">
                                        <i style="color: #478fca!important;" title="Chi tiết đơn hàng"
                                           onclick="cms_show_detail_order(248)"
                                           class="fa fa-plus-circle i-detail-order-248">

                                        </i>
                                        <i style="color: #478fca!important;" title="Chi tiết đơn hàng"
                                           onclick="cms_show_detail_order(248)"
                                           class="fa fa-minus-circle i-hide i-detail-order-248">

                                        </i>
                                    </td>
                                    <td class="text-center">PX0000006</td>
                                    <td class="text-center">22:41 24/11/2020</td>
                                    <td class="text-center">Nguyễn Công Dự</td>
                                    <td class="text-center">Đại học Nông Lâm TPHCM</td>
                                    <td class="text-center">Chưa hoàn thành</td>
                                    <td class="text-center">100,000</td>
                                    <td class="text-center">
                                        <i class="fa fa-trash-o" style="color: darkred;" title="Xóa"
                                           onclick="cms_del_temp_order(248,1)"></i></td>

                                    <td>
                                        <div class="col-md-3 padd-0" style="padding-left: 5px;">
                                            <button style="box-shadow: none;" type="button"
                                                    class="btn btn-primary btn-large"
                                                    onclick="cms_paging_order(1)"><i class="fa fa-shopping-cart"></i>
                                                Xác Nhận
                                            </button>
                                        </div>
                                    </td>
                                </tr>
                                <tr class="tr-hide" id="tr-detail-order-248">
                                    <td colspan="15">
                                        <div class="tabbable">
                                            <ul class="nav nav-tabs">
                                                <li class="active">
                                                    <a data-toggle="tab">
                                                        <i class="green icon-reorder bigger-110"></i>
                                                        Chi tiết đơn hàng
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
                                                            <label style="color: red;">2</label>
                                                        </div>
                                                        <div class="padding-left-10">
                                                            <i class="fa fa-dollar">
                                                            </i>
                                                            <span class="hidden-768">Tiền hàng:
                                                            </span>
                                                            <label style="color: red;">100,000</label>
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
                                                            <label style="color: red;">100,000</label>
                                                        </div>

                                                    </div>
                                                    <table class="table table-striped table-bordered table-hover dataTable">
                                                        <thead>
                                                        <tr role="row">
                                                            <th class="text-center">STT</th>
                                                            <th class="text-left hidden-768">Mã sản phẩm</th>
                                                            <th class="text-left">Tên sản phẩm</th>
                                                            <th class="text-center">Số lượng</th>
                                                            <th class="text-center">Giá bán</th>
                                                            <th class="text-center ">Thành tiền</th>
                                                        </tr>
                                                        </thead>
                                                        <tbody>
                                                        <tr>
                                                            <td class="text-center width-5 hidden-320 ">
                                                                1
                                                            </td>
                                                            <td class="text-left hidden-768">
                                                                SP000001
                                                            </td>
                                                            <td class="text-left ">
                                                                Áo Huy Chương
                                                            </td>
                                                            <td class="text-center ">
                                                                1
                                                            </td>
                                                            <td class="text-center">
                                                                50,000
                                                            </td>
                                                            <td class="text-center">
                                                                50,000
                                                            </td>
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
                                    Tổng số hóa đơn: <span>1</span>
                                    Tổng tiền:
                                    <span>100,000</span>
                                    Tổng nợ:
                                    <span>0</span>
                                </div>
                                <div class="pull-right ajax-pagination">
                                </div>
                            </div>

                        </div>
                    </div>
                    <div id="orderCheck" class="tab-pane">

                        <div class="product-sear panel-sear">
                            <div class="form-group col-md-3 padd-0">
                                <input type="text" class="form-control" id="order-search"
                                       placeholder="Nhập mã đơn hàng để tìm kiếm">
                            </div>
                            <div class="form-group col-md-9 padd-0" style="padding-left: 5px;">
                                <div class="col-md-9 padd-0">
                                    <div class="col-md-4 padd-0">
                                        <select id="search-option-1" class="form-control">
                                            <option value="0">Đơn hàng</option>
                                            <option value="1">Đơn hàng đã xóa</option>
                                            <option value="2">Đơn hàng còn nợ</option>
                                        </select>
                                    </div>
                                    <div class="col-md-5 padd-0" style="padding-left: 5px;">
                                        <div class="input-daterange input-group" id="datepicker">
                                            <input type="text" class="input-sm form-control"
                                                   id="search-date-from" placeholder="Từ ngày"
                                                   name="start"/>
                                            <span class="input-group-addon">đến</span>
                                            <input type="text" class="input-sm form-control"
                                                   id="search-date-to" placeholder="Đến ngày"
                                                   name="end"/>
                                        </div>
                                    </div>
                                    <div class="col-md-3 padd-0" style="padding-left: 5px;">
                                        <button style="box-shadow: none;" type="button"
                                                class="btn btn-primary btn-large"
                                                onclick="cms_paging_order(1)"><i class="fa fa-search"></i>
                                            Tìm kiếm
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
                                    <th class="text-center">Mã đơn hàng</th>
                                    <th class="text-center">Ngày bán</th>
                                    <th class="text-center">Thu ngân</th>

                                    <th>Khách hàng</th>
                                    <th class="text-center">Địa chỉ</th>
                                    <th class="text-center">Trạng thái</th>
                                    <th class="text-center">Tổng tiền</th>
                                    <th class="text-center">Xóa</th>

                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td style="text-align: center;">
                                        <i style="color: #478fca!important;" title="Chi tiết đơn hàng"
                                           onclick="cms_show_detail_order(249)"
                                           class="fa fa-plus-circle i-detail-order-249">

                                        </i>
                                        <i style="color: #478fca!important;" title="Chi tiết đơn hàng"
                                           onclick="cms_show_detail_order(249)"
                                           class="fa fa-minus-circle i-hide i-detail-order-249">

                                        </i>
                                    </td>
                                    <td class="text-center">PX0000006</td>
                                    <td class="text-center">22:41 24/11/2020</td>
                                    <td class="text-center">Phạm Minh Nguyên</td>
                                    <td class="text-center">Nguyễn Công Dự</td>
                                    <td class="text-center">Đại học Nông Lâm TPHCM</td>
                                    <td class="text-center">Hoàn thành</td>
                                    <td class="text-center">100,000</td>
                                    <td class="text-center">
                                        <i class="fa fa-trash-o" style="color: darkred;" title="Xóa"
                                           onclick="cms_del_temp_order(248,1)"></i></td>

                                </tr>
                                <tr class="tr-hide" id="tr-detail-order-248">
                                    <td colspan="15">
                                        <div class="tabbable">
                                            <ul class="nav nav-tabs">
                                                <li class="active">
                                                    <a data-toggle="tab">
                                                        <i class="green icon-reorder bigger-110"></i>
                                                        Chi tiết đơn hàng
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
                                                            <label style="color: red;">2</label>
                                                        </div>
                                                        <div class="padding-left-10">
                                                            <i class="fa fa-dollar">
                                                            </i>
                                                            <span class="hidden-768">Tiền hàng:
                                                            </span>
                                                            <label style="color: red;">100,000</label>
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
                                                            <label style="color: red;">100,000</label>
                                                        </div>

                                                    </div>
                                                    <table class="table table-striped table-bordered table-hover dataTable">
                                                        <thead>
                                                        <tr role="row">
                                                            <th class="text-center">STT</th>
                                                            <th class="text-left hidden-768">Mã sản phẩm</th>
                                                            <th class="text-left">Tên sản phẩm</th>
                                                            <th class="text-center">Số lượng</th>
                                                            <th class="text-center">Giá bán</th>
                                                            <th class="text-center ">Thành tiền</th>
                                                        </tr>
                                                        </thead>
                                                        <tbody>
                                                        <tr>
                                                            <td class="text-center width-5 hidden-320 ">
                                                                1
                                                            </td>
                                                            <td class="text-left hidden-768">
                                                                SP000001
                                                            </td>
                                                            <td class="text-left ">
                                                                Áo Huy Chương
                                                            </td>
                                                            <td class="text-center ">
                                                                1
                                                            </td>
                                                            <td class="text-center">
                                                                50,000
                                                            </td>
                                                            <td class="text-center">
                                                                50,000
                                                            </td>
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
                                    Tổng số hóa đơn: <span>1</span>
                                    Tổng tiền:
                                    <span>100,000</span>
                                    Tổng nợ:
                                    <span>0</span>
                                </div>
                                <div class="pull-right ajax-pagination">
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
