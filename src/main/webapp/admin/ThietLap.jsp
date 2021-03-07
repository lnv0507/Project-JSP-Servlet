<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html><html lang="en">
<head>
    <jsp:useBean id="t" class="com.dao.DesignDAO" scope="request"/>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <base href=""/>
    <link rel="shortcut icon" type="image/png" href="images/logodend.png"/>
    <title>Thiết lập</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap-datepicker.css" rel="stylesheet">
    <link href="css/bootstrap-datetimepicker.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href="css/jquery-ui.min.css" rel="stylesheet">
    <link href="css/jquery.datetimepicker.css" rel="stylesheet">
    <script src="js/jquery.js"></script>
    <script src="js/jquery-ui.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.14.4/jquery.min.js"></script>
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
        <div class="modal fade" id="create-nv" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel" style="text-transform: uppercase; color: white;"><i
                                class="fa fa-user"></i>
                            Thêm tài khoản đăng nhập </h4>
                    </div>
                    <div class="modal-body">
                        <form class="form-horizontal">
                            <div class="form-group">
                                <div class="col-sm-3">
                                    <label>Tên nhân viên</label>
                                </div>
                                <div class="col-sm-9">
                                    <input type="text" id="customer_name" name="customer_name" class="form-control"
                                           value=""
                                           placeholder="Nhập tên nhân viên">
                                    <span style="color: red; font-style: italic;"
                                          class="error error-display_name"></span>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-3">
                                    <label for="customer_code">Mã nhân viên</label>
                                </div>
                                <div class="col-sm-9">
                                    <input type="text" id="customer_code" name="customer_create" class="form-control"
                                           value="" placeholder="Nhập mã nhân viên">
                                    <span style="color: red; font-style: italic;" class="error error-manv"></span>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-3">
                                    <label>Số Điện Thoại</label>
                                </div>
                                <div class="col-sm-9">
                                    <input id="customer_phone" type="text" name="customer_phone" class="form-control"
                                           value=""
                                           placeholder="Nhập số điện thoại">
                                    <span style="color: red; font-style: italic;" class="error error-manv"></span>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-3">
                                    <label for="customer_email">Email</label>
                                </div>
                                <div class="col-sm-9">
                                    <input type="text" id="customer_email" name="email" class="form-control" value=""
                                           placeholder="Nhập email của bạn">
                                    <span style="color: red; font-style: italic;" class="error error-mail"></span>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-3">
                                    <label for="customer_addr">Địa Chỉ</label>
                                </div>
                                <div class="col-sm-9">
                                    <input type="text" id="customer_addr" name="customer_email" class="form-control"
                                           value=""
                                           placeholder="Nhập Địa Chỉ">
                                    <span style="color: red; font-style: italic;" class="error error-manv"></span>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-3">
                                    <label>Mật khẩu</label>
                                </div>
                                <div class="col-sm-9">
                                    <input type="password" id="customer_password" name="password" class="form-control"
                                           value=""
                                           placeholder="Nhập Mật khẩu">
                                    <span style="color: red; font-style: italic;" class="error error-password"></span>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button id="submit_create_admin" type="button" class="btn btn-primary btn-sm btn-crnv">
                                    <i class="fa fa-check"></i> Lưu
                                </button>
                                <button type="button" class="btn btn-default btn-sm btn-close" data-dismiss="modal"><i
                                        class="fa fa-undo"></i> Bỏ qua
                                </button>
                            </div>
                        </form>
                    </div>

                </div>
            </div>
        </div>


        <div class="setting">
            <ul class="nav nav-tabs tab-setting" role="tablist">
                <li role="presentation" class="active"><a href="#user" aria-controls="home" role="tab"
                                                          data-toggle="tab"><i
                        class="fa fa-user"></i> Thiết Kế</a></li>

                </li>
            </ul>
            <div class="tab-content">
                <div role="tabpanel" class="tab-pane active" id="user">
                    <div class="panel panel-primary" style="margin-top: 20px">
                        <div class="panel-heading">
                            <i class="fa fa-user"></i> Thiết Kế
                            <div class="action pull-right">
                                <button class="btn btn-default btn-sm create-nv btn-in-panel blue" data-toggle="modal"
                                        data-target="#create-nv" style="background-color: #337ab7; color: white;"><i
                                        class="fa fa-pencil blue" style="color: white;"></i> Tạo Thiết Kế
                                </button>
                            </div>

                        </div>
                        <div class="panel-body">
                            <div class="table-responsive ">
                                <table class="table table-hover table-user table-striped">
                                    <thead>
                                    <th style="width: 20%">Mã Thiết Kế</th>
                                    <th style="width: 20%">Tên Thiết Kế</th>
                                    <th style="width: 20%">Loại Thiết Kế</th>
                                    <th style="width: 35%">Mô Tả</th>
                                    <th style="width: 5%"></th>
                                    </thead>
                                    <tbody>

                                    <c:forEach items="${t.thietKe}" var="d">
                                        <tr class="tr-item-24">
                                            <td>${d.idDes}</td>
                                            <td>${d.nameDes}</td>
                                            <c:forEach items="${t.directories}" var="e">
                                                <c:set var="id" scope="session" value="${d.type}"/>
                                                <c:set var="id2" scope="session" value="${e.id}"/>
                                                <c:if test="${id.equalsIgnoreCase(id2)}">
                                                    <td><c:out value="${e.type}"/></td>
                                                </c:if>
                                            </c:forEach>
                                            <td><span class="user_group"><i class="fa fa-male"></i>${d.mota}</span>
                                            </td>
                                                <%--                                            <td class="text-center"><i class="fa fa-pencil-square-o edit-item"--%>
                                                <%--                                                                       title="Sửa"--%>
                                                <%--                                                                       onclick="cms_edit_usitem(24)"--%>
                                                <%--                                                                       style="margin-right: 10px; cursor: pointer;"></i><i--%>
                                                <%--                                                    onclick="cms_del_usitem('${d.idAccount}')" title="Xóa"--%>
                                                <%--                                                    class="fa fa-trash-o delete-item" style="cursor: pointer;"></i></td>--%>
                                        </tr>
                                        <tr class="edit-tr-item-24" style="display: none;">
                                            <td class="text-center">18</td>
                                            <td class="itmanv"><input type="text" class="form-control"
                                                                      value="18130156" disabled/>
                                            </td>
                                            <td class="itdisplay_name"><input type="text" class="form-control"
                                                                              value="Phạm Minh Nguyên"/>
                                            </td>
                                            <td class="itemail">
                                                <input type="text" class="form-control"
                                                       value="pmnguyen1032000@gmail.com"/>
                                            </td>
                                            <td class="itgroup_name">
                                                <div class="group-user">
                                                    <div class="group-selbox">
                                                    </div>
                                                </div>
                                            </td>

                                            <td class="text-center"><i class="fa fa-floppy-o" title="Lưu"
                                                                       onclick="cms_save_item_user( 24 )"
                                                                       style="color: #EC971F; cursor: pointer; margin-right: 10px;"></i><i
                                                    onclick="cms_undo_item( 24 )" title="Hủy"
                                                    class="fa fa-undo"
                                                    style="color: green; cursor: pointer; margin-right: 5px;"></i>
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
