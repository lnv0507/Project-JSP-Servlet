<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html><html lang="en">
<head>
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
</head>
<body>
<header>
    <nav id="navbar-container" class="navbar navbar- navbar-fixed-top">
        <div class="container-fluid">
            
            
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                                    <li style="border-right: 1px solid #E1E1E1; padding-right: 15px;">
                        <label style="margin: 13px 15px; color: white">
                            Tiệm đồ cũ DEND 
                        </label>
                    </li>
                   
                                    <li class="dropdown user-profile">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                           aria-expanded="false"><span class="hello">Xin chào, </span>DEND<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="TaiKhoan.jsp"><i class="fa fa-user"></i>Tài khoản</a></li>
                            <li><a href="DangNhap.jsp"><i class="fa fa-power-off"></i>Thoát</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav></header>
<section class="main" role="main">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-2 padd-0">
                <div class="sidebar sidebar-fixed hidden-xs hidden-sm hidden-md" id="sidebar">
                    <ul class="nav nav-pills nav-list nav-stacked">                        
                        <li id="dashboard"><a href="Trangchu.jsp" ><i class="fa fa-gg-circle"></i><b>Trang Chủ</b></a></li>
                        <li id="orders"><a href="DonHang.jsp"><i class="fa fa-shopping-cart"></i><b>Đơn hàng</b></a></li>
                        <li id="product"><a href="SanPham.jsp"><i class="fa fa-product-hunt"></i><b>Sản phẩm</b></a></li>
                        <li id="customer"><a href="KhachHang.jsp"><i class="fa fa-users"></i><b>Khách hàng</b></a></li>
                        <li id="import"><a href="NhapKho.jsp"><i class="fa fa-truck"></i><b>Nhập kho</b></a></li>
                        <li id="inventory"><a href="TonKho.jsp"><i class="fa fa-list-alt"></i><b>Tồn kho</b></a></li>
                        <li id="inventory"><a href="LienHe.jsp" ><i class="fa fa-user"></i><b>Liên hệ</b></a></li>
                        <li id="config"><a href="ThietLap.jsp" style=" color: white;background-color: #33CB82!important;"><i class="fa fa-empire"></i><b>Thiết lập</b></a></li>
                        <img id="dend" style="width: 180px; height: 180px; margin-left: 15px;" src="images/logodend.png" alt=" ">
                    </ul>
</div>            </div>
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
<!-- Start create employee -->
<div class="modal fade" id="create-nv" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel" style="text-transform: uppercase; color: white;"><i class="fa fa-user" ></i>
                    Thêm tài khoản đăng nhập </h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" id="frm-cruser">
                    <div class="form-group">
                        <div class="col-sm-3">
                            <label for="tennhanvien">Tên nhân viên</label>
                        </div>
                        <div class="col-sm-9">
                            <input type="text" id="display_name" name="display_name" class="form-control" value=""
                                   placeholder="Nhập tên nhân viên">
                            <span style="color: red; font-style: italic;" class="error error-display_name"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-3">
                            <label for="manv">Mã nhân viên</label>
                        </div>
                        <div class="col-sm-9">
                            <input type="text" id="manv" name="manv" class="form-control" value=""
                                   placeholder="Nhập mã nhân viên">
                            <span style="color: red; font-style: italic;" class="error error-manv"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-3">
                            <label for="manv">Email</label>
                        </div>
                        <div class="col-sm-9">
                            <input type="text" id="mail" name="email" class="form-control" value=""
                                   placeholder="Nhập email của bạn">
                            <span style="color: red; font-style: italic;" class="error error-mail"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-3">
                            <label for="manv">Mật khẩu</label>
                        </div>
                        <div class="col-sm-9">
                            <input type="password" id="password" name="password" class="form-control" value=""
                                   placeholder="Nhập Mật khẩu">
                            <span style="color: red; font-style: italic;" class="error error-password"></span>
                        </div>
                    </div>
                  
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary btn-sm btn-crnv" onclick="cms_cruser()"><i
                        class="fa fa-check"></i> Lưu
                </button>
                <button type="button" class="btn btn-default btn-sm btn-close" data-dismiss="modal"><i
                        class="fa fa-undo"></i> Bỏ qua
                </button>
            </div>
        </div>
    </div>
</div>
<!-- end create employee -->




                    <div class="setting">
    <ul class="nav nav-tabs tab-setting" role="tablist">
        <li role="presentation" class="active"><a href="#user" aria-controls="home" role="tab" data-toggle="tab"><i
                    class="fa fa-user"></i> Nhân viên</a></li>
        
        </li>
    </ul>
    <div class="tab-content">
        <div role="tabpanel" class="tab-pane active" id="user">
            <div class="panel panel-primary" style="margin-top: 20px">
                <div class="panel-heading">
                    <i class="fa fa-user"></i> Nhân viên
                    <div class="action pull-right" >
                        <button class="btn btn-default btn-sm create-nv btn-in-panel blue" data-toggle="modal"
                                data-target="#create-nv" style="background-color: #337ab7; color: white;"><i class="fa fa-pencil blue" style="color: white;"></i> Tạo nhân viên
                        </button>
                        <!-- | <i class="fa fa-refresh" style="font-size: 14px; cursor: pointer;" onclick="cms_upuser()"></i> -->
                    </div>

                </div>
                <div class="panel-body">
                    <div class="table-responsive ">
                        <table class="table table-hover table-user table-striped">
                            <thead>
                            <th class="text-center">STT</th>
                            <th>Mã nhân viên</th>
                            <th>Tên nhân viên</th>
                            <th>Email</th>
                            <th>Nhóm người sử dụng</th>
                            <th class="text-center">Trạng thái</th>
                            <th></th>
                            </thead>
                            <tbody>
                                                                
                                                                    <tr class="tr-item-24">
                                        <td class="text-center">18</td>
                                        <td>18130156</td>
                                        <td>Phạm Minh Nguyên</td>
                                        <td>pmnguyen1032000@gmail.com</td>
                                        <td><span class="user_group"><i class="fa fa-male"></i> Admin</span></td>
                                        <td class="text-center"><span class='user_status'><i class='fa fa-unlock'></i> Hoạt động</span></td>
                                        <td class="text-center"><i class="fa fa-pencil-square-o edit-item" title="Sửa"
                                                                   onclick="cms_edit_usitem(24)"
                                                                   style="margin-right: 10px; cursor: pointer;"></i><i
                                                onclick="cms_del_usitem(24)" title="Xóa"
                                                class="fa fa-trash-o delete-item" style="cursor: pointer;"></i></td>
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
                                        <td class="text-center ituser_status">
                                            <select class="ituser_status form-control">
                                                <option
                                                    value="1" selected="selected">
                                                    Hoạt động
                                                </option>
                                                <option
                                                    value="0" >
                                                    Tạm dừng
                                                </option>
                                            </select>
                                        </td>
                                        <td class="text-center"><i class="fa fa-floppy-o" title="Lưu"
                                                                   onclick="cms_save_item_user( 24 )"
                                                                   style="color: #EC971F; cursor: pointer; margin-right: 10px;"></i><i
                                                onclick="cms_undo_item( 24 )" title="Hủy"
                                                class="fa fa-undo"
                                                style="color: green; cursor: pointer; margin-right: 5px;"></i></td>
                                    </tr>
                                                                    <tr class="tr-item-25">
                                        <td class="text-center">19</td>
                                        <td>18130041</td>
                                        <td>Phan Thành Đoan</td>
                                        <td>18130041@st.hcmuaf.edu.vn</td>
                                        <td><span class="user_group"><i class="fa fa-male"></i> Admin</span></td>
                                        <td class="text-center"><span class='user_status'><i class='fa fa-unlock'></i> Hoạt động</span></td>
                                        <td class="text-center"><i class="fa fa-pencil-square-o edit-item" title="Sửa"
                                                                   onclick="cms_edit_usitem(25)"
                                                                   style="margin-right: 10px; cursor: pointer;"></i><i
                                                onclick="cms_del_usitem(25)" title="Xóa"
                                                class="fa fa-trash-o delete-item" style="cursor: pointer;"></i></td>
                                    </tr>
                                    <tr class="edit-tr-item-25" style="display: none;">
                                        <td class="text-center">19</td>
                                        <td class="itmanv"><input type="text" class="form-control"
                                                                  value="18130041" disabled/>
                                        </td>
                                        <td class="itdisplay_name"><input type="text" class="form-control"
                                                                          value="Phan Thành Đoan"/>
                                        </td>
                                        <td class="itemail">
                                            <input type="text" class="form-control"
                                                                   value="18130041@st.hcmuaf.edu.vn"/>
                                        </td>
                                        <td class="itgroup_name">
                                            <div class="group-user">
                                                <div class="group-selbox">
                                                </div>
                                            </div>
                                        </td>
                                        <td class="text-center ituser_status">
                                            <select class="ituser_status form-control">
                                                <option
                                                    value="1" selected="selected">
                                                    Hoạt động
                                                </option>
                                                <option
                                                    value="0" >
                                                    Tạm dừng
                                                </option>
                                            </select>
                                        </td>
                                        <td class="text-center"><i class="fa fa-floppy-o" title="Lưu"
                                                                   onclick="cms_save_item_user( 25 )"
                                                                   style="color: #EC971F; cursor: pointer; margin-right: 10px;"></i><i
                                                onclick="cms_undo_item( 25 )" title="Hủy"
                                                class="fa fa-undo"
                                                style="color: green; cursor: pointer; margin-right: 5px;"></i></td>
                                    </tr>
                                                                    <tr class="tr-item-26">
                                        <td class="text-center">20</td>
                                        <td>18130031</td>
                                        <td>Mai Huỳnh Phước Đạt</td>
                                        <td>18130031@st.hcmuaf.edu.vn</td>
                                        <td><span class="user_group"><i class="fa fa-male"></i> Admin</span></td>
                                        <td class="text-center"><span class='user_status'><i class='fa fa-unlock'></i> Hoạt động</span></td>
                                        <td class="text-center"><i class="fa fa-pencil-square-o edit-item" title="Sửa"
                                                                   onclick="cms_edit_usitem(26)"
                                                                   style="margin-right: 10px; cursor: pointer;"></i><i
                                                onclick="cms_del_usitem(26)" title="Xóa"
                                                class="fa fa-trash-o delete-item" style="cursor: pointer;"></i></td>
                                    </tr>
                                    <tr class="edit-tr-item-26" style="display: none;">
                                        <td class="text-center">20</td>
                                        <td class="itmanv"><input type="text" class="form-control"
                                                                  value="18130031" disabled/>
                                        </td>
                                        <td class="itdisplay_name"><input type="text" class="form-control"
                                                                          value="Mai Huỳnh Phước Đạt"/>
                                        </td>
                                        <td class="itemail">
                                            <input type="text" class="form-control"
                                                                   value="18130031@st.hcmuaf.edu.vn"/>
                                        </td>
                                        <td class="itgroup_name">
                                            <div class="group-user">
                                                <div class="group-selbox">
                                                </div>
                                            </div>
                                        </td>
                                        <td class="text-center ituser_status">
                                            <select class="ituser_status form-control">
                                                <option
                                                    value="1" selected="selected">
                                                    Hoạt động
                                                </option>
                                                <option
                                                    value="0" >
                                                    Tạm dừng
                                                </option>
                                            </select>
                                        </td>
                                        <td class="text-center"><i class="fa fa-floppy-o" title="Lưu"
                                                                   onclick="cms_save_item_user( 26 )"
                                                                   style="color: #EC971F; cursor: pointer; margin-right: 10px;"></i><i
                                                onclick="cms_undo_item( 26 )" title="Hủy"
                                                class="fa fa-undo"
                                                style="color: green; cursor: pointer; margin-right: 5px;"></i></td>
                                    </tr>
                                
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
