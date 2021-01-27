<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html><html lang="en">
<head>
    <jsp:useBean id="t" class="com.dao.ContactDAO" scope="request"/>
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
<%@include file="HeaderAdmin.jsp" %>
<div class="col-md-10 padd-left-0">
    <div class="main-content">
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
                    <li role="presentation" onclick="tab_click_act('supplier');"><a href="#orderCheck"
                                                                                    aria-controls="supplier"
                                                                                    role="tab"
                                                                                    data-toggle="tab"><i
                            class="fa fa-user"></i> Liên Hệ Được Xác Nhận</a></li>
                </ul>
                <div class="tab-content">
                    <div id="orderNotCheck" class="tab-pane active">

                        <div class="cus-body">
                            <table class="table table-bordered table-striped">
                                <thead>
                                <tr>
                                    <th></th>
                                    <th class="text-center">Mã liên hệ</th>
                                    <th class="text-center">Tên người dùng</th>
                                    <th class="text-center">Email</th>
                                    <th class="text-center">Số Điện Thoại</th>
                                    <th class="text-center"> Check</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${t.selectContact}" var="i">
                                    <tr>

                                        <td style="text-align: center;">
                                            <i style="color: #478fca!important;" title="Chi tiết đơn hàng"
                                               onclick="cms_show_detail_order('${i.maLienHe}')"
                                               class="fa fa-plus-circle i-detail-order-${i.maLienHe}">
                                            </i>
                                            <i style="color: #478fca!important;" title="Chi tiết đơn hàng"
                                               onclick="cms_show_detail_order('${i.maLienHe}')"
                                               class="fa fa-minus-circle i-hide i-detail-order-${i.maLienHe}">

                                            </i>
                                        </td>

                                        <td class="text-center" onclick="cms_detail_order(248)">${i.maLienHe}</td>
                                        <td class="text-center">${i.tenAccount}</td>
                                        <td class="text-center">${i.email}</td>
                                        <td class="text-center">${i.soDienThoai}</td>
                                        <td>
                                            <div class="col-md-3 padd-0" style="padding-left: 15px;">
                                                <button style="box-shadow: none; left: 10px;" type="button"
                                                        class="btn btn-primary btn-large"
                                                        onclick="cms_paging_order('${i.maLienHe}')"><i
                                                        class="fa fa-user"></i> Xác
                                                    Nhận
                                                </button>
                                            </div>
                                        </td>


                                    </tr>
                                    <tr class="tr-hide" id="tr-detail-order-${i.maLienHe}">
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
                                                        <textarea style="width: 1100px; height: 100px;" name="message"
                                                                  required="" disabled>${i.noiDung}</textarea>
                                                    </div>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                </c:forEach>
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
                        <div class="cus-body">
                            <table class="table table-bordered table-striped">
                                <thead>
                                <tr>
                                    <th></th>
                                    <th class="text-center">Mã liên hệ</th>
                                    <th class="text-center">Tên người dùng</th>
                                    <th class="text-center">Email</th>
                                    <th class="text-center">Số Điện Thoại</th>
                                    <th class="text-center">Trạng Thái</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${t.trangThai}" var="i">
                                    <tr>

                                        <td style="text-align: center;">
                                            <i style="color: #478fca!important;" title="Chi tiết đơn hàng"
                                               onclick="cms_show_detail_order('${i.maLienHe}')"
                                               class="fa fa-plus-circle i-detail-order-${i.maLienHe}">
                                            </i>
                                            <i style="color: #478fca!important;" title="Chi tiết đơn hàng"
                                               onclick="cms_show_detail_order('${i.maLienHe}')"
                                               class="fa fa-minus-circle i-hide i-detail-order-${i.maLienHe}">

                                            </i>
                                        </td>

                                        <td class="text-center" onclick="cms_detail_order(248)">${i.maLienHe}</td>
                                        <td class="text-center">${i.tenAccount}</td>
                                        <td class="text-center">${i.email}</td>
                                        <td class="text-center">${i.soDienThoai}</td>
                                        <td>
                                            <div class="col-md-3 padd-0" style="padding-left: 15px;">
                                                <button style="box-shadow: none; left: 10px;" type="button"
                                                        class="btn btn-primary btn-large"
                                                        onclick="cms_paging_order('${i.maLienHe}')"><i
                                                        class="fa fa-user"></i> Đã Xác Nhận
                                                </button>
                                            </div>
                                        </td>


                                    </tr>
                                    <tr class="tr-hide" id="tr-detail-order-${i.maLienHe}">
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
                                                        <textarea style="width: 1100px; height: 100px;" name="message"
                                                                  required="" disabled>${i.noiDung}</textarea>
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
