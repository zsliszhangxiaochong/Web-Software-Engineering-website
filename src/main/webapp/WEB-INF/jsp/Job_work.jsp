<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 2024/7/19
  Time: 上午8:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="jakarta.tags.core" %>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <c:url var="base" value="/"/>
    <base href="${base}">
    <title>就业工作-软件工程专业</title>
    <!--引入bootstrap-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <!--引入Icon图标-->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
    <style>
        * {
            padding: 0;
            margin: 0;
            box-sizing: border-box;
        }
        .my-container {
            max-width: 100%;
            margin: auto;
        }
        .my-area {
            padding: 0px;
            /*border: 1px solid #23e44d;*/
        }
        .my-row {
            display: flex;
            align-items: flex-start;
        }
        /*搜索栏和logo标签*/
        .logodouble{
            background-color: #333;
        }
        .logo_font{
            /*border: 1px solid #23e44d;*/
            display: inline;
            /* 设置字体为楷体 */
            font-family: "KaiTi", "KaiTi_GB2312", sans-serif;
            font-size: 2.5em;
            color: white;
            float: left;
            margin: 0;
        }
        /* 导航栏 */
        /* 现有样式 */
        .navbar {
            overflow: visible;
            background-color: #333;
        }

        .navbar a {
            float: right;
            display: block;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
            font-weight: bold;
            transition: box-shadow 0.3s ease;
        }

        .navbar a:hover {
            background-color: white;
            color: #333;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.5); /* 悬停时添加阴影 */
            opacity: 0.5;
        }

        .navbar .left {
            margin-left: auto;
        }

        /* 新增二级菜单样式 */
        .dropdown {
            position: relative;
            float: right; /* 确保dropdown与其他菜单项对齐 */
        }

        .dropbtn {
            display: block;
            color: #f2f2f2;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
            font-weight: bold;
            transition: box-shadow 0.3s ease; /* 添加过渡效果 */
        }

        .dropbtn:hover {
            background-color: white;
            color: black;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.5); /* 悬停时添加阴影 */
            opacity: 0.5;
        }

        .subnav {
            display: none; /* 默认隐藏 */
            position: absolute;
            left: 0; /* 与父级对齐 */
            top: 100%; /* 下移至触发元素的底部 */
            background-color: white;
            min-width: 160px;
            box-shadow: 0px 8px 16px rgba(0, 0, 0, 0.2);
            z-index: 1;
            background-color: rgba(255,255,255,0.9);
            /*border: 1px solid #23e44d;*/
            padding: 0;
        }

        .subnav ul {
            list-style-type: none;
            margin: 0;
            width: 100%;
        }

        .subnav ul li {
            padding: 12px 16px;
            text-align: center;
            margin: 0;
        }

        .subnav ul li a {
            /*color: #f2f2f2;*/
            color: #333;
            text-decoration: none;
            width: 100%;
            display: block;
            text-align: center;
            margin: 0;
        }

        .subnav ul li a:hover {
            background-color: rgba(255,255,255,1);
            color: black;
        }

        /* 显示二级菜单 */
        .dropdown:hover .subnav {
            display: block;
        }
        /*就业介绍部分*/
        .sub_cont{
            border: 1px solid #D3D3D3;
            border-radius: 50px;
            margin: 20px 300px;
            box-sizing: border-box;
            padding: 15px 30px;
            transition: all 0.3s ease-in-out; /* 平滑过渡效果 */
            transform: translateY(0); /* 初始状态，不移动 */
            box-shadow: 0 2px 6px rgba(0, 0, 0, 0.1); /* 普通状态下轻微阴影 */
        }
        .sub_cont h1{
            text-align: center;
            font-weight: bold;
        }
        .sub_cont p{
            font-size: 1.2em;
            font-weight: bold;
        }
        .sub_cont:hover{
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); /* 悬浮时的阴影设置 */
            transform: translateY(-10px); /* 鼠标悬浮时向上移动 */
        }
        /* 尾部CSS样式 */
        .footer {
            text-align: center;
            width: 100%;
            clear: both;
        }
        /*-------- 12栅格 -----------  */
        .my-col-md-1 {
            width: 8.33%;
        }
        .my-col-md-2 {
            width: 16.67%;
        }
        .my-col-md-3 {
            width: 25%;
        }
        .my-col-md-4 {
            width: 33.33%;
        }
        .my-col-md-5 {
            width: 41.67%;
        }
        .my-col-md-6 {
            width: 50%;
        }
        .my-col-md-7 {
            width: 58.33%;
        }
        .my-col-md-8 {
            width: 66.67%;
        }
        .my-col-md-9 {
            width: 75%;
        }
        .my-col-md-10 {
            width: 83.33%;
        }
        .my-col-md-11 {
            width: 91.67%;
        }
        .my-col-md-12 {
            width: 100%;
        }
    </style>
    <!--引入bootstrap-->
    <!--<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>-->
</head>
<body>
<!--logo页面-->
<div class="my-container">
    <div class="my-area my-row">
        <div class="my-col-md-12">
            <div class="logodouble">
                <a href="#" style="display: inline"><img src="${pageContext.request.contextPath}/img/logo.png" alt="logo"></a>
            </div>
        </div>
    </div>
</div>
<!--上导航页面-->
<div class="my-container">
    <div class="my-area my-row">
        <div class="my-col-md-12">
            <div class="navbar">
                <h1 class="logo_font">软件工程专业</h1>
                <a href="index">主页</a>
                <a href="professional">专业概况</a>
                <a href="teacher">师资队伍</a>
                <div class="dropdown">
                    <a href="https://ccec.nefu.edu.cn/rcpy/bksjy/zsjz.htm" class="dropbtn">人才培养</a>
                    <div class="subnav">
                        <ul>
                            <li><a href="https://ccec.nefu.edu.cn/rcpy/bksjy/zsjz.htm">本科生教育</a></li>
                            <li><a href="https://ccec.nefu.edu.cn/rcpy/yjsjy/zsjz.htm">研究生教育</a></li>
                        </ul>
                    </div>
                </div>
                <div class="dropdown">
                    <a href="laboratory" class="dropbtn">实验室建设</a>
                    <div class="subnav">
                        <ul>
                            <li><a href="laboratory_detail?id=931">931实验室</a></li>
                            <li><a href="laboratory_detail?id=908">908实验室</a></li>
                            <li><a href="laboratory_detail?id=909">909实验室</a></li>
                        </ul>
                    </div>
                </div>
                <div class="dropdown">
                    <a href="Job_work" class="dropbtn">就业方向</a>
                </div>
                <div class="dropdown">
                    <a href="https://ccec.nefu.edu.cn/djgz/dw/zzjg.htm" class="dropbtn">党建工作</a>
                    <div class="subnav">
                        <ul>
                            <li><a href="https://ccec.nefu.edu.cn/djgz/dw/zzjg.htm">党委</a></li>
                            <li><a href="https://ccec.nefu.edu.cn/djgz/dw/zzjg.htm">工会</a></li>
                        </ul>
                    </div>
                </div>
                <div class="dropdown">
                    <a href="https://ccec.nefu.edu.cn/djgz/dw/zzjg.htm" class="dropbtn">学生工作</a>
                    <div class="subnav">
                        <ul>
                            <li><a href="https://ccec.nefu.edu.cn/xsgz/zzjg.htm">组织结构</a></li>
                            <li><a href="https://ccec.nefu.edu.cn/index/xtdt.htm">学团动态</a></li>
                            <li><a href="https://ccec.nefu.edu.cn/xsgz/fdydw.htm">辅导员队伍</a></li>
                        </ul>
                    </div>
                </div>
                <div class="dropdown">
                    <a href="https://ccec.nefu.edu.cn/kxyj/kyxm.htm" class="dropbtn">科学研究</a>
                    <div class="subnav">
                        <ul>
                            <li><a href="https://ccec.nefu.edu.cn/kxyj/kyxm.htm">科研项目</a></li>
                            <li><a href="https://ccec.nefu.edu.cn/kxyj/cgjjl.htm">成果及奖励</a></li>
                            <li><a href="https://ccec.nefu.edu.cn/kxyj/yjtdycxpt.htm">研究团队与创新平台</a></li>
                        </ul>
                    </div>
                </div>
                <a href="filter/login" class="left">后台管理</a>
            </div>
        </div>
    </div>
</div>
<!--大页面展示-->
<div class="my-area my-row">
    <div class="my-col-md-12">
        <img src="${pageContext.request.contextPath}/img/nightmanibuilding.png" alt="主楼" style="width: 100%">
    </div>
</div>
<!--专业介绍-->
<div style="display: flex">
    <div class="my-container" style="height: 100%">
        <div class="my-area my-row">
            <div class="my-col-md-12">
                <div class="sub_cont" >
                    <h1>软件工程-就业方向</h1>
                    <hr>
                    <div>
                        <h3>1. 软件开发</h3>
                        <p style="text-indent: 2em;">应用程序开发者：开发桌面、移动或网页应用程序。</p>
                        <p style="text-indent: 2em;">系统软件开发者：设计和开发操作系统、编译器或网络分布软件。</p>
                        <h3>2. 前端开发</h3>
                        <p style="text-indent: 2em;">设计和实现网站的用户界面和用户体验。</p>
                        <h3>3. 后端开发</h3>
                        <p style="text-indent: 2em;">负责服务器端逻辑和数据库管理，确保网站和应用程序的后端运行高效。</p>
                        <h3>4. 全栈开发</h3>
                        <p style="text-indent: 2em;">同时掌握前端和后端开发，能够独立或在团队中参与整个软件的开发。</p>
                        <h3>5. 游戏开发</h3>
                        <p style="text-indent: 2em;">参与视频游戏的设计和开发，可能包括游戏编程、图形设计等方面。</p>
                        <h3>6. 嵌入式系统开发</h3>
                        <p style="text-indent: 2em;">在非计算机设备（如电子设备、汽车、家用电器等）中编写和优化软件。</p>
                        <h3>7. 数据科学与机器学习</h3>
                        <p style="text-indent: 2em;">使用编码技能来处理和分析大量数据，以及设计算法模型来支持数据分析和预测模型。</p>
                        <h3>8. 移动开发</h3>
                        <p style="text-indent: 2em;">专注于为Android或iOS等平台开发应用程序。</p>
                        <img src="${pageContext.request.contextPath}/img/silhouette.png" alt="" style="width: 100%">
                    </div>
                </div>
            </div>
            <!--尾页-->
            <%--<div class="my-area my-row">
                &lt;%&ndash;<div class="my-col-md-12"><img src="${pageContext.request.contextPath}/img/silhouette.png" alt="" style="width: 100%"></div>&ndash;%&gt;
                <div class="my-col-md-12 footer" style="background-color: #333333;">
                    <p style="color: white">
                        东北林业大学
                        软件工程专业
                        <br />
                    </p>
                    <h3 style="color: white">版权归张小虫所有</h3>
                </div>
            </div>--%>
</div>
<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script>
    $(
        function() {
            $('.dropdown').hover(
                function() {
                    // 鼠标进入时动作
                    $('.subnav', this).stop(true, true).fadeIn(500); // 渐入效果，500毫秒
                },
                function() {
                    // 鼠标离开时动作
                    $('.subnav', this).stop(true, true).fadeOut(500); // 渐出效果，500毫秒
                }
            );
        }
    )
</script>
</body>
</html>
