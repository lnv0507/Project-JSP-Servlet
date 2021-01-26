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


function submit() {
    var fullname = document.getElementById("fullname");
    var email = document.getElementById("email");
    var phone = document.getElementById("phone");
    if (document.getElementById("name").value == "") {
        fullname.style.border = "solid 5px red";
        status = false;

    } else {
        fullname.style.border = "solid 5px green";
        status = true;
    }
    if (document.getElementById("emailInput").value == "") {
        email.style.border = "solid 5px red";
        status = false;

    } else {
        email.style.border = "solid 5px green";
        status = true;
    }
    if (document.getElementById("phoneInput").value == "") {
        phone.style.border = "solid 5px red";
        status = false;

    } else {
        phone.style.border = "solid 5px green";
        status = true;
    }
}


// function menubar() {

//     let hover = document.getElementById('menu-item');
//     if (hover.style.display === 'none') {
//         hover.style.display = 'block';
//     } else {
//         hover.style.display = 'none';
//     }
// }
// SEARCH
$(document).ready(function () {


//     $("#sliderShuffle").cycle({
//         next: '#next',
//         prev: '#prev'
//     });

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

////////////////////////////

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


    //------------------------
    $(function () {
        $(".topbar ul li ").click(function () {
            $(".topbar ul li ").not(this).find("ul ").slideUp();
            $(this).find("ul ").slideToggle();
        });
        $(".topbar ul li ul li, productCategories ul li .megamenu ").click(function (e) {
            e.stopPropagation();
        });
        $(".productCategories ul li ").click(function () {
            $(".productCategories ul li ").not(this).find(".megamenu ").hide();
            $(this).find(".megamenu ").toggle();
        });
        $(".otherInfoBody ").hide();
        $(".otherInfoHandle ").click(function () {
            $(".otherInfoBody ").slideToggle();
        });
        $(".signBtn ").click(function () {
            $("body ").css("overflow ", "hidden ");
            $(".loginBox ").slideDown();
        });
        $(".closeBtn ").click(function () {
            $("body ").css("overflow ", "visible ");
            $(".loginBox ").slideUp();
        });
        $(".productViewBtn ").click(function (e) {
            e.preventDefault();
            $("body ").css("overflow ", "hidden ");
            $(".productViewBox ").slideDown();
        });
        $(".productViewBox-closeBtn ").click(function () {
            $("body ").css("overflow ", "visible ");
            $(".productViewBox ").slideUp();
        });

        // $(".sp-wrap ").smoothproducts();
    });

    //////////////
    $(".step").click(function () {
        $(this).addClass("active").prevAll().addClass("active");
        $(this).nextAll().removeClass("active");
    });

    $(".step01").click(function () {
        $("#line-progress").css("width", "3%");
        $(".discovery").addClass("active").siblings().removeClass("active");
    });

    $(".step02").click(function () {
        $("#line-progress").css("width", "25%");
        $(".strategy").addClass("active").siblings().removeClass("active");
    });

    $(".step03").click(function () {
        $("#line-progress").css("width", "50%");
        $(".creative").addClass("active").siblings().removeClass("active");
    });

    $(".step04").click(function () {
        $("#line-progress").css("width", "75%");
        $(".production").addClass("active").siblings().removeClass("active");
    });

    $(".step05").click(function () {
        $("#line-progress").css("width", "100%");
        $(".analysis").addClass("active").siblings().removeClass("active");
    });
    var modal = document.getElementById("myModal");

// Get the <span> element that closes the modal
    var span = document.getElementsByClassName("close")[0];


    $('.sp-current-big').click(function () {
        modal.style.display = "block";
        $('#popup').load("image.jsp");
    });
    $('.sp-current-big2').click(function () {
        modal.style.display = "block";
        $('#popup').load("imagelist.jsp");
    });
    span.onclick = function () {
        modal.style.display = "none";
    };
    window.onclick = function (event) {
        if (event.target == modal) {
            modal.style.display = "none";
        }
    };


    var modall = document.getElementById("myModal2");

// Get the <span> element that closes the modal
    var spann = document.getElementsByClassName("closes")[0];


    $('.click_doimk').click(function () {
        modall.style.display = "block";
        $('#popupp').load("/ChangePassController");
    });
    spann.onclick = function () {
        modall.style.display = "none";
    };
    window.onclick = function (event) {
        if (event.target == modall) {
            modall.style.display = "none";
        }
    };

    //search
    // $('btn-search').click(function () {
    //     var search = document.getElementById("search");
    //     var index = document.getElementById("index");
    //     $.ajax({
    //         url: 'SearchProduct',
    //         method: 'GET',
    //         data: {search: search, index: index},
    //         sucess: function (data){
    //             $('.test').load('SearchProduct');
    //         }
    //
    //     });
    // });

    // jquery hien thi thong tin

    // $('#helloUser').onclick(function () {
    //     thongtin.style.display = "block";
    // });

});
// tạo jquery cho sản phẩm ------------------------
//---------------------------------------------

