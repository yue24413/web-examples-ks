<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<jsp:useBean id="allTeachers" scope="request" type="java.util.List<com.entity.New>"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <c:url var="base" value="/"/>
    <base href="${base}">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0">
    <meta name="renderer" content="webkit">
    <title>首页 - 东北林业大学软件工程专业</title>
    <meta name="keywords" content="东北林业大学软件工程专业" />
    <meta name="description" content="东北林业大学软件工程专业" />
    <link href="Assets/css/web/swiper.min.css" rel="stylesheet" />
    <link href="Assets/css/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
    <link href="Assets/css/web/animated-border.min.css" rel="stylesheet" />
    <link href="Assets/css/web/animate.css" rel="stylesheet" />

    <link href="Assets/css/web/vendors.css" rel="stylesheet" />
    <link href="Assets/css/web/offcanvas.css" rel="stylesheet">

    <link href="//unpkg.com/layui@2.9.13/dist/css/layui.css" rel="stylesheet">
    <link href="Assets/css/web/common.css" rel="stylesheet" />
    <link href="Assets/css/web/index.css" rel="stylesheet" />
    <link href="Assets/css/web/webpager.css" rel="stylesheet" />
    <link rel="stylesheet" href="Assets/css/web/teachers.css">
</head>
<body>
<div class="box">
    <div class="search-box hidden-xs hidden-sm hidden-md">
        <div class="container">
            <h2>搜索</h2>
            <div class="search-form">
                <input type="text" name="Search" class="form-text" placeholder="输入关键词..." id="search-input" autocomplete="off">
                <button type="button" class="form-submit"><img src="Assets/images/searchup.png" class="searchup"></button>
            </div>
            <div class="close">
                关闭✕
            </div>
        </div>
    </div>
    <!-- nav导航开始 -->
    <nav class="header navbar navbar-default visible-xs visible-sm visible-md ">
        <!--大屏头部-->
        <div class="navbar-header ">
            <div class="container">
                <div class="row">
                    <a href="" class=" logo1">
                        <img src="Assets/images/logodouble.png" id="img" class="img-responsive">
                    </a>
                    <a href="#mnmd-offcanvas" class="offcanvas-menu-toggle is-active offcanvas-header-btn js-mnmd-offcanvas-toggle">
                        <img src="Assets/images/unfoldIcon.png" class="iconfont icon-unfold mdicon--last hidden-xs">
                        <img src="Assets/images/unfoldIcon.png" class="iconfont icon-unfold visible-xs-inline-block">
                    </a>
                </div>
            </div>
        </div>
    </nav>
    <div id="mnmd-offcanvas" class="mnmd-offcanvas js-mnmd-offcanvas js-perfect-scrollbar">
        <div class="mnmd-offcanvas__title">
            <h2 class="site-logo">
                <a href="/">
                    <img src="Assets/images/logodouble.png" alt="">
                </a>
            </h2>
            <ul class="social-list list-horizontal">
            </ul>
            <a href="#mnmd-offcanvas" class="mnmd-offcanvas-close js-mnmd-offcanvas-close" aria-label="Close"><span aria-hidden="true">&#10005;</span></a>
        </div>
        <div class="mnmd-offcanvas__section mnmd-offcanvas__section-navigation">
            <div id="offcanvas-menu" class="menu-main-menu-container">
                <ul class="navigation navigation--offcanvas">
                    <li class="menu-item"><a href="List/HomePage.html" target="_self">首页</a></li>
                    <li class="menu-item menu-item-has-children "><a href="List/HomePage.html" target="_self">专业概况</a>
                        <ul class="sub-menu" style="display: block;">
                            <li class="menu-item"><a target="_self" href="List/HomePage.html">欢迎辞</a></li>
                            <li class="menu-item"><a target="_self" href="List/HomePage.html">专业简介</a></li>
                        </ul>
                    </li>
                    <li class="menu-item menu-item-has-children "><a href="allTeachers" target="_self">师资队伍</a>
                        <ul class="sub-menu" style="display: block;">
                            <li class="menu-item"><a target="_self" href="">杰出人才</a></li>
                            <li class="menu-item"><a target="_self" href="">青年人才</a></li>
                            <li class="menu-item"><a target="_self" href="allTeachers">教师名录</a></li>
                            <li class="menu-item"><a target="_self" href="">博士后</a></li>
                            <li class="menu-item"><a target="_self" href="">荣退教师</a></li>
                            <li class="menu-item"><a target="_self" href="">人才招聘</a></li>
                        </ul>
                    </li>
                    <li class="menu-item menu-item-has-children "><a href="" target="_self">科学研究</a>
                        <ul class="sub-menu" style="display: block;">
                            <li class="menu-item"><a target="_self" href="">科研概况</a></li>
                            <li class="menu-item"><a target="_self" href="">研究方向</a></li>
                            <li class="menu-item"><a target="_self" href="">科研基地</a></li>
                            <li class="menu-item"><a target="_self" href="">科研成果</a></li>
                        </ul>
                    </li>
                    <li class="menu-item menu-item-has-children "><a href="" target="_self">人才培养</a>
                        <ul class="sub-menu" style="display: block;">
                            <li class="menu-item"><a target="_self" href="">本科生培养</a></li>
                            <li class="menu-item"><a target="_self" href="">研究生培养</a></li>
                            <li class="menu-item"><a target="_self" href="">教学获奖</a></li>
                            <li class="menu-item"><a target="_self" href="">教学基地</a></li>
                        </ul>
                    </li>
                    <li class="menu-item menu-item-has-children "><a href="" target="_self">校友会</a>
                        <ul class="sub-menu" style="display: block;">
                            <li class="menu-item"><a target="_self" href="">校友资讯</a></li>
                            <li class="menu-item"><a target="_self" href="">校友服务</a></li>
                            <li class="menu-item"><a target="_self" href="">校友风采</a></li>
                        </ul>
                    </li>
                    <li class="menu-item menu-item-has-children "><a href="" target="_self">党建工作</a>
                        <ul class="sub-menu" style="display: block;">
                            <li class="menu-item"><a target="_self" href="">党总支概况</a></li>
                            <li class="menu-item"><a target="_self" href="">支部风采</a></li>
                            <li class="menu-item"><a target="_self" href="">党建活动</a></li>
                        </ul>
                    </li>
                    <li class="menu-item  "><a href="" target="_self">联系我们</a></li>
                </ul>


            </div>
        </div>

    </div>
    <!-- end-->
    <div class="bg1">
        <div class="topp hidden-xs hidden-sm hidden-md">
            <div class="container container2">
                <div class="row">
                    <div class="logo col-lg-5 col-md-5  animated  fadeInLeft">
                        <a href=""><img src="Assets/images/logodouble.png" /></a>
                    </div>
                    <div class="top-tright text-right  col-lg-7 col-md-7 pos animated fadeInRight">
                        <div class="top-trtop">
                            <a class="search-btn "><img src="Assets/images/search.png" /></a>
                        </div>
                        <!--top-trtop end-->
                        <div class="wc-menu ">

                            <ul>
                                <li><a href="List/HomePage.html">首页</a></li>
                                <li><a data-id="" target="_self" href="List/HomePage.html" data-url="">专业概况</a>
                                    <div class="ernav" cut="13em">
                                        <img src="" cut="13em" />
                                        <ul>
                                            <li><a target="_self" href="List/HomePage.html" data-url="">欢迎辞</a></li>
                                            <li><a target="_self" href="List/HomePage.html" data-url="">专业简介</a></li>
                                            <li><a target="_self" href="" data-url="">专业领导</a></li>
                                            <li><a target="_self" href="" data-url="">机构设置</a></li>
                                            <li><a target="_self" href="" data-url="">历任领导</a></li>
                                        </ul>
                                    </div>
                                </li>
                                <li>
                                    <a target="_self" href="allTeachers" data-url="">师资队伍</a>

                                    <div class="ernav" cut="13em">
                                        <img src="" cut="13em" />
                                        <ul>
                                            <li><a target="_self" href="" data-url="">杰出人才</a></li>
                                            <li><a target="_self" href="" data-url="">青年人才</a></li>
                                            <li><a target="_self" href="" data-url="allTeachers">教师名录</a></li>
                                            <li><a target="_self" href="" data-url="">博士后</a></li>
                                            <li><a target="_self" href="" data-url="">荣退教师</a></li>
                                            <li><a target="_self" href="" data-url="">人才招聘</a></li>
                                        </ul>
                                    </div>
                                </li>
                                <li>
                                    <a target="_self" href="" data-url="">科学研究</a>

                                    <div class="ernav" cut="13em">
                                        <img src="" cut="13em" />
                                        <ul>
                                            <li><a target="_self" href="" data-url="">科研概况</a></li>
                                            <li><a target="_self" href="" data-url="">研究方向</a></li>
                                            <li><a target="_self" href="" data-url="">科研基地</a></li>
                                            <li><a target="_self" href="" data-url="">科研成果</a></li>
                                        </ul>
                                    </div>
                                </li>
                                <li>
                                    <a target="_self" href="" data-url="">人才培养</a>

                                    <div class="ernav" cut="13em">
                                        <img src="" cut="13em" />
                                        <ul>
                                            <li><a target="_self" href="" data-url="">本科生培养</a></li>
                                            <li><a target="_self" href="" data-url="">研究生培养</a></li>
                                            <li><a target="_self" href="" data-url="">教学获奖</a></li>
                                            <li><a target="_self" href="" data-url="">教学基地</a></li>
                                        </ul>
                                    </div>
                                </li>
                                <li>
                                    <a target="_self" href="" data-url="">校友会</a>

                                    <div class="ernav" cut="13em">
                                        <img src="" cut="13em" />
                                        <ul>
                                            <li><a target="_self" href="" data-url="">校友资讯</a></li>
                                            <li><a target="_self" href="" data-url="">校友服务</a></li>
                                            <li><a target="_self" href="" data-url="">校友风采</a></li>
                                        </ul>
                                    </div>
                                </li>
                                <li>
                                    <a target="_self" href="" data-url="">党建工作</a>

                                    <div class="ernav" cut="13em">
                                        <img src="" cut="13em" />
                                        <ul>
                                            <li><a target="_self" href="" data-url="">党总支概况</a></li>
                                            <li><a target="_self" href="" data-url="">支部风采</a></li>
                                            <li><a target="_self" href="" data-url="">党建活动</a></li>
                                        </ul>
                                    </div>
                                </li>
                                <li>
                                    <a target="_self" href="" data-url="">联系我们</a>

                                </li>
                            </ul>
                        </div>
                        <!--wc-menu  end-->
                        <div class="clearfix"></div>
                    </div>
                    <!--top-tright end-->
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
        <!--topp end-->


        <section class="articles">
            <article>
                <div class="article-wrapper">
                    <figure>
                        <img src="https://ccec.nefu.edu.cn/__local/0/13/A7/E674AC69D2A77D3F4AAE70A54B5_3E40B0CF_8C3E.jpg?e=.jpg" alt="" />
                    </figure>
                    <div class="article-body">
                        <h2>王波</h2>
                        <p>讲师</p>
                        <a href="List/BO.html" class="read-more">
                            Read more <span class="sr-only">about this is some title</span>
                            <svg xmlns="http://www.w3.org/2000/svg" class="icon" viewBox="0 0 20 20" fill="currentColor">
                                <path fill-rule="evenodd" d="M12.293 5.293a1 1 0 011.414 0l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414-1.414L14.586 11H3a1 1 0 110-2h11.586l-2.293-2.293a1 1 0 010-1.414z" clip-rule="evenodd" />
                            </svg>
                        </a>
                    </div>
                </div>
            </article>

            <c:forEach items="${allTeachers }" var="t" varStatus="v">
            <article>
                <div class="article-wrapper">
                    <figure>
                        <img src="https://picsum.photos/192/257" alt="" />
                    </figure>
                    <div class="article-body">
                        <h2>${t.name}</h2>
                        <p>
                            ${t.title}
                        </p>
                        <a href="#" class="read-more">
                            Read more <span class="sr-only">about this is some title</span>
                            <svg xmlns="http://www.w3.org/2000/svg" class="icon" viewBox="0 0 20 20" fill="currentColor">
                                <path fill-rule="evenodd" d="M12.293 5.293a1 1 0 011.414 0l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414-1.414L14.586 11H3a1 1 0 110-2h11.586l-2.293-2.293a1 1 0 010-1.414z" clip-rule="evenodd" />
                            </svg>
                        </a>
                    </div>
                </div>
            </article>
            </c:forEach>

            <article>
                <div class="article-wrapper">
                    <figure>
                        <img src="https://picsum.photos/192/257" alt="" />                    </figure>
                    <div class="article-body">
                        <h2>This is some title</h2>
                        <p>
                        </p>
                        <a href="#" class="read-more">
                            Read more <span class="sr-only">about this is some title</span>
                            <svg xmlns="http://www.w3.org/2000/svg" class="icon" viewBox="0 0 20 20" fill="currentColor">
                                <path fill-rule="evenodd" d="M12.293 5.293a1 1 0 011.414 0l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414-1.414L14.586 11H3a1 1 0 110-2h11.586l-2.293-2.293a1 1 0 010-1.414z" clip-rule="evenodd" />
                            </svg>
                        </a>
                    </div>
                </div>
            </article>
        </section>

    </div>



<div class="footer pos">
    <div class="f-con">
        <!--f-con end-->
        <div class="container fbg" cut="55em">
            <div class="row">
                <div class="f-left col-lg-5 col-md-5 col-sm-5">
                    <a href=""><img src="Assets/images/logodouble.png" /></a>
                </div>
                <!--f-left end-->

                <div class="f-mid col-lg-7 col-md-7 col-sm-7">
                    <div class="clearfix">&nbsp;</div>

                    <ul>
                        <li><img src="Assets/images/fic1.png" /> 地址：哈尔滨市香坊区和兴路26号 成栋10楼</li>
                        <li><img src="Assets/images/fic3.png" />&nbsp;电话：###-########</li>
                        <li><img src="Assets/images/fic2.png" /> 传真：###-########</li>
                        <li><img src="Assets/images/fic4.png" /> 邮编：#####</li>
                        <li class="layui-btn-container"><img src="Assets/images/login.png" alt="管理员登录"><button type="button" class="layui-btn " style="  color:white;
    border: none;background: 0 0" lay-on="test-page-custom">管理员登录
                        </button></li>
                    </ul>
                </div>
                <!--f-mid end-->
            </div>
            <div class="wc-copy">
                <p>版权所有@东北林业大学软件工程专业  </p>
            </div>
        </div>
    </div>
</div>
<!--footer end-->
</div>
<!-- box End-->


<script src="Assets/js/jquery.min.js"></script>
<script src="Assets/js/scrollToTop.js" type="text/javascript"></script>
<script src="Assets/js/bootstrap.min.js"></script>
<script src="Assets/js/bootstrap-dropdown-on-hover.js"></script>
<script src="Assets/js/index.js"></script>
<script src="Assets/js/nav.js"></script>

<script src=Assets/js/scripts.js"></script>
<script>
    $(function () {
        //置顶
        scrolltotop.init()
    })
</script>
<script>
    function BlockPage() {
        $.blockUI({
            message: $("#msg").html(),
            css: { border: '1px solid #ccc', padding: '5px', left: (($(window).width() - 135) / 2 + 'px'), top: (($(window).height() - 44) / 2 + 'px'), width: '135px' }
        });
    }
    function UnBlockPage() { setTimeout(function () { $.unblockUI(); }, 600); }
</script>
</script>

</body>
</html>