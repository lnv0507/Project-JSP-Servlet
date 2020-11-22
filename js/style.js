// function search() {
//     let search = document.getElementsByClassName('search');

//     if (search) {
//         document.getElementById('input-search').style.display = 'block';
//         document.getElementById('mainmenu').style.display = 'none';
//     }



// }

// function searchOut() {
//     let search = document.getElementsByClassName('search');
//     if (search) {
//         document.getElementById('input-search').style.display = 'none';
//         document.getElementById('mainmenu').style.display = 'block';
//     }
// }


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

$(document).ready(function() {
    $('.search').hover(function() {
        $('#input-search').fadeToggle(300);
        $('#mainmenu').toggle(1000);
    });
});


// function menubar() {

//     let hover = document.getElementById('menu-item');
//     if (hover.style.display === 'none') {
//         hover.style.display = 'block';
//     } else {
//         hover.style.display = 'none';
//     }
// }
$("#sliderShuffle ").cycle({
    next: '#next',
    prev: '#prev'
});

$('.owl-carousel').owlCarousel({
    items: 4,
    loop: true,
    margin: 15,
    autoplay: true,
    autoplayTimeout: 3000, //3 Second
    nav: true,
    responsiveClass: true,
    responsive: {
        0: {
            items: 1,
            nav: true
        },
        600: {
            items: 3,
            nav: true
        },
        1000: {
            items: 4,
            nav: true
        }
    }

});
// tạo jquery cho sản phẩm ------------------------
$(document).ready(function() {
    $(".topbar ul li ").click(function() {
        $(".topbar ul li ").not(this).find("ul ").slideUp();
        $(this).find("ul ").slideToggle();
    });
    $(".topbar ul li ul li, productCategories ul li .megamenu ").click(function(e) {
        e.stopPropagation();
    });
    $(".productCategories ul li ").click(function() {
        $(".productCategories ul li ").not(this).find(".megamenu ").hide();
        $(this).find(".megamenu ").toggle();
    });
    $(".otherInfoBody ").hide();
    $(".otherInfoHandle ").click(function() {
        $(".otherInfoBody ").slideToggle();

        // $(".otherInfoHandle ").text(function(i, oldText) {
        //     return oldText === 'XEM NHIỀU HƠN' ? 'XEM ÍT HƠN' : oldText;
        // });
        var $text = $('.otherInfoHandle');
        if ($text.text() == 'XEM NHIỀU HƠN') {
            $('.otherInfoHandle').text('XEM ÍT HƠN');
        } else if ($text.text() == 'XEM ÍT HƠN') {
            $('.otherInfoHandle').text('XEM NHIỀU HƠN');
        }

    });




    $(".signBtn ").click(function() {
        $("body ").css("overflow ", "hidden ");
        $(".loginBox ").slideDown();
    });
    $(".closeBtn ").click(function() {
        $("body ").css("overflow ", "visible ");
        $(".loginBox ").slideUp();
    });
    $(".productViewBtn ").click(function(e) {
        e.preventDefault();
        $("body ").css("overflow ", "hidden ");
        $(".productViewBox ").slideDown();
    });
    $(".productViewBox-closeBtn ").click(function() {
        $("body ").css("overflow ", "visible ");
        $(".productViewBox ").slideUp();
    });

    $(".sp-wrap ").smoothproducts();
});
//---------------------------------------------