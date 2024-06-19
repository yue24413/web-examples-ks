$(document).ready(function () {
    //判断是否存在ul
    $(".wc-menu li:has(ul)").hover(function () {
        //$(this) 代表.navmenu li
        $(this).children("a").addClass("move");
        if ($(this).find("li").length > 0) {
            //显示下拉菜单
            $(this).children("div").stop(true, false).show();
        }
    }, function () {
        $(this).children("a").removeClass("move");
        //隐藏下拉菜单
        $(this).children("div").stop(true, false).hide();
    });
});



if ($(".right-nr table").length > 0) {
    $.each($(".right-nr table"), function (k, v) {
        $(v).removeAttr("style");
        $(v).wrap("<div class='table-responsive'></div>");
    });
}




var w = $(window).width();
if (w > 991) {
    $(".side-nav-panel").show();
}

$(window).resize(function () {
    w = $(window).width();
    if (w > 991) {
        $(".side-nav-panel").show();
    }

});

$(".nav_name").click(function () {
    $(".side-nav-panel").slideToggle(150);
});



$(document).ready(function () {
    //判断是否存在ul
    $(".ny-nav-ul li:has(ul)").hover(function () {
        //$(this) 代表.navmenu li
        $(this).children("a").addClass("move");
        if ($(this).find("li").length > 0) {
            //显示下拉菜单
            $(this).children("ul").stop(true, true).slideDown("slow")
        }
    }, function () {
        $(this).children("a").removeClass("move");
        //隐藏下拉菜单
        $(this).children("ul").stop(true, true).slideUp("slow")
    });
});

