function search() {
    let search = document.getElementsByClassName('search');

    if (search) {
        document.getElementById('input-search').style.display = 'block';
        document.getElementById('mainmenu').style.display = 'none';
    }


}

function searchOut() {
    let search = document.getElementsByClassName('search');
    if (search) {
        document.getElementById('input-search').style.display = 'none';
        document.getElementById('mainmenu').style.display = 'block';
    }
}

function signIn() {
    let name = document.getElementById('user');
    let pass = document.getElementById('pass');
    let passRe = document.getElementById('passRepeat');
    let email = document.getElementById('email');
    if (name.value == "") {
        name.style.border = 'solid 1px red';
    } else {
        name.style.border = 'solid 1px green';
    }
    if (pass.value == "") {
        pass.style.border = 'solid 1px red';
    } else {
        pass.style.border = 'solid 1px green';
    }
    if (passRe.value == "") {
        passRe.style.border = 'solid 1px red';
    } else {
        passRe.style.border = 'solid 1px green';
    }
    if (email.value == "") {
        email.style.border = 'solid 1px red';
    } else {
        email.style.border = 'solid 1px green';
    }


}
document.getElementById('check').onclick = function(e) {
    if (check.checked) {
        return true;
    } else {
        alert('Bạn Có Muốn Lưu Đăng Nhập')
    }
}