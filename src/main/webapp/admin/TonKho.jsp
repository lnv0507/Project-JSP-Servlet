<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html><html lang="en">
<head>
    <jsp:useBean id="e" class="com.dao.VanChuyenDAO" scope="request"/>
    <jsp:useBean id="t" class="com.dao.ProductDAO" scope="request"/>
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
<%@include file="HeaderAdmin.jsp" %>
<div class="col-md-10 padd-left-0">
    <div class="main-content">

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
<%--                <div class="product-sear panel-sear">--%>
<%--                    <div>--%>
<%--                        <div class="form-group col-md-4 padd-0">--%>
<%--                            <input type="text" class="form-control txt-sinventory"--%>
<%--                                   placeholder="Nhập tên hoặc mã sản phẩm để tìm kiếm">--%>
<%--                        </div>--%>
<%--                        <div class="form-group col-md-8 padd-0" style="padding-left: 5px;">--%>
<%--                            <div class="col-md-12 padd-0">--%>
<%--                                <div class="col-md-9 padd-0">--%>
<%--                                    <div class="col-md-4 padd-0">--%>
<%--                                        <select class="form-control" id="prd_group_id">--%>
<%--                                            <option value="-1" selected='selected'>Chọn danh mục</option>--%>
<%--                                            <optgroup label="Chọn danh mục">--%>

<%--                                            </optgroup>--%>

<%--                                        </select>--%>
<%--                                    </div>--%>

<%--                                    <div class="col-md-4 padd-0">--%>
<%--                                        <select class="form-control" id="option_inventory">--%>
<%--                                            <option value="0">Tất cả</option>--%>
<%--                                            <option value="1" selected="selected">Chỉ lấy hàng tồn</option>--%>
<%--                                            <option value="2">Hết Hàng</option>--%>
<%--                                        </select>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="col-md-3 padd-0" style="padding-left: 5px;">--%>
<%--                                    <button style="box-shadow: none;" type="button" class="btn btn-primary btn-large"--%>
<%--                                    ><i class="fa fa-search"></i> Xem--%>
<%--                                    </button>--%>

<%--                                </div>--%>
<%--                            </div>--%>
<%--                            <div class="col-md-1 padd-0" style="padding-left: 1px;">--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
                <div class="inventory-main-body">
                    <table class="table table-bordered table-striped">
                        <thead>
                        <tr>
                            <th class="text-center">Mã hàng</th>
                            <th class="text-center">Tên sản phẩm</th>
                            <th class="text-center">SL</th>
                            <th class="text-center">Giá Trị Sản Phẩm</th>
                            <th class="text-center">Giá trị tồn</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${t.soLuong}" var="e">
                            <tr>
                                <td>${e.idProduct}</td>
                                <td class="text-left">${e.tenProduct}</td>
                                <td class="text-center">${e.soLuongTrongKho}</td>
                                <td class="text-right">${e.giaTien}</td>
                                <td class="text-right">${e.soLuongTrongKho * e.giaTien}</td>
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
