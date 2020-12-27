<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html><html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <base href=""/>
    <link rel="shortcut icon" type="image/png" href="images/logodend.png"/>
    <title>Tạo phiếu nhập</title>
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
        <!-- start create supplier -->
        <div class="modal fade" id="create-sup" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel" style="color: white;">Tạo mới nhà cung cấp</h4>
                    </div>
                    <div class="modal-body">
                        <form class="form-horizontal" id="frm-crsup">
                            <div class="form-group">
                                <div class="col-sm-3">
                                    <label for="supplier_name">Mã nhà cung cấp</label>
                                </div>
                                <div class="col-sm-9">
                                    <input type="text" id="supplier_code" name="supplier_code" class="form-control"
                                           value=""
                                           placeholder="Mã nhà cung cấp (Tự sinh nếu bỏ trống)">
                                    <span style="color: red; font-style: italic;"
                                          class="error error-supplier_code"></span>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-3">
                                    <label for="supplier_name">Tên nhà cung cấp</label>
                                </div>
                                <div class="col-sm-9">
                                    <input type="text" id="supplier_name" name="supplier_name" class="form-control"
                                           value=""
                                           placeholder="Nhập tên nhà cung cấp (bắc buộc)">
                                    <span style="color: red; font-style: italic;"
                                          class="error error-supplier_name"></span>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-3">
                                    <label for="supplier_phone">Số điện thoại</label>
                                </div>
                                <div class="col-sm-9">
                                    <input type="text" id="supplier_phone" name="supplier_phone" class="form-control"
                                           value="" placeholder="Số điện thoại">
                                    <span style="color: red; font-style: italic;"
                                          class="error error-supplier_phone"></span>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-3">
                                    <label for="supplier_email">Email</label>
                                </div>
                                <div class="col-sm-9">
                                    <input type="text" id="supplier_email" name="supplier_email" class="form-control"
                                           value=""
                                           placeholder="Nhập email nhà cung cấp ( ví dụ: kh10@gmail.com )">
                                    <span style="color: red; font-style: italic;"
                                          class="error error-supplier_email"></span>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-3">
                                    <label for="supplier_addr">Địa chỉ</label>
                                </div>
                                <div class="col-sm-9">
                                    <input type="text" id="supplier_addr" name="supplier_addr" class="form-control"
                                           value="" placeholder="">
                                    <span style="color: red; font-style: italic;"
                                          class="error error-supplier_addr"></span>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-3">
                                    <label for="tax_code">Mã số thuế</label>
                                </div>
                                <div class="col-sm-9">
                                    <input type="text" id="tax_code" name="tax_code" class="form-control" value=""
                                           placeholder="">
                                    <span style="color: red; font-style: italic;" class="error error-tax_code"></span>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-3">
                                    <label for="supplier_notes">Ghi chú</label>
                                </div>
                                <div class="col-sm-9">
                                    <input type="text" id="supplier_notes" name="notes" class="form-control" value=""
                                           placeholder="">
                                    <span style="color: red; font-style: italic;"
                                          class="error error-supplier_notes"></span>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary btn-sm btn-crsup" onclick="cms_crsup();"><i
                                class="fa fa-check"></i> Lưu
                        </button>
                        <button type="button" class="btn btn-default btn-sm btn-close" data-dismiss="modal"><i
                                class="fa fa-undo"></i> Bỏ qua
                        </button>
                    </div>
                </div>
            </div>
        </div>

        <!-- end supacture -->

        <div class="main-space orders-space"></div>
        <div class="orders imports">
            <div class="breadcrumbs-fixed panel-action">
                <div class="row">
                    <div class="orders-act">
                        <div class="col-md-4 col-md-offset-2">
                            <div class="left-action text-left clearfix">
                                <h2>Tạo phiếu nhập »</h2>
                            </div>
                        </div>
                        <!-- <div class="col-md-6">
                            <div class="right-action text-right">
                                <div class="btn-groups">
                                    <button type="button" class="btn btn-primary" onclick="cms_save_import(0)">
                                        <i class="fa fa-floppy-o"></i> Lưu tạm
                                    </button>
                                    <button type="button" class="btn btn-primary" onclick="cms_save_import(1)"><i class="fa fa-check"></i> Lưu
                                    </button>
                                    <button type="button" class="btn btn-primary" onclick="cms_save_import(2)"><i class="fa fa-print"></i> Lưu và in
                                    </button>
                                    <a href="NhapKho.jsp">
                                        <button type="button" class="btn btn-primary" onclick="cms_javascript_redirect( cms_javascrip_fullURL() )"><i class="fa fa-arrow-left"></i> Trở lại
                                        </button>
                                    </a>

                                </div>
                            </div>
                        </div> -->
                    </div>
                </div>
            </div>

            <div class="main-space orders-space"></div>

            <div class="orders-content check-order">
                <div class="row">
                    <div class="col-md-8">
                        <div class="order-search" style="margin: 10px 0px; position: relative;">
                            <input type="text" class="form-control ui-autocomplete-input"
                                   placeholder="Nhập mã sản phẩm hoặc tên sản phẩm" id="search-pro-box"
                                   autocomplete="off">
                            <script>
                                $(function () {
                                    $("#search-pro-box").autocomplete({
                                        minLength: 1,
                                        source: 'import/cms_autocomplete_products/',
                                        focus: function (event, ui) {
                                            $("#search-pro-box").val(ui.item.prd_code);
                                            return false;
                                        },
                                        select: function (event, ui) {
                                            cms_select_product_import(ui.item.ID);
                                            $("#search-pro-box").val('');
                                            return false;
                                        }
                                    }).keyup(function (e) {
                                        if (e.which === 13) {
                                            cms_autocomplete_enter_import();
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
                        </div>
                        <div class="product-results">
                            <table class="table table-bordered table-striped">
                                <thead>
                                <tr>
                                    <th class="text-center">STT</th>
                                    <th>Mã hàng</th>
                                    <th>Tên sản phẩm</th>
                                    <th class="text-center">Số lượng</th>
                                    <th class="text-center">Giá nhập</th>
                                    <th class="text-center">Thành tiền</th>
                                    <th></th>
                                </tr>
                                </thead>
                                <tbody id="pro_search_append">
                                </tbody>
                            </table>
                            <div class="alert alert-success" style="margin-top: 30px;" role="alert">Gõ mã hoặc tên
                                sản phẩm vào hộp
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
                                                <label>Nhà cung cấp</label>
                                            </div>
                                            <div class="col-md-8">
                                                <div class="col-md-10 padd-0" style="position: relative;">
                                                    <input id="search-box-mas" class="form-control" type="text"
                                                           placeholder="Tìm nhà cung cấp"
                                                           style="border-radius: 3px 0 0 3px !important;"><span
                                                        style="color: red; position: absolute; right: 5px; top:5px; "
                                                        class="del-mas"></span>

                                                    <div id="mas-suggestion-box"
                                                         style="border: 1px solid #444; display: none; overflow-y: auto;background-color: #fff; z-index: 2 !important; position: absolute; left: 0; width: 100%; padding: 5px 0px; max-height: 400px !important;">
                                                        <div class="search-mas-inner"></div>
                                                    </div>
                                                </div>
                                                <div class="col-md-2 padd-0">
                                                    <button type="button" data-toggle="modal"
                                                            data-target="#create-sup" class="btn btn-primary"
                                                            style="border-radius: 0 3px 3px 0; box-shadow: none; padding: 7px 11px;">
                                                        +
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group marg-bot-10 clearfix">
                                            <div style="padding:0px" class="col-md-4">
                                                <label>Ngày nhập</label>
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
                                                <label>Người nhập</label>
                                            </div>
                                            <div class="col-md-8">
                                                <select disabled="disabled" id="" class="form-control">
                                                    <option value="1">admin</option>
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
                                            <div class="col-md-4 padd-right-0">
                                                <label>Chiết khấu</label>
                                            </div>
                                            <div class="col-md-8">
                                                <input type="text"
                                                       class="form-control text-right txtMoney discount-import"
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
                                                <label>Thanh toán</label>
                                            </div>
                                            <div class="col-md-8">
                                                <input type="text"
                                                       class="form-control text-right txtMoney customer-pay"
                                                       placeholder="0" style="border-radius: 0 !important;">
                                            </div>
                                        </div>
                                        <div class="form-group marg-bot-10 clearfix">
                                            <div class="col-md-4">
                                                <label>Còn nợ</label>
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
                                    <button type="button" class="btn btn-primary" onclick="cms_save_import(1)"><i
                                            class="fa fa-check"></i> Lưu
                                    </button>
                                    <a href="NhapKho.jsp">
                                        <button type="button" class="btn btn-primary btn-back"
                                                onclick="cms_javascript_redirect( cms_javascrip_fullURL() )"><i
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
