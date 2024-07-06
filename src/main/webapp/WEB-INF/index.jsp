<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<jsp:useBean id="allNews" scope="request" type="java.util.List<com.entity.New>"/>
<jsp:useBean id="type1News" scope="request" type="java.util.List<com.entity.New>"/>
<jsp:useBean id="type2News" scope="request" type="java.util.List<com.entity.New>"/>
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
                    <a href="#">
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
        <li class="menu-item"><a href="index.html" target="_self">首页</a></li>
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
    <div class="backView">
        <div class="banbg pos" cut="5em">
            <!--<div class="bbg">
                <img src="Assets/images/ban1.jpg" cut="5em"/>
            </div>-->
            <div class="b-con">
                <div class="container">
                        <div class="b-banner">
                            <div class="swiper-container">
                                <div class="swiper-wrapper pos">
                                    <c:forEach items="${allNews }" var="n" varStatus="v" begin="0" end="4">
                                        <div class="swiper-slide ">
                                            <a href="">
                                                <div class="ban-text">
                                                <h5>${n.name }</h5>
                                                    <p>${n.info}</p>
                                                </div>
                                            <div class="ban-img ">
                                                <div class="ban-img1 pos">
                                                    <img src="Assets/userfiles/images/news/examples.jpg" cut="7em" />
                                                <div class="boredr2" cut="7em"></div>
                                                </div>
                                            </div></a>
                                            <!--ban-img1 end-->
                                            <div class="clearfix"></div>
                                        </div>
                                    </c:forEach>
                                </div>
                                <!-- Add Pagination -->
                                <div class="swiper-pagination swiper-pagination-clickable swiper-pagination-bullets"></div>
                            </div>
                        </div>
                        <!--b-banner end-->
                </div>
            </div>
            <!--b-con end-->
        </div>
        <!--banbg end-->
    </div>
    <!--backView end-->


    <div class="newsbg">
        <div class="container">
            <div class="row">
                <div class="new-left col-lg-8 col-md-8 col-sm-12">
                        <div class="new-top new-top2 ">
                            <span>专业新闻</span>
                            <a href="List/news/allnews.sjp">查看更多</a>
                            <div class="clearfix"></div>
                        </div>
                        <!--new-top end-->
                        <div class="new-leftcon">
                                <div class="news-ban ">
                                    <div class="swiper-container">
                                        <div class="swiper-wrapper pos">
                                            <c:forEach items="${type1News }" var="n" begin="0" end="3">
                                                    <div class="swiper-slide ">
                                                        <a href="">
                                                            <img src="Assets/userfiles/images/kxyj-1.jpg" cut="61em" />
                                                            <div class="ban-text">
                                                                <span>${n.name }</span>
                                                                <p>${n.info}</p>
                                                            </div>
                                                            <i>查看详情</i>
                                                        </a>
                                                    </div>
                                            </c:forEach>
                                        </div>
                                        <!-- Add Pagination -->
                                        <div class="swiper-pagination hidden-lg hidden-md"></div>
                                    </div>
                                </div>
                        </div>
                        <!--new-leftcon end-->
                </div>
                <!--new-left end-->
                <div class="new-right col-lg-4 col-md-4 col-sm-12">
                        <div class="new-top ">
                            <span>通知公告</span>
                            <a href="List/news/type1News.jsp">查看更多</a>
                            <div class="clearfix"></div>
                        </div>
                        <!--new-top end-->
                        <div class="tong-ul">
                                <ul>
                                    <li><a href="" target="_self">
                                        <div class="li-date fl">
                                            <span>03日</span>
                                            <p>03月 </p>
<%--                                        <i>置顶</i>--%>
                                        </div>
                                        <div class="li-tt fr">
                                            <p>招聘启事</p>
                                        </div>
                                        <div class="clearfix"></div>
                                        </a>
                                    </li>
                                    <c:forEach items="${type2News }" var="n" begin="0" end="2">
                                        <li>
                                            <a href="" target="_self">
                                            <div class="li-date fl">
                                                <span>${n.updatedTime.toString().substring(8,10)}日</span>
                                                <p>${n.updatedTime.toString().substring(5,7)}月</p>
                                            </div>
                                            <div class="li-tt fr">
                                                <p>${n.name}</p>
                                            </div>
                                            <div class="clearfix"></div>
                                        </a></li>
                                    </c:forEach>
                                </ul>
                        </div>
                        <!--tong-ul end-->
                </div>
                <!--new-right end-->
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
    <!--newsbg end-->

</div>
<!--bg1 end-->

<div class="bg2">
    <div class="backView backView2">
        <div class="dbg2" cut="5em">
            <!--<div class="dbg">
                <img src="Assets/images/.jpg" cut="5em"/>
            </div>-->
            <div class="d-banner">
                <div class="container">
                        <div class="d-ban pos">
                            <div class="new-top new-top3 ">
                                <span>党建活动</span>
                                <div class="clearfix"></div>
                            </div>
                            <!--/new-top end-->
                            <div class="party-ban">
                                    <div class="swiper-container">
                                        <div class="swiper-wrapper pos">
                                                <div class="swiper-slide ">
                                                    <a href="/Data/View/588" target="_self">
                                                        <div class="ban-text">
                                                            <h5>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</h5>
                                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias ipsa iste similique soluta tempora! At hic provident quis reprehenderit unde.</p>
                                                            <i>查看详情</i>
                                                        </div>
                                                        <div class="ban-img ">
                                                            <div class="ban-img1 pos text-right">
                                                                <img src="" cut="6em" />
                                                                <div class="boredr3" cut="6em">

                                                                </div>

                                                            </div>
                                                            <!--ban-img1 end-->
                                                        </div>
                                                        <div class="clearfix"></div>
                                                    </a>
                                                </div>
                                                <div class="swiper-slide ">
                                                    <a href="/Data/View/564" target="_self">
                                                        <div class="ban-text">
                                                            <h5>Lorem ipsum dolor sit amet.</h5>
                                                            <p style="text-indent:24.0000pt; text-align:justify"><span style="font-size:18px;"><span style="font-family:Microsoft YaHei;"><span style="line-height:150%">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, expedita.</span></span></span></p>

                                                            <i>查看详情</i>
                                                        </div>
                                                        <div class="ban-img ">
                                                            <div class="ban-img1 pos text-right">
                                                                <img src="" cut="6em" />
                                                                <div class="boredr3" cut="6em">

                                                                </div>

                                                            </div>
                                                            <!--ban-img1 end-->
                                                        </div>
                                                        <div class="clearfix"></div>
                                                    </a>
                                                </div>
                                                <div class="swiper-slide ">
                                                    <a href="/Data/View/230" target="_self">
                                                        <div class="ban-text">
                                                            <h5>Lorem ipsum dolor sit amet.</h5>
                                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Excepturi in magnam, nam nesciunt officiis repudiandae totam ut? Expedita obcaecati, temporibus.</p>
                                                            <i>查看详情</i>
                                                        </div>
                                                        <div class="ban-img ">
                                                            <div class="ban-img1 pos text-right">
                                                                <img src="" cut="6em" />
                                                                <div class="boredr3" cut="6em">

                                                                </div>

                                                            </div>
                                                            <!--ban-img1 end-->
                                                        </div>
                                                        <div class="clearfix"></div>
                                                    </a>
                                                </div>
                                        </div>
                                        <!-- Add Pagination -->

                                        <div class="swiper-pagination hidden-lg hidden-md"></div>
                                        <div class="swiper-button-next hidden-sm hidden-xs">
                                            <img src="Assets/images/aright.png" />
                                        </div>
                                        <div class="swiper-button-prev hidden-sm hidden-xs">
                                            <img src="Assets/images/aleft.png" />
                                        </div>
                                    </div>
                            </div>
                            <!--party-ban end-->

                        </div>
                        <!--/d-ban end-->
                </div>
            </div>
            <!--d-banner end-->

        </div>
        <!--/dang end-->
    </div>
    <div class="scientificResearch">
        <div class="container">
            <div class="new-top ">
                <span>科研方向</span>
                <div class="clearfix"></div>
            </div>
            <!--new-top end-->
            <div class="science">
                <div class="row">
                        <div class="science-one col-lg-3 col-md-6 col-sm-6">
                            <div class="science-oneone">
                                <div class="science-top" cut="0.5em">
                                    <a href="" target="_self">
                                        <span>系统软件</span>
                                        <img src="Assets/images/kic1.png" />
                                    </a>
                                </div>
                                <!--science-top end-->
                                <div class="science-ccon">
                                        <ul>
                                            <li><a href="" target="_self" class="">923创新实验室</a></li>
                                            <li><a href="" target="_self" class="">并行与分布式系统实验室</a></li>
                                        </ul>
                                    <div class="science-more">
                                        <a href="" target="_self"><img src="Assets/images/j-more.png" /></a>
                                    </div>
                                </div>
                                <!--science-ccone end-->
                            </div>
                            <!--science-oneone end-->
                        </div>
                        <!--science-one end-->

                        <div class="science-one col-lg-3 col-md-6 col-sm-6">
                            <div class="science-oneone">
                                <div class="science-top" cut="0.5em">
                                    <a href="" target="_self">
                                        <span>工业软件</span>
                                        <img src="Assets/images/kic2.png" />
                                    </a>
                                </div>
                                <!--science-top end-->
                                <div class="science-ccon">
                                        <ul>
                                            <li><a href="" target="_self" class="">信息系统技术实验室</a></li>
                                            <li><a href="" target="_self" class="">925实验室</a></li>
                                            <li><a href="" target="_self" class="">智能软件工程实验室</a></li>
                                        </ul>
                                    <div class="science-more">
                                        <a href="" target="_self"><img src="Assets/images/j-more.png" /></a>
                                    </div>
                                </div>

                                <!--science-ccone end-->
                            </div>
                            <!--science-ccone end-->
                        </div>
                        <!--science-one end-->

                        <div class="science-one col-lg-3 col-md-6 col-sm-6">
                            <div class="science-oneone">
                                <div class="science-top" cut="0.5em">
                                    <a href="" target="_self">
                                        <span>数据服务</span>
                                        <img src="Assets/images/kic3.png" />
                                    </a>
                                </div>
                                <!--science-top end-->
                                <div class="science-ccon">
                                        <ul>
                                            <li><a href="" target="_self" class="">数据服务实验室</a></li>
                                            <li><a href="" target="_self" class="">数字艺术实验室</a></li>
                                        </ul>
                                    <div class="science-more">
                                        <a href="" target="_self"><img src="Assets/images/j-more.png" /></a>
                                    </div>
                                </div>

                                <!--science-ccone end-->
                            </div>
                            <!--science-ccone end-->
                        </div>
                        <!--science-one end-->

                        <div class="science-one col-lg-3 col-md-6 col-sm-6">
                            <div class="science-oneone">
                                <div class="science-top" cut="0.5em">
                                    <a href="" target="_self">
                                        <span>独立PI</span>
                                        <img src="Assets/images/kic4.png" />
                                    </a>
                                </div>
                                <!--science-top end-->
                                <div class="science-ccon">
                                        <ul>
                                            <li><a href="" target="_self" class="a2">分布式计算与智能信息处理实验室</a></li>
                                            <li><a href="" target="_self" class="">自适应分布计算实验室</a></li>
                                            <li><a href="" target="_self" class="">529实验室</a></li>

                                        </ul>
                                    <div class="science-more">
                                        <a href="" target="_self"><img src="Assets/images/j-more.png" /></a>
                                    </div>
                                </div>

                                <!--science-ccone end-->
                            </div>
                            <!--science-ccone end-->
                        </div>
                        <!--science-one end-->
                    <div class="clearfix"></div>
                </div>
                <div class="clearfix"></div>
            </div>
            <!--science-con end-->

        </div>
    </div>
    <!--scienceyan end-->

</div>
<!--bg2 end-->
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
<%--                            <div id="ID-test-layer-wrapper" style="display: none;">--%>
<%--                                <div style="padding:16px;">--%>
<%--                                    弹出已经存在于页面中的一段元素<br>--%>
<%--                                    通常是放置在 body 根节点下--%>
<%--                                </div>--%>
<%--                            </div>--%>

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
    <script src="//unpkg.com/layui@2.9.13/dist/layui.js"></script>
    <script src="Assets/js/bootstrap.min.js"></script>
    <script src="Assets/js/bootstrap-dropdown-on-hover.js"></script>
    <script src="Assets/js/index.js"></script>
    <script src="Assets/js/nav.js"></script>
    <script src="Assets/js/owl.carousel.min.js"></script><!--    创建响应式滑块和轮播-->

    <script src="Assets/js/scripts.js"></script>
    <script src="Assets/js/swiper-3.4.5.min.js"></script><!--    主要用于移动设备图片轮播库-->

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
    <script>//轮播图   https://swiperjs.com/get-started
        let swiper1 = new Swiper('.b-banner .swiper-container', {
            spaceBetween: 0,
            speed: 1000,
            loop: true,//循环播放
            autoplay: {//自动播放配置，延迟5秒切换，不停留在最后一张，交互时不暂停
                delay: 5000,
                stopOnLastSlide: false,
                disableOnInteraction: false,
            },
            on: {
                slideChangeTransitionEnd: function () {
                    $(".b-banner .ban-img").removeClass("animated zoomOut")
                    $(".b-banner .ban-img").addClass("animated fadeInDown")
                },
                slideChangeTransitionStart: function () {
                    $(".b-banner .ban-img").removeClass("animated fadeInDown")
                    $(".b-banner .ban-img").addClass("animated zoomOut")

                },
            },
            pagination: {
                el: '.b-banner .swiper-pagination',
                clickable: true,
            },
            //				 navigation: {
            //			          nextEl: ".banner .swiper-button-next",
            //			          prevEl: ".banner .swiper-button-prev",
            //			        },

        });
        if (window.innerWidth <= 767) {
            let swiper = new Swiper(".party-ban .swiper-container", {
                grabCursor: true,//抓取光标
                effect: "creative",
                creativeEffect: { //创意效果
                    prev: {
                        shadow: true,
                        translate: [0, 0, -400],
                    },//前后滑动的阴影
                    next: {
                        translate: ["100%", 0, 0],
                    },
                },
                pagination: {
                    el: '.party-ban .swiper-pagination',
                    clickable: true,
                }
            });
        } else {
            let swiper = new Swiper('.party-ban .swiper-container', {
                spaceBetween: 0,
                speed: 1000,
                //loop: true,
                effect: 'cube',
                autoplay: false,
                pagination: { //分页器
                    el: '.party-ban .swiper-pagination',
                    clickable: true,//用户点击
                },
                navigation: {
                    nextEl: ".party-ban .swiper-button-next",
                    prevEl: ".partyparty-ban .swiper-button-prev",
                },
            });
        }

        let swiper2 = new Swiper('.news-ban .swiper-container', {
            spaceBetween: 30,//滑块间距
            speed: 1000,
            slidesPerView: 3,//显示3个滑块
            slidesPerGroup: 3,//每组滑动3个滑块
            loop: false,
            autoplay: false,

            pagination: {
                el: '.news-ban .swiper-pagination',
                clickable: true,
            },
            breakpoints: {
                //当宽度大于等于768
                578: {
                    slidesPerView: 1,
                    slidesPerGroup: 1,
                    slidesPerColumn: 1,
                    spaceBetween: 10,
                    loop: true,
                },
                768: {
                    slidesPerView: 2,
                    slidesPerGroup: 1,
                    slidesPerColumn: 1,
                    spaceBetween: 10,
                    loop: true,
                },
            },
        });
    </script>

    <script>
        $(function () {
            $(window).scroll(function () {
                if ($(".new-left").offset().top - $(window).scrollTop() < $(window).height()) {
                    $(".new-left").addClass("animated  fadeInLeft");
                }
                if ($(".new-right").offset().top - $(window).scrollTop() < $(window).height()) {
                    $(".new-right").addClass("animated  fadeInRight");
                }
                if ($(".bg2").offset().top - $(window).scrollTop() < $(window).height()) {
                    $(".bg2").addClass("animated  fadeInDown");
                }

                if ($(".scientificResearch").offset().top - $(window).scrollTop() < $(window).height()) {
                    $(".scientificResearch").addClass("animated  fadeInDown");
                }
                if ($(".fbg").offset().top - $(window).scrollTop() < $(window).height()) {
                    $(".fbg").addClass("animated  fadeInDown");
                }
            });
        });
    </script>

    <script src="//unpkg.com/layui@2.9.13/dist/layui.js"></script>
    <script>
        layui.use(function(){
            var $ = layui.$;
            var layer = layui.layer;
            var util = layui.util;
            var form = layui.form;
            // 事件
            util.on('lay-on', {
                'test-page-custom': function(){
                    layer.open({
                        type: 1,
                        area: '350px',
                        resize: false,
                        shadeClose: true,
                        title: '管理员登录',
                        content: `
        <form action="login" method="post">
          <div class="layui-form" lay-filter="filter-test-layer" style="margin: 16px;">
            <div class="demo-login-container">
              <div class="layui-form-item">
                <div class="layui-input-wrap">
                  <div class="layui-input-prefix">
                    <i class="layui-icon layui-icon-username"></i>
                  </div>
                  <input type="text" name="username" value="" lay-verify="required" placeholder="用户名(测试用例：BO)" lay-reqtext="请填写用户名" autocomplete="off" class="layui-input" lay-affix="clear">
                </div>
              </div>
              <div class="layui-form-item">
                <div class="layui-input-wrap">
                  <div class="layui-input-prefix">
                    <i class="layui-icon layui-icon-password"></i>
                  </div>
                  <input type="password" name="password" value="" lay-verify="required" placeholder="密   码(测试用例：123456)" lay-reqtext="请填写密码" autocomplete="off" class="layui-input" lay-affix="eye">
                </div>
              </div>
              <div class="layui-form-item">
                <div class="layui-row">
                  <div class="layui-col-xs7">
                    <div class="layui-input-wrap">
                      <div class="layui-input-prefix">
                        <i class="layui-icon layui-icon-vercode"></i>
                      </div>
                      <input type="text" name="captcha" value="" lay-verify="required" placeholder="验证码" lay-reqtext="请填写验证码" autocomplete="off" class="layui-input" lay-affix="clear">
                    </div>
                  </div>
                  <div class="layui-col-xs5">
                    <div style="margin-left: 10px;">
                      <img src="https://www.oschina.net/action/user/captcha" onclick="this.src='https://www.oschina.net/action/user/captcha?t='+ new Date().getTime();">
                    </div>
                  </div>
                </div>
              </div>
              <div class="layui-form-item">
                <input type="checkbox" name="remember" lay-skin="primary" title="记住密码">
                <a href="#forget" style="float: right; margin-top: 7px;">忘记密码？</a>
              </div>
              <div class="layui-form-item">
                <button type="submit" class="layui-btn layui-btn-fluid" lay-submit lay-filter="demo-login">登录</button>

              </div>

            </div>
          </div></form>
        `,
                        success: function(){
                            // 对弹层中的表单进行初始化渲染
                            form.render();
                            // 表单提交事件
                            // form.on('submit(demo-login)', function(data){
                            //     var field = data.field; // 获取表单字段值
                            //     // 显示填写结果，仅作演示用
                            //     layer.alert(JSON.stringify(field), {
                            //         title: '当前填写的字段值'
                            //     });
                            //     // 此处可执行 Ajax 等操作
                            //     // …
                            //     return false; // 阻止默认 form 跳转
                            // });
                        }
                    });
                }
            })
        });
    </script>
</body>
</html>
