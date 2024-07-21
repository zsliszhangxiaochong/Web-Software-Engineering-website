
<%@ page pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="jakarta.tags.core" %>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <c:url var="base" value="/"/>
    <base href="${base}">
    <title>实验室建设-软件工程专业</title>
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
        /*卡片设计*/
        .card {
            width: 30%;
            padding: 10px;
            margin: auto;
            border: 1px solid white;
            height: 100%;
            overflow: hidden;
            transition: box-shadow 0.3s ease; /* 添加过渡效果 */
        }
        .card-header {
            width: 80%;
            margin: auto;
        }
        .card-header img {
            border-radius: 10%;
            opacity: 1;
            margin: auto;
            width: 100%;
            /* align-items: center; */
            /* object-fit: cover; */
        }
        .card-footer a {
            display: flex;
            width: 30%;
            opacity: 0.5;
            color: white;
            background-color: red;
            text-decoration: none;
            justify-content: center;
            padding: 0;
            margin: 0;
            padding: 1px;
        }
        .card-content {
            text-align: justify;
            display: flex;
        }
        .card:hover {
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.5); /* 当鼠标悬浮在卡片上时，添加阴影 */
        }
        .card:hover .card-header img {
            opacity: 1;
        }
        .card-footer a:hover {
            opacity: 1;
        }
        /* 尾部CSS样式 */
        .footer {
            text-align: center;
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
                <a href="#" style="display: inline"><img src="${pageContext.request.contextPath}/img/logo.png" alt="logo">
                    <%--<img src="img/logo.png" alt="">--%>
                </a>
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
<!--办公室详细介绍-->
<div style="display: flex">
    <div class="card">
        <div class="card-header">
            <img src="https://picsum.photos/200/200/?random=1" alt="" />
        </div>
        <div class="card-content">
            <h4 style="text-align: center">931实验室</h4>
            <p>
                模式识别国家重点实验室。实验室以模式识别基础理论、图像处理与计算机视觉以及语音语言信息处理为主要研究方向，研究人类模式识别的机理以及有效的计算方法，为开发智能系统提供关键技术，为探求人类智力的本质提供科学依据。
            </p>
        </div>
        <div class="card-footer">
            <a class="more" href="laboratory_detail?id=931">Read More</a>
        </div>
    </div>
    <div class="card">
        <div class="card-header">
            <img src="https://picsum.photos/200/200/?random=2" alt="" />
        </div>
        <div class="card-content" style="text-align: center">
            <h4 style="text-align: center">908实验室</h4>
            <p>
                软件开发环境国家重点实验室。是在计算机软件理论、技术和开发环境等方面开展基础、应用基础与竞争前高技术的开放式研究基地，是创新型高层次人才的培养基地。也拥有计算机科学与技术的国家重点学科。
            </p>
        </div>
        <div class="card-footer">
            <a class="more" href="laboratory_detail?id=908">Read More</a>
        </div>
    </div>
    <div class="card">
        <div class="card-header">
            <img src="https://picsum.photos/200/200/?random=3" alt="" />
        </div>
        <div class="card-content">
            <h4 style="text-align: center">909实验室</h4>
            <p>
                实验室是国内唯一一个以从事计算机科学和软件方法与技术的基础研究为主的国家重点实验室。实验室以国内外计算机科学技术领域提出的基本问题为背景，面向国家发展软件产业和国家安全的战略需求，开展计算机科学理论和软件基础研究。
            </p>
        </div>
        <div class="card-footer">
            <a class="more" href="laboratory_detail?id=909">Read More</a>
        </div>
    </div>
</div>
<!--尾页-->
<!--<img src="${pageContext.request.contextPath}/img/silhouette.png" alt="" style="width: 100%">-->
<img src="img/silhouette.png" alt="" style="width: 100%">
<div class="my-area my-row">
    <div class="my-col-md-12 footer" style="background-color: #333333;">
        <p style="color: white">
            东北林业大学
            软件工程专业
            <br />
        </p>
        <h3 style="color: white">版权归张小虫所有</h3>
    </div>
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
