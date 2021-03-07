<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html><html lang="en">
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <base href=""/>
    <link rel="shortcut icon" type="image/png" href=" images/logodend.png"/>
    <title>Khách Hàng</title>
    <link href=" css/bootstrap.min.css" rel="stylesheet">
    <link href=" css/bootstrap-datepicker.css" rel="stylesheet">
    <link href=" css/bootstrap-datetimepicker.min.css" rel="stylesheet">
    <link href=" css/font-awesome.min.css" rel="stylesheet">
    <link href=" css/style.css" rel="stylesheet">
    <link href=" css/jquery-ui.min.css" rel="stylesheet">
    <link href=" css/jquery.datetimepicker.css" rel="stylesheet">
</head>
<body>
<%@include file="HeaderAdmin.jsp" %>
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


        <!-- start create customer -->

        <div class="modal fade" id="create-cust" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel" style="color: white;">Tạo mới khách hàng</h4>
                    </div>
                    <div class="modal-body">
                        <%--                        id="frm-crcust" action="createAcount" method="post"--%>
                        <form class="form-horizontal" id="insert-data">
                            <div class="form-group">
                                <div class="col-sm-3">
                                    <label for="customer_name">Mã khách hàng</label>
                                </div>
                                <div class="col-sm-9">
                                    <input type="text" id="customer_code" name="customer_create"
                                           class="form-control" value=""
                                           placeholder="Mã khách hàng">
                                    <span style="color: red; font-style: italic;"
                                          class="error error-customer_code"></span>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-3">
                                    <label for="customer_name">Tên Khách hàng</label>
                                </div>
                                <div class="col-sm-9">
                                    <input type="text" id="customer_name" name="customer_name"
                                           class="form-control" value=""
                                           placeholder="Nhập tên khách hàng( bắc buộc )">
                                    <span style="color: red; font-style: italic;"
                                          class="error error-customer_name"></span>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-3">
                                    <label for="customer_phone">Số điện thoại</label>
                                </div>
                                <div class="col-sm-9">
                                    <input type="text" id="customer_phone" name="customer_phone"
                                           class="form-control" value="" placeholder="">
                                    <span style="color: red; font-style: italic;"
                                          class="error error-customer_phone"></span>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-3">
                                    <label for="customer_email">Email</label>
                                </div>
                                <div class="col-sm-9">
                                    <input type="text" id="customer_email" name="customer_email"
                                           class="form-control" value=""
                                           placeholder="Nhập email khách hàng ( ví dụ: kh10@gmail.com )">
                                    <span style="color: red; font-style: italic;"
                                          class="error error-customer_email"></span>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-3">
                                    <label for="customer_addr">Địa chỉ</label>
                                </div>
                                <div class="col-sm-9">
                                    <input type="text" id="customer_addr" name="customer_addr"
                                           class="form-control"
                                           value="" placeholder="">
                                    <span style="color: red; font-style: italic;"
                                          class="error error-customer_addr"></span>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-sm-3">
                                    <label for="customer_password">PassWord</label>
                                </div>
                                <div class="col-sm-9">
                                    <input type="password" id="customer_password" name="password"
                                           class="form-control txttimes" value="" placeholder="PassWord">
                                    <span style="color: red;" class="error error-customer_birthday"></span>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button id="submit_create" type="button" class="btn btn-primary btn-sm btn-crcust"><i
                                        class="fa fa-check"></i> Lưu
                                </button>
                                <button type="button" class="btn btn-default btn-sm btn-close" data-dismiss="modal">
                                    <i class="fa fa-undo"></i> Bỏ qua
                                </button>
                            </div>
                        </form>
                    </div>

                </div>
            </div>
        </div>

        <!-- end customer -->


        <!-- end supacture -->
        <div class="customer-supplier">
            <div class="breadcrumbs-fixed panel-action">
                <div class="row">
                    <div class="customer-act act">
                        <div class="col-md-4 col-md-offset-2">
                            <div class="left-action text-left clearfix">
                                <h2>Khách hàng</h2>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="right-action text-right">
                                <div class="btn-groups">
                                    <button type="button" class="btn btn-primary" data-toggle="modal"
                                            data-target="#create-cust"><i class="fa fa-plus-circle"></i> Tạo
                                        khách hàng
                                    </button>

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
                            href="#cus"
                            aria-controls="customer"
                            role="tab"
                            data-toggle="tab"><i
                            class="fa fa-user"></i> Khách hàng</a></li>

                </ul>
                <div class="tab-content">
                    <div id="cus" class="tab-pane active">
                        <form action="FindAccount" method="get">
                        <div class="cus-sear panel-sear">

                            <div action="" class="">
                                <div class="form-group col-md-6 padd-0">
                                    <input type="text" name="text" class="form-control txt-scustomer"
                                           placeholder="Nhập mã khách hàng">
                                </div>
                                <div class="form-group col-md-6 ">
                                    <input type="hidden" name="index" value="1">
                                    <button type="submit" onclick="cms_paging_listcustomer(1)"
                                            class="btn btn-primary btn-large btn-sCustomer"><i
                                            class="fa fa-search"></i> Tìm kiếm
                                    </button>
                                </div>
                            </div>

                        </div>
                        </form>
                        <div class="cus-body">
                            <table class="table table-bordered table-striped">
                                <thead>
                                <tr>
                                    <th class="text-center">Mã KH</th>
                                    <th class="text-center">Tên KH</th>
                                    <th class="text-center">Điện thoại</th>
                                    <th class="text-center">Địa chỉ</th>
                                    <th class="text-center">Email</th>
                                    <th class="text-center">Chức Vụ</th>
                                    <th class="text-center">Tổng Tiền Hàng</th>
                                    <th></th>
                                </tr>
                                </thead>
                                <tbody class="ajax-loadlist-customer">
                                <c:forEach items="${listAC}" var="d">
                                    <tr id="tr-item-${d.idAccount}">
                                        <td class="text-center tr-detail-item" id="hehe"
                                        >${d.idAccount}
                                        </td>
                                        <td class="text-center tr-detail-item"
                                        >${d.tenAccount}
                                        </td>
                                        <td class="text-center">${d.soDienThoai}</td>
                                        <td class="text-center">${d.diaChi}</td>
                                        <td class="text-center">${d.email}</td>

                                        <td class="text-right" style="font-weight: bold; ">${d.chucVu}</td>
                                        <td class="text-right"> ${sum}</td>
                                        <td class="text-center"><i class="fa fa-trash-o"
                                                                   style="cursor:pointer;"
                                                                   onclick="cms_delCustomer('${d.idAccount}',1)"></i>

                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                            <div class="alert alert-info summany-info clearfix" role="alert">
                                <div class="pull-right">
                                </div>
                                <div class="otherInfo ">

                                    <ul class="pagination">

                                        <c:forEach begin="1" end="${endPage}" var="i">
                                            <button><a href="${servlet}index=${i}">${i}</a></button>
                                        </c:forEach>

                                    </ul>

                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="sup" class="tab-pane">
                        <div class="sup-sear panel-sear">
                            <div>
                                <div class="form-group col-md-6 padd-0">
                                    <input type="text" class="form-control txt-ssupplier"
                                           placeholder="Nhập tên, mã hoặc SDT Nhà cung cấp">
                                </div>
                                <div class="form-group col-md-6 ">
                                    <div class="col-md-4 padd-0" style="margin-right: 10px;">
                                        <select id="sup-option" class="form-control">
                                            <option value="0">Tất cả</option>
                                            <option value="1">NCC từng nhập hàng</option>
                                            <option value="2">Còn nợ NCC</option>
                                        </select>
                                    </div>
                                    <button type="button" class="btn btn-primary btn-large btn-ssup"
                                            onclick="cms_paging_supplier(1)"><i class="fa fa-search"></i>
                                        Tìm kiếm
                                    </button>
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

