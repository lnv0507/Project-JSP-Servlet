//Đổi mật khẩu
$('#btn-changepass').on('click', function () {
    $(this).hide();
    $('.form-hide').slideDown('200');
});

$('#btn-cancel-pass').on('click', function () {
    $('.form-hide').slideUp('200');
    $('#btn-changepass').show();
});
$('.new-password').on('keyup', function () {
    var renewpass = $.trim($('#renewpass').val());
    var newpass = $.trim($('#newpass').val());
    if (renewpass == newpass) {
        $('#newpass-wrong').hide();
    } else {
        $('#newpass-wrong').show();
    }
});
$('.ajax-success').popover('show');
function cms_change_password() {
    "use strict";
    var oldpass = $.trim($('#oldpass').val());
    var newpass = $.trim($('#newpass').val());
    var renewpass = $.trim($('#renewpass').val());
    if(newpass!=renewpass){
        alert('Mật khẩu mới không giống nhau, Vui lòng nhập lại');
    }
}

//Chi tiết đơn hàng
function cms_show_detail_order($id) {
    $('#tr-detail-order-' + $id).toggle(200);
    $('.i-detail-order-' + $id).toggle();
}

//Chi Tiet Phieu Nhap của nhập kho
function cms_show_detail_input($id) {
    $('#tr-detail-input-' + $id).toggle(200);
    $('.i-detail-input-' + $id).toggle();
}
// xoa phieu nhap của nhập kho
function cms_del_temp_import($id, $page) {
    var conf = confirm('Bạn chắc chắn muốn xóa phiếu nhập này?');

}
//Chỉnh sửa nhân viên
function cms_edit_usitem(id) {
    $('tr.tr-item-' + id).hide();
    cms_selboxgroup();
    $('tr.edit-tr-item-' + id).show();
}
function cms_selboxgroup() {
    "use strict";
    var $param = {
        'type': 'POST',
        'url': 'ajax/cms_selboxgroup',
        'data': null,
        'callback': function (data) {
            if (data != '0') {
                $('.group-user .group-selbox').html(data);
                cms_upgroup();
            } else {
                $('.group-user .group-selbox').html($html);
            }
        }
    };
    cms_adapter_ajax($param);
}
function cms_upgroup() {
    "use strict";
    var $param = {
        'type': 'POST',
        'url': 'ajax/cms_upgroup',
        'data': null,
        'callback': function (data) {
            if (data != '0') {
                $('#functions .table-group tbody').html(data);
            } else {
                var $html = '<tr><td colspan="3" class="text-center">Không có Group để hiển thị</td> </tr>';
                $('#functions .table-group tbody').html($html);
            }
        }
    };
    cms_adapter_ajax($param);
}
function cms_adapter_ajax($param) {
    $.ajax({
        url: $param.url,
        type: $param.type,
        data: $param.data,
        async: true,
        success: $param.callback
    });
}
// Xóa nhân viên
function cms_del_usitem($id) {
    var conf = confirm('Bạn chắc chắn muốn xóa!');
}

// Trở Lại nhân Viên
function cms_undo_item(id) {
    $('tr.edit-tr-item-' + id).hide();
    $('tr.tr-item-' + id).show();
}
// Lưu Nhập Kho Create;
function cms_save_import(type) {
    if ($('tbody#pro_search_append tr').length == 0) {
        $('.ajax-error-ct').html('Xin vui lòng chọn ít nhất 1 sản phẩm cần xuất trước khi lưu hóa đơn nhập. Xin cảm ơn!').parent().fadeIn().delay(1000).fadeOut('slow');
    } else {
        $store_id = $('#store-id').val();
        $supplier_id = $('#search-box-mas').attr('data-id');
        $date = $('#date-order').val();
        $note = $('#note-order').val();
        $payment_method = $("input:radio[name ='method-pay']:checked").val();
        $discount = cms_decode_currency_format($('input.discount-import').val());
        $khachdua = cms_decode_currency_format($('.customer-pay').val());
        $detail = [];
        $('tbody#pro_search_append tr').each(function () {
            $price = cms_decode_currency_format($(this).find('input.price-order').val());
            $id = $(this).attr('data-id');
            $value_input = $(this).find('input.quantity_product_import').val();
            $detail.push(
                {id: $id, quantity: $value_input, price: $price}
            );
        });
        if (type == "0")
            $input_status = 0;
        else
            $input_status = 1;

        $data = {
            'data': {
                'supplier_id': $supplier_id,
                'input_date': $date,
                'notes': $note,
                'payment_method': $payment_method,
                'discount': $discount,
                'payed': $khachdua,
                'detail_input': $detail,
                'input_status': $input_status
            }
        };
        var $param = {
            'type': 'POST',
            'url': 'import/cms_save_import/' + $store_id,
            'data': $data,
            'callback': function (data) {
                if (data == '0') {
                    $('.ajax-error-ct').html('Oops! This system is errors! please try again.').parent().fadeIn().delay(1000).fadeOut('slow');
                } else {
                    if (type == 1) {
                        $('.ajax-success-ct').html('Đã lưu thành công phiếu nhập.').parent().fadeIn().delay(1000).fadeOut('slow');
                        setTimeout(function () {
                            $('.btn-back').delay('1000').trigger('click');
                        }, 1000);
                    } else if (type == 0) {
                        $('.ajax-success-ct').html('Đã lưu thành công phiếu nhập tạm.').parent().fadeIn().delay(1000).fadeOut('slow');
                        cms_vsell_import();
                    } else {
                        cms_print_input_in_create(3, data);

                    }
                }
            }
        };
        cms_adapter_ajax($param);
    }
}
