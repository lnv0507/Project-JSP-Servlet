<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html><html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <base href=""/>
    <link rel="shortcut icon" type="image/png" href="images/logodend.png"/>
    <title>Sản Phẩm</title>
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

        <div class="products">
            <div class="breadcrumbs-fixed panel-action">
                <div class="row">
                    <div class="products-act">
                        <div class="col-md-4 col-md-offset-2">
                            <div class="left-action text-left clearfix">
                                <h2>Danh sách sản phẩm</h2>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="right-action text-right">
                                <div class="btn-groups">
                                    <a href="SanPhamCreate.jsp">
                                        <button type="button" class="btn btn-primary"><i
                                                class="fa fa-plus"> </i> Tạo sản phẩm
                                        </button>
                                    </a>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="main-space orders-space"></div>

            <div class="products-content">
                <form name="find" action="FindProduct" method="get">
                <div class="product-sear panel-sear">
                    <div action="" class="">
                        <div class="form-group col-md-5 padd-0">
                            <input type="text" class="form-control" placeholder="Nhập tên sản phẩm"
                                   id="product-search" name="text">
                        </div>
                        <div class="form-group col-md-7 ">
                            <input type="hidden" name="index" value="1">
                            <button type="submit" class="btn btn-primary btn-large btn-ssup"
                                    onclick="cms_paging_product(1)"><i
                                    class="fa fa-search"></i> Tìm kiếm
                            </button>
                        </div>
                    </div>
                </div>
            </form>


                <div class="product-main-body">
                    <table class="table table-bordered table-striped">
                        <thead>
                        <tr>
                            <th class="text-center"><label class="checkbox" style="margin: 0;"><input type="checkbox"
                                                                                                      class="checkbox chkAll"><span
                                    style="width: 15px; height: 15px;"></span></label></th>
                            <th class="text-center">Tên sản phẩm</th>
                            <th class="text-center">Mã sản phẩm</th>
                            <th class="text-center">Hình ảnh</th>
                            <th class="text-center">SL</th>
                            <th class="text-center">Giá bán</th>
                            <th class="text-center">Danh mục</th>
                            <th class="text-center">Tình Trạng</th>
                            <th></th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${data}" var="d">
                        <tr>
                            <td class="text-center"><label class="checkbox" style="margin: 0;"><input type="checkbox" value="119" class="checkbox chk"><span style="width: 15px; height: 15px;"></span></label>
                            </td>
                            <td class="text-left prd_name">${d.tenProduct}</td>
                            <td class="text-center">${d.idProduct}</td>
                            <td class="text-center">
                                <img src="../images/products/${d.getImages().get(0)}" style="width: 80px ; height: 80px;" alt="">
                            </td>
                            <td class="text-center">${d.soLuongTrongKho}</td>
                            <td class="text-right" style="font-weight: bold;">${d.giaTien}</td>
                            <td>${d.loai}</td>
                            <td>${d.tinhTrang}</td>
                            <td class="text-center">
                                <a href="DetailProduct?id=${d.getIdProduct()}">
                                    <i class="fa fa-eye" style="margin-right: 5px; color: #307ECC;" aria-hidden="true"></i>

                                </a>
                                <i title="Ngừng kinh doanh" class="fa fa-pause" onclick="cms_deactivate_product('${d.idProduct}',1)" style="margin-right: 5px; color: #C6699F; cursor: pointer;"></i>
                                <i class="fa fa-trash-o" style="color: darkred;" title="Xóa" onclick="cms_delete_product('${d.idProduct}',1)"></i>
                            </td>
                        </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                    <div class="alert alert-info summany-info clearfix" role="alert">
                        <div class="sm-info pull-left padd-0">SL sản phẩm/SL nhà sản xuất:
                            <span>6            /36</span></div>
                        <div class="pull-right ajax-pagination">
                        </div>
                        <c:forEach begin="1" end="${endPage}" var="i">
                            <button><a href="${servlet}index=${i}">${i}</a></button>
                        </c:forEach>
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
