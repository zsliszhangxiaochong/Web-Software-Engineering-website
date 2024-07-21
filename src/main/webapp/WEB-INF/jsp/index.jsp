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
    <title>软件工程专业-东北林业大学控制工程学院</title>
    <!--引入bootstrap-->
    <%--<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    --%><!--引入Icon图标-->
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
            /*background-color: #333;*/
        }
        /* 导航栏 */
        /* 现有样式 */
        .navbar {
            overflow: visible;
            background-color: #333;
            position: relative;
        }

        .navbar a {
            /*float: left;*/
            display: inline-block;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
            font-weight: bold;
            transition: box-shadow 0.3s ease;
            /*background-color: #333;*/
        }

        .navbar a:hover {
            background-color: white;
            color: #333;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.5); /* 悬停时添加阴影 */
            opacity: 0.5;
        }

        .navbar .left{
            /*float: right;*/
            margin: 0 0 0 150px;
        }

        /* 新增二级菜单样式 */
        .dropdown {
            position: relative;
            float: left; /* 确保dropdown与其他菜单项对齐 */
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
        /*轮播图*/
        /* .img img{
                 width: 100%;
                 width: 100vw;   !* 视口宽度 *!
                 object-fit: cover;  !* 保持图片的宽高比，填充整个内容区域 *!
         }*/
        .my-slides {
            display: none;
            position: relative;
            width: 100%;
        }

        div .my-slides img {
            width: 100%;
            height: auto;
        }

        .prev, .next {
            cursor: pointer;
            position: absolute;
            top: 60%;
            width: auto;
            padding: 16px;
            margin-top: -22px;
            color: white;
            font-weight: bold;
            font-size: 18px;
            transition: 0.6s ease;
            border-radius: 0 3px 3px 0;
            user-select: none;
        }

        .next {
            right: 0;
            border-radius: 3px 0 0 3px;
        }

        .prev {
            left: 0;
            border-radius: 3px 0 0 3px;
        }

        .prev:hover, .next:hover {
            background-color: rgba(255,255,255,0.8);
        }
        /*Icon图标*/
        /*.material-icons {
            font-family: 'Material Icons';
            font-weight: normal;
            font-style: normal;
            font-size: 48px; !* 将图标的尺寸设置为48像素 *!
            line-height: 1;
            letter-spacing: normal;
            text-transform: none;
            display: inline-block;
            white-space: nowrap;
            word-wrap: normal;
            direction: ltr;
        }
        .nav-icon {
            vertical-align: middle;
            margin-right: 10px;
        }*/
        /*新闻*/
        .flex-container {
            display: flex;
            align-items: center; /* 这将垂直居中所有子项 */
        }

        .flex-container img {
            width: 210px; /* 定义具体宽度, 也可以用百分比或者flex基于内容自动调整 */
            height: 120px; /* 定义具体高度 */
        }

        .flex-container > div {
            padding: 0 15px; /* 根据需要调整间距 */
        }

        .my-col-md-10 {
            flex-grow: 1; /* 让这个容器占据剩余空间 */
        }

        h3, p {
            margin: 10px 0; /* 增加一点垂直间距，可根据需求调整 */
        }
        /*虚线线条*/
        hr.dashed {
            border: none;      /* 移除默认边框 */
            height: 1px;       /* 设置虚线的厚度 */
            background-color: transparent;  /* 设置背景颜色为透明 */
            border-top: 1px dashed #D3D3D3; /* 设置顶部边框为黑色虚线 */
        }
        /*hr线条*/
        .connected-hr {
            width: 100%; /* 根据左侧内容大小动态调整宽度 */
            margin: 0; /* 去除默认外边距 */
            border-color: #D3D3D3; /* 设置颜色 */
            border-top-width: 1px; /* 设置线宽 */
        }
        /*公告*/
        .my-area.my-col-md-6 {
            padding: 5px;
        }
        .fl {
            float: left; /* 左浮动 */
            margin-right: 20px; /* 右边距，用于分隔两个 div */
        }

        .fr {
            float: right; /* 右浮动 */
        }

        .dat {
            width: 80px;
            background-color: #f7f7f7;
            text-align: center;
            box-shadow: 3px 3px 5px rgba(0,0,0,0.1);
        }

        .tian {
            background-color: #333;
            color: white;
            padding: 10px 0;
        }

        .nian {
            padding: 5px 0;
            color: #333;
            font-size: 14px;
            border-top: 1px solid #ccc;
        }

        .tz_list {
            width: calc(100% - 120px); /* 减去日期部分和间隙的宽度 */
            text-align: left;
            padding: 10px;
            box-shadow: 3px 3px 5px rgba(0,0,0,0.1);
            background-color: #fff;
        }

        .tz_list a {
            color: #0066CC;
            text-decoration: none; /* 去掉下划线 */
            font-weight: bold; /* 加粗字体 */
        }

        .tz_list p {
            color: #666;
            margin-top: 5px; /* 段落与链接之间的距离 */
        }
        div .tz_list{
            transition: all 0.3s ease; /* 平滑过渡 */
            padding: 5px 10px; /* 增加内边距 */
        }
        div .tz_list:hover{
            box-shadow: 0px 4px 8px rgba(0,0,0,0.1);
            transform: translateY(-2px); /* 轻轻上浮 */
        }
        /*相关链接*/
        .connection{
            border: 1px solid #D3D3D3;
        }
        .connection ul{
            list-style: none;
        }
        .connection a{
            text-decoration: none;
            display: inline-block;
            color: #333333;
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
                <div class="dropdown">
                <a href="index">主页</a>
                </div>
                <div class="dropdown">
                <a href="professional">专业概况</a>
                </div>
                <div class="dropdown">
                <a href="teacher">师资队伍</a>
                </div>
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
<!--轮播图页面-->
<%--<div class="my-area my-row">
    <div class="my-col-md-12">
        <div class="img">
            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="${pageContext.request.contextPath}/img/img_1.png" class="d-block w-100" alt="Image 1">
                    </div>
                    <div class="carousel-item">
                        <img src="${pageContext.request.contextPath}/img/img_2.png" class="d-block w-100" alt="Image 2">
                    </div>
                    <div class="carousel-item">
                        <img src="${pageContext.request.contextPath}/img/img_3.png" class="d-block w-100" alt="Image 3">
                    </div>
                </div>
                <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
    </div>
</div>--%>
<div class="my-area my-row">
    <div class="my-col-md-12">
        <div class="img">
            <div class="my-slides">
                <img src="${pageContext.request.contextPath}/img/img_1.png" style="width:100%">
            </div>
            <div class="my-slides">
                <img src="${pageContext.request.contextPath}/img/img_2.png" style="width:100%">
            </div>
            <div class="my-slides">
                <img src="${pageContext.request.contextPath}/img/img_3.png" style="width:100%">
            </div>
            <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
            <a class="next" onclick="plusSlides(1)">&#10095;</a>
        </div>
    </div>
</div>
<!--新闻和公告-->
<br>
<div class="my-area my-row">
    <!--新闻-->
    <div class="my-area my-col-md-6">
        <div style="position: relative">
            <img src="${pageContext.request.contextPath}/img/news.png" alt="图标" width="24" height="22">
            <h4 style="display: inline-block;">新闻中心</h4>
            <a href="N_A" style="display: inline-block;color: #D3D3D3;font-weight: lighter;position: absolute;right: 0"><h4>MORE+</h4></a>
        </div>
        <hr class="connected-hr">
        <!--大文章部分-->
        <div>
            <div class="flex-container">
                <div>
                        <img src="${pageContext.request.contextPath}/img/conversation.png" width="210" height="120" />
                    </a>
                </div>
                <div class="my-col-md-10">
                    <h3>
                        <a href="https://ccec.nefu.edu.cn/info/1085/4497.htm" target="_blank" title="大讨论 || 计算机与控制工程学院召开“教育思想与高质量发展大讨论”产出导向（就业导向）高质量人才培养">
                            大讨论 || 计算机与控制工程学院召开“教育思想与高质量发展大讨论”产出...
                        </a>
                    </h3>
                    <p>为提升人才培养质量，促进高质量就业，通过培养学生的专业知识和工程实践能力，提高就业竞争力，2024年7月1日、2日，计算机与控制工程学...</p>
                </div>
            </div>
            <hr class="dashed">
            <!--这里填入数据库的内容-->
            <div>
                <ul style="list-style: none">
                    <c:forEach items="${news}" var="new1">
                        <li ><a href="news?id=${new1.id}" style="text-align: center">${new1.title}</a><p>${new1.publishDate}</p></li>
                    </c:forEach>
                </ul>
            </div>
        </div>
    </div>
    <!--公告篇-->
    <div class="my-area my-col-md-6">
        <div style="position: relative">
            <img src="${pageContext.request.contextPath}/img/announcement.png" alt="图标" width="24" height="22">
            <h4 style="display: inline-block;">通知公告</h4>
            <a href="N_A" style="display: inline-block;color: #D3D3D3;font-weight: lighter;position: absolute;right: 0"><h4>MORE+</h4></a>
        </div>
        <hr class="connected-hr">
        <!--具体公告部分-->
        <ul>
            <li style="list-style: none;overflow: auto;">
                <div class="dat fl">
                    <div class="tian"><h1>06</h1></div>
                    <div class="nian">2024-05</div>
                </div>
                <div class="tz_list fr">
                    <a href="https://ccec.nefu.edu.cn/info/1084/4383.htm" target="_blank" title="第34次 CCF CSP 认证报名通知">第34次 CCF CSP 认证报名通知</a>
                    <p>东北林业大学计算机与控制工程学院为CCF CSP认证单位，此认证重点...</p>
                </div>
            </li>
            <li style="list-style: none;overflow: auto;">
                <div class="dat fl">
                    <div class="tian"><h1>24</h1></div>
                    <div class="nian">2024-03</div>
                </div>
                <div class="tz_list fr">
                    <a href="https://mp.weixin.qq.com/s/_Xsc9xHLDFEwxshgUJwZNw" target="_blank" title="“英烈传千古，学子扬新篇”——计算机与控制工程学院“英烈故事我来讲”活动">“英烈传千古，学子扬新篇”——计算机与控制工程学院“英烈...</a>
                    <p></p>
                </div>
            </li>
            <li style="list-style: none;overflow: auto;">
                <div class="dat fl">
                    <div class="tian"><h1>22</h1></div>
                    <div class="nian">2024-03</div>
                </div>
                <div class="tz_list fr">
                    <a href="https://ccec.nefu.edu.cn/info/1084/4305.htm" target="_blank" title="计算机与控制工程学院第二届学生组织拟聘用学生干部名单公示">计算机与控制工程学院第二届学生组织拟聘用学生干部名单公示</a>
                    <p>拟定聘用王森潘等30人为计算机与控制工程学院第二届学生组织机构...</p>
                </div>
            </li>
        </ul>
    </div>
</div>
<div class="my-col-md-12 connection">
    <h3>相关链接</h3>
    <ul>
        <li><a href="https://www.nefu.edu.cn/">东北林业大学</a></li>
        <li><a href="https://ccec.nefu.edu.cn/index.htm">东北林业大学计算机与控制工程学院</a></li>
        <li><a href="https://jwc.nefu.edu.cn/">教务处</a></li>
        <li><a href="#">ACM在线测试系统</a></li>
        <li><a href="https://login.dingtalk.com/oauth2/challenge.htm?redirect_uri=https%3A%2F%2Fdgvnwz.aliwork.com%2Fdingtalk_sso_call_back%3Fcontinue%3Dhttps%253A%252F%252Fdgvnwz.aliwork.com%252Fs%252Fccecnews&response_type=code&client_id=suite9xvlxxerybljwheo&scope=openid+corpid">在线投稿</a></li>
    </ul>
</div>
<!--尾页-->
<img src="${pageContext.request.contextPath}/img/silhouette.png" alt="" style="width: 100%">
<%--<img src="img/silhouette.png" alt="" style="width: 100%">--%>
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
    var slideIndex = 1;
    showSlides(slideIndex);

    function plusSlides(n) {
        showSlides(slideIndex += n);
    }

    function showSlides(n) {
        var i;
        var slides = document.getElementsByClassName("my-slides");
        if (n > slides.length) { slideIndex = 1 }
        if (n < 1) { slideIndex = slides.length }
        for (i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";
        }
        slides[slideIndex-1].style.display = "block";
    }
</script>
</body>
</html>
