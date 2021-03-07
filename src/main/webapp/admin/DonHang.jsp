<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:useBean id="t" class="com.dao.VanChuyenDAO" scope="request"/>
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
                                <c:forEach items="${t.list}" var="e">

                                    <tr>
                                        <td style="text-align: center;">
                                            <i style="color: #478fca!important;" title="Chi tiết đơn hàng"
                                               onclick="cms_show_detail_order('${e.maHoaDon}')"
                                               class="fa fa-plus-circle i-detail-order-${e.maHoaDon}">

                                            </i>
                                            <i style="color: #478fca!important;" title="Chi tiết đơn hàng"
                                               onclick="cms_show_detail_order('${e.maHoaDon}')"
                                               class="fa fa-minus-circle i-hide i-detail-order-${e.maHoaDon}">

                                            </i>
                                        </td>
                                        <td class="text-center">${e.maHoaDon}</td>
                                        <td class="text-center">${e.ngaygiao}</td>
                                        <td class="text-center">${e.tenKhachHang}</td>
                                        <td class="text-center">${e.address}</td>
                                        <td class="text-center">${e.trangThai}</td>
                                        <td class="text-center">${e.tongTien}</td>
                                        <td class="text-center">
                                            <i class="fa fa-trash-o" style="color: darkred;" title="Xóa"
                                               onclick="cms_del_temp_order('${e.maHoaDon}',1)"></i></td>

                                        <td>
                                            <div class="col-md-3 padd-0" style="padding-left: 5px;">
                                                <button style="box-shadow: none;" type="button"
                                                        class="btn btn-primary btn-large"
                                                        onclick="cms_paging_order2('${e.maHoaDon}')"><i
                                                        class="fa fa-shopping-cart"></i>
                                                    Xác Nhận
                                                </button>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr class="tr-hide" id="tr-detail-order-${e.maHoaDon}">
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
                                                        <div class="alert alert-success clearfix"
                                                             style="display: flex;">
                                                            <div>
                                                                <i class="fa fa-cart-arrow-down">
                                                                </i>
                                                                <span class="hidden-${e.maHoaDon}">Số lượng SP:
                                                            </span>
                                                                <label style="color: red;">2</label>
                                                            </div>
                                                            <div class="padding-left-10">
                                                                <i class="fa fa-dollar">
                                                                </i>
                                                                <span class="hidden-${e.maHoaDon}">Tiền hàng:
                                                            </span>
                                                                <label style="color: red;">100,000</label>
                                                            </div>
                                                            <div class="padding-left-10">
                                                                <i class="fa fa-dollar">
                                                                </i>
                                                                <span class="hidden-${e.maHoaDon}">Giảm giá:
                                                            </span>
                                                                <label style="color: red;">0</label>
                                                            </div>
                                                            <div class="padding-left-10">
                                                                <i class="fa fa-dollar">
                                                                </i>
                                                                <span class="hidden-${e.maHoaDon}">Tổng tiền:
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
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div id="orderCheck" class="tab-pane">

                        <div class="product-sear panel-sear">
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
                        <c:forEach items="${t.trangThai}" var="e">
                            <tr>
                                <td style="text-align: center;">
                                    <i style="color: #478fca!important;" title="Chi tiết đơn hàng"
                                       onclick="cms_show_detail_order('${e.maHoaDon}')"
                                       class="fa fa-plus-circle i-detail-order-${e.maHoaDon}">

                                    </i>
                                    <i style="color: #478fca!important;" title="Chi tiết đơn hàng"
                                       onclick="cms_show_detail_order('${e.maHoaDon}')"
                                       class="fa fa-minus-circle i-hide i-detail-order-${e.maHoaDon}">

                                    </i>
                                </td>
                                <td class="text-center">${e.maHoaDon}</td>
                                <td class="text-center">${e.ngaygiao}</td>
                                <td class="text-center">${e.tenKhachHang}</td>
                                <td class="text-center">${e.address}</td>
                                <td class="text-center">${e.trangThai}</td>
                                <td class="text-center">${e.tongTien}</td>
                                <td class="text-center">
                                    <i class="fa fa-trash-o" style="color: darkred;" title="Xóa"
                                       onclick="cms_del_temp_order('${e.maHoaDon}',1)"></i></td>

                                <td>
                                    <div class="col-md-3 padd-0" style="padding-left: 5px;">
                                        <button style="box-shadow: none;" type="button"
                                                class="btn btn-primary btn-large"
                                                onclick="cms_paging_order2('${e.maHoaDon}')"><i
                                                class="fa fa-shopping-cart"></i>
                                            Xác Nhận
                                        </button>
                                    </div>
                                </td>
                            </tr>
                            <tr class="tr-hide" id="tr-detail-order-${e.maHoaDon}">
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
                                                <div class="alert alert-success clearfix"
                                                     style="display: flex;">
                                                    <div>
                                                        <i class="fa fa-cart-arrow-down">
                                                        </i>
                                                        <span class="hidden-${e.maHoaDon}">Số lượng SP:
                                                            </span>
                                                        <label style="color: red;">2</label>
                                                    </div>
                                                    <div class="padding-left-10">
                                                        <i class="fa fa-dollar">
                                                        </i>
                                                        <span class="hidden-${e.maHoaDon}">Tiền hàng:
                                                            </span>
                                                        <label style="color: red;">100,000</label>
                                                    </div>
                                                    <div class="padding-left-10">
                                                        <i class="fa fa-dollar">
                                                        </i>
                                                        <span class="hidden-${e.maHoaDon}">Giảm giá:
                                                            </span>
                                                        <label style="color: red;">0</label>
                                                    </div>
                                                    <div class="padding-left-10">
                                                        <i class="fa fa-dollar">
                                                        </i>
                                                        <span class="hidden-${e.maHoaDon}">Tổng tiền:
                                                            </span>
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
                        </c:forEach>
                        </tbody>
                    </table>
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
