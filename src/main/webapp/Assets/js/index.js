$(function () {
    let window_w = $(window).width(); // Window Width
    let window_h = $(window).height(); // Window Height
    let window_s = $(window).scrollTop(); // Window Scroll Top
    // On Resize
    $(window).resize(function () {//窗口大小改变
        window_w = $(window).width();
        window_h = $(window).height();
        window_s = $(window).scrollTop();
    });
    // On Scroll
    $(window).scroll(function () {
        window_s = $(window).scrollTop();
    });

    // 导航动画
    $("#nav-animate").bootstrapDropdownOnHover({
        mouseOutDelay: 200,
        responsiveThreshold: 973,
    });
    // if ($(window).width() > 991) {
    //     $(document).off('click.bs.dropdown.data-api');
    //     clickOpen();
    // };
    // $(window).resize(function () {
    //     if ($(window).width() > 991) {
    //         $(document).off('click.bs.dropdown.data-api');
    //         clickOpen();
    //     };
    // });
    // if ($(window).width() < 992) {
    //     clickOpenMible();
    // }
    // $(window).resize(function () {
    //     if ($(window).width() < 992) {
    //         clickOpenMible();
    //     };
    // });
    //
    // function clickOpen() {
    //     $(".header-nav .dropdown-toggle").click(function () {
    //         const url = $(this).data('href');
    //         window.location.href = url;
    //     });
    // }
    //
    // function clickOpenMible() {
    //     $(".header-nav .dropdown-toggle span").click(function () {
    //         const url = $(this).parent('.dropdown-toggle').data('href');
    //         window.location.href = url;
    //     });
    // }
    //
    // $(".header-top .menu-top li").hover(function () {
    //     const hideBox = $(this).children(".img-box");
    //     if (hideBox.css("display") == "none") {
    //         hideBox.slideDown("300");
    //     } else {
    //         hideBox.slideUp("300");
    //     }
    // });

    // 点击显示隐藏
    // $(".slide-door .accordion-title").click(function () {
    //     const hideBox = $(this).next(".accordion-content");
    //     if (hideBox.css("display") == "none") {
    //         hideBox.slideDown("300");
    //         $(this).addClass('open');
    //     } else {
    //         hideBox.slideUp("300");
    //         $(this).removeClass('open');
    //     }
    // });

//顶部搜索
    search(); //搜索框
    function search() {
        $('.search-btn').click( function () {
            if ($('.search-box').height() == 210) {
                $('.search-box').animate({
                    height: '0',
                    opacity: '0',
                })
                $('header').animate({
                    top: '0',
                })
            } else {
                $('.search-box').animate({
                    height: '210',
                    opacity: '1',
                })
                $('header').animate({
                    top: '210',
                })
            }
        })
        $(".search-box .close").on('click', function () {
            $('.search-box').animate({
                height: '0',
                opacity: '0',
            })
            $('header').animate({
                top: '0',
            })
        })
        $("body>*").click(function(){
            $('.search-box').click(() =>{return false})
            if($('.search-box').height() == 210){
                $('.search-box').animate({
                    height:'0',
                    opacity: '0',
                })
                $('header').animate({
                    top:'0',
                })
            }
        })
    }

    //手机设备的简单适配
    const treeMobile = $('.site-tree-mobile'),
        shadeMobile = $('.site-mobile-shade');
    const _body = $("body");
    treeMobile.on('click', function () {
        if (!_body.hasClass('site-mobile')) {
            _body.addClass('site-mobile');
        }
        else {
            _body.removeClass('site-mobile');
        }
    });
    const dropdownToggleIcon = $('.dropdown-toggle .fa');
    const backIcon = $('.dropdown-menu .back');
    const closeIcon = $('.closeIcon');
    const closeIcon2 = $('.dropdown-menu .closeIcon');
    dropdownToggleIcon.on('click', function () {
        const dropdownMenu = $(this).parent('.dropdown-toggle').next('.dropdown-menu');
        !dropdownMenu.hasClass('show') ? dropdownMenu.addClass('show'): dropdownMenu.removeClass('show');
        shadeMobile.click(function () {
            _body.removeClass('site-mobile');
        });
        backIcon.click( function () {
            $(this).parents('.dropdown-menu').removeClass('show');
        });
        closeIcon2.click( function () {
            dropdownMenu.removeClass('show');
        });
    });
    shadeMobile.click( function () {
        _body.removeClass('site-mobile');
    });
    closeIcon.click(function () {
        _body.removeClass('site-mobile');
    });
    //手机端--用户手指第一次接触屏幕时触发
    $('.site-mobile-shade,.dropdown-menu,.nav').on("touchstart", function (e) {
        //提取触摸点坐标:
        startX = e.originalEvent.changedTouches[0].pageX,
            startY = e.originalEvent.changedTouches[0].pageY;
    });
    $('.site-mobile-shade').on("touchend", function (e) {
        moveEndX = e.originalEvent.changedTouches[0].pageX,
            moveEndY = e.originalEvent.changedTouches[0].pageY,
            X = moveEndX - startX,
            Y = moveEndY - startY;
        //左滑
        if (X > 0) {
            $('.dropdown-menu').removeClass('show');
            _body.removeClass('site-mobile');
        }
    });

    // 固定导航
    const win = $(window);
    const sc = $(document);
    // header
    if ($(window).width() > 991) {
        const headerNav = $(".header-nav");
        if (headerNav.length) {
            var headerNav_offsetTop = headerNav.position().top;
        }
        win.scroll(function () {
            const scTop = sc.scrollTop();
            if (sc.scrollTop() >= headerNav_offsetTop + 120) {
                $(".header").addClass('header-fixed')
            } else if (sc.scrollTop() < headerNav_offsetTop + 120) {
                $(".header").removeClass('header-fixed')
            }
        });
    }
    $(window).scroll(function() {
    	if($(document).scrollTop()>100){
    		$(".head-left").addClass('head-left1');

    	}else{
    		$(".head-left").removeClass('head-left1');
    	}
});

    $(window).resize(function () {
        if ($(window).width() > 991) {
            const headerNav = $(".header-nav");
            if (headerNav.length) {
                const headerNav_offsetTop = headerNav.position().top;
            }
            win.scroll(function () {
                const scTop = sc.scrollTop();
                if (sc.scrollTop() >= headerNav_offsetTop + 120) {
                    $(".header").addClass('header-fixed');

                } else if (sc.scrollTop() < headerNav_offsetTop + 120) {
                    $(".header").removeClass('header-fixed');
                }

            });
        }
    });
    // 侧边栏导航 sidebar-nav
    // 有导航点击展开下级菜单
    $(".sidebar-nav .fa").click(function () {
        const hideBox = $(this).next("ul");
        if (hideBox.css("display") == "none") {
            hideBox.slideDown("300");
            $(this).parents('li').addClass('active');
            $(this).parents('li').siblings().removeClass('active');
            $(this).parents('li').siblings().find('ul').slideUp("300");
        } else {
            hideBox.slideUp("300");
            $(this).parents('li').removeClass('active');
        }
    });

    // ***标签页
    var page_url;
    //初始化URL参数
    InitUrlParms = function () {
        var args = new Object();
        var query = location.search.substring(1);//获取查询串
        var pairs = query.split("&");//在逗号处断开
        for (var i = 0; i < pairs.length; i++) {
            var pos = pairs[i].indexOf('=');//查找name=value
            if (pos == -1) continue;//如果没有找到就跳过
            var argname = pairs[i].substring(0, pos);//提取name
            var value = pairs[i].substring(pos + 1);//提取value
            args[argname] = decodeURIComponent(value);//存为属性
        }
        page_url = args;
    };//封装好的函数，获取从a.html传来的参数type
    InitUrlParms();  

    $(".horizontal-tag .tabs li").click(function () {
        $(this).addClass('active').siblings().removeClass('active');
        const _index = $(this).index();
        $('.horizontal-tag .tab-content .tab-item').eq(_index).addClass('active').siblings().removeClass('active');
    })
    let tabIndex;
    ( page_url["type"] != null) ? tabIndex = page_url["type"] :tabIndex = 0  ;
    //显示指定的tab内容  
    $('.horizontal-tag .tab-content .tab-item').eq(tabIndex).addClass('active').siblings().removeClass('active');
    //tab选项卡高亮  
    $('.horizontal-tag .tabs li').eq(tabIndex).addClass('active').siblings().removeClass('active');
    //如果检测到了有embed就调用播放插件
    // if ($("embed").attr('src')) {
    //     const html = '<iframe style="border:0; margin: 0 auto;" src="/play/index?url=' + $("embed").attr('src') + '" width=600 height=500></iframe>';
    //     $('.video-player').html(html);
    // }


    // sub-nav
    function Body() {
        setTimeout(function () {
            const ul = ".sub-nav ul";
            const wrapper = ".sub-nav";

            const width = $(wrapper).width();

            let totalWidth = 0;
            $(".sub-nav ul li").each(function (index) {
                const current_width = parseInt($(this).width(), 10);
                if (current_width > 0) {
                    totalWidth += current_width;
                }
            });
            totalWidth += 40;
            // ul offset //

            const ul_offset = $(ul).offset();

            const width_differences = totalWidth - width;

            if (width_differences > 0) {
                $('.previous_slider').remove();
                $('.next_slider').remove();
                $(wrapper).append('<div class="previous_slider"><i class="fa fa-angle-left"></i></div>');
                $(wrapper).append('<div class="next_slider"><i class="fa fa-angle-right"></i></div>');

                $(ul).addClass('ul_margin');

                $('.next_slider').click(function () {
                    const ul_offset_next = $(ul).offset();

                    if ((ul_offset_next.left + width_differences - ul_offset.left) < 96) {
                        $(ul).css({
                            'left': -1 * (width_differences) - 40
                        });
                    } else {
                        $(ul).css({
                            'left': '-=96px'
                        });
                    }

                    const ul_css_left_temp = $(ul).css('left');
                    const ul_css_left = ul_css_left_temp.substr(0, ul_css_left_temp.length - 2);

                });

                $('.previous_slider').click(function () {
                    $(ul).css({
                        'left': 0
                    });
                });
            } else {
                $('.previous_slider').remove();
                $('.next_slider').remove();
                $(ul).removeClass('ul_margin');
                $(ul).css({
                    'left': '0'
                });
            }

        }, 500);
    }

    if ($('.program-banner.inner-banner .sub-nav').length > 0) {
        Body();
    }

    Body();
    $(window).resize(function () {
        if ($('.sub-nav').length > 0) {
            $(".sub-nav ul").css({
                'left': '0'
            });
            Body();
        }
    });

});

