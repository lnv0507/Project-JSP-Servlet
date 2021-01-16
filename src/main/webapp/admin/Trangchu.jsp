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
<%@include file="HeaderAdmin.jsp" %>
<div class="col-md-10 padd-left-0">
    <div class="main-content">
        <div class="row">
            <div class="report">
                <div class="col-md-12">
                    <center><h4 class="dashboard-title"><i class="fa fa-check-square"></i>Hoạt động hôm nay
                    </h4></center>
                </div>
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
