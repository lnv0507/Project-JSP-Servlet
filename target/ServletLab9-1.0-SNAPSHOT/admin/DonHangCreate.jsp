<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html><html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <base href=""/>
    <link rel="shortcut icon" type="image/png" href="images/logodend.png"/>
    <title>Tạo Đơn Hàng</title>
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
    <div class="orders-content check-order">
        <div class="row">
            <div class="col-md-8">
                <div class="order-search" style="margin: 10px 0px; position: relative;">
                    <input type="text" class="form-control ui-autocomplete-input"
                           placeholder="Nhập mã sản phẩm hoặc tên sản phẩm" id="search-pro-box"
                           autocomplete="off">
                </div>
                <script>
                    $(function () {
                        $("#search-pro-box").autocomplete({
                            minLength: 1,
                            source: 'orders/cms_autocomplete_products/',
                            focus: function (event, ui) {
                                $("#search-pro-box").val(ui.item.prd_code);
                                return false;
                            },
                            select: function (event, ui) {
                                cms_select_product_sell(ui.item.ID);
                                $("#search-pro-box").val('');
                                return false;
                            }
                        }).keyup(function (e) {
                            if (e.which === 13) {
                                cms_autocomplete_enter_sell();
                                $("#search-pro-box").val('');
                                $(".ui-menu-item").hide();
                            }
                        })
                            .autocomplete("instance")._renderItem = function (ul, item) {
                            return $("<li>")
                                .append("<div>" + item.prd_code + " - " + item.prd_name + "</div>")
                                .appendTo(ul);
                        };
                    });
                </script>
                <div class="product-results">
                    <table class="table table-bordered table-striped">
                        <thead>
                        <tr>
                            <th class="text-center">STT</th>
                            <th>Mã hàng</th>
                            <th>Tên sản phẩm</th>
                            <th class="text-center">Số lượng</th>
                            <th class="text-center">Giá bán</th>
                            <th class="text-center">Thành tiền</th>
                            <th></th>
                        </tr>
                        </thead>
                        <tbody id="pro_search_append">
                        </tbody>
                    </table>
                    <div class="alert alert-success" style="margin-top: 30px;" role="alert">Gõ mã hoặc tên sản
                        phẩm vào hộp
                        tìm kiếm để thêm hàng vào đơn hàng
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="row">
                    <div class="col-md-12">
                        <div class="morder-info" style="padding: 4px;">
                            <div class="tab-contents" style="padding: 8px 6px;">
                                <div class="form-group marg-bot-10 clearfix">
                                    <div style="padding:0px" class="col-md-4">
                                        <label>Khách hàng</label>
                                    </div>
                                    <div class="col-md-8">
                                        <div class="col-md-10 padd-0" style="position: relative;">
                                            <input id="search-box-cys" class="form-control" type="text"
                                                   placeholder="Tìm khách hàng"
                                                   style="border-radius: 3px 0 0 3px !important;"><span
                                                style="color: red; position: absolute; right: 5px; top:5px; "
                                                class="del-cys"></span>

                                            <div id="cys-suggestion-box"
                                                 style="border: 1px solid #444; display: none; overflow-y: auto;background-color: #fff; z-index: 2 !important; position: absolute; left: 0; width: 100%; padding: 5px 0px; max-height: 400px !important;">
                                                <div class="search-cys-inner"></div>
                                            </div>
                                        </div>
                                        <div class="col-md-2 padd-0">
                                            <button type="button" data-toggle="modal" data-target="#create-cust"
                                                    class="btn btn-primary"
                                                    style="border-radius: 0 3px 3px 0; box-shadow: none; padding: 7px 11px;">
                                                +KH Mới
                                            </button>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group marg-bot-10 clearfix">
                                    <div style="padding:0px" class="col-md-4">
                                        <label>Ngày bán</label>
                                    </div>
                                    <div class="col-md-8">
                                        <input id="date-order" class="form-control datepk" type="text"
                                               placeholder="Hôm nay" style="border-radius: 0 !important;">
                                    </div>
                                    <script>$('#date-order').datetimepicker({
                                        autoclose: true
                                    });
                                    </script>
                                </div>
                                <div class="form-group marg-bot-10 clearfix">
                                    <div style="padding:0px" class="col-md-4">
                                        <label>NV bán hàng</label>
                                    </div>
                                    <div class="col-md-8">
                                        <select class="form-control" id="sale_id">
                                            <option value="">Chọn NV bán hàng</option>
                                            <option value="2">admin</option>
                                            <option value="9">Lên Anh Tài</option>
                                            <option value="10">Lương Tài Em</option>
                                            <option value="11">Phạm Quỳnh Ánh</option>
                                            <option value="12">Lý Thành Nam</option>
                                            <option value="13">Lê Thành Tâm</option>
                                            <option value="14">Nguyễn Văn An</option>
                                            <option value="15">Nguyễn Văn Bình</option>
                                            <option value="16">Lê Thị Yến</option>
                                            <option value="17">Nguyễn Thị Linh</option>
                                            <option value="18">Lương Văn Tài</option>
                                            <option value="19">Nguyễn Tuấn Anh</option>
                                            <option value="20">Nguyễn Thị Lan Anh</option>
                                            <option value="21">Nguyễn Thị Ánh</option>
                                            <option value="22">Phạm Thị Quỳnh</option>
                                            <option value="23">Phạm Thị Quỳnh Anh</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group marg-bot-10 clearfix">
                                    <div style="padding:0px" class="col-md-4">
                                        <label>Ghi chú</label>
                                    </div>
                                    <div class="col-md-8">
                                                <textarea id="note-order" cols="" class="form-control" rows="3"
                                                          style="border-radius: 0;"></textarea>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <h4 class="lighter" style="margin-top: 0;">
                            <i class="fa fa-info-circle blue"></i>
                            Thông tin thanh toán
                        </h4>

                        <div class="morder-info" style="padding: 4px;">
                            <div class="tab-contents" style="padding: 8px 6px;">
                                <div class="form-group marg-bot-10 clearfix">
                                    <div class="col-md-4">
                                        <label>Hình thức</label>
                                    </div>
                                    <div class="col-md-8">
                                        <div class="input-group">
                                            <input type="radio" class="payment-method" name="method-pay"
                                                   value="1" checked="">
                                            Tiền mặt &nbsp;
                                            <input type="radio" class="payment-method" name="method-pay"
                                                   value="2"> Thẻ&nbsp;
                                        </div>

                                    </div>
                                </div>
                                <div class="form-group marg-bot-10 clearfix">
                                    <div class="col-md-4">
                                        <label>Tiền hàng</label>
                                    </div>
                                    <div class="col-md-8">
                                        <div class="total-money" style="color: white;">
                                            0
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group marg-bot-10 clearfix">
                                    <div class="col-md-4">
                                        <label>Giảm giá</label>
                                    </div>
                                    <div class="col-md-8">
                                        <input type="text"
                                               class="form-control text-right txtMoney discount-order"
                                               placeholder="0" style="border-radius: 0 !important;">
                                    </div>
                                </div>
                                <div class="form-group marg-bot-10 clearfix">
                                    <div class="col-md-4">
                                        <label>Tổng cộng</label>
                                    </div>
                                    <div class="col-md-8">
                                        <div class="total-after-discount" style="color: white;">
                                            0
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group marg-bot-10 clearfix">
                                    <div class="col-md-4 padd-right-0">
                                        <label>KH đã trả</label>
                                    </div>
                                    <div class="col-md-8">
                                        <input type="text" class="form-control text-right txtMoney customer-pay"
                                               placeholder="0" style="border-radius: 0 !important;">
                                    </div>
                                </div>
                                <div class="form-group marg-bot-10 clearfix">
                                    <div class="col-md-4">
                                        <label class="debt">KH còn nợ</label>
                                    </div>
                                    <div class="col-md-8">
                                        <div class="debt" style="color: white;">0</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="btn-groups pull-right" style="margin-bottom: 50px;">

                            <button type="button" class="btn btn-primary" onclick="cms_save_orders(1)"><i
                                    class="fa fa-check"></i> Lưu
                            </button>

                            <a href="DonHang.jsp">
                                <button type="button" class="btn-back btn btn-primary"><i
                                        class="fa fa-arrow-left"></i> Trở lại
                                </button>
                            </a>
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
