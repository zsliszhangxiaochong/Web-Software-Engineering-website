<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 2024/7/20
  Time: 下午6:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <meta charset="UTF-8" />
    <c:url var="base" value="/"/>
    <base href="${base}">
    <title>后台-软件工程专业</title>
    <style>
        /**{
            border: 1px solid black;
        }*/
        table {
            width: 100%;
            text-align: center;
            border-collapse: collapse;
        }
        td{
            padding: 10px;
        }
        tbody tr:nth-child(odd){
            background-color: #e4e1e1;
        }
        tbody tr:hover{
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.5); /* 当鼠标悬浮在卡片上时，添加阴影 */
        }
        tbody tr button{
            text-decoration: none;
            background-color: red;
            color: white;
            border-radius: 5px;
            padding: 5px;
            opacity: 0.5;
        }
        tbody tr button:hover{
            opacity: 1;
        }
        tbody tr a{
            text-decoration: none;
            background-color: red;
            color: white;
            border-radius: 5px;
            padding: 5px;
            opacity: 0.5;
        }
        tbody tr a:hover{
            opacity: 1;
        }
    </style>
</head>
<body>
<div class="table">
    <table>
        <thead>
        <tr>
            <th>
                #
            </th>
            <th>
                标题
            </th>
            <th>
                时间
            </th>
            <th>
                操作
            </th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${news}" var="new1">
            <tr>
                    <td>${new1.id}</td>
                    <td>${new1.title}</td>
                    <td>${new1.publishDate}</td>
                    <td>
                        <%--<form action="updatenews" method="post">
                            <span><button type="submit" name="${new1.id}">修改</button></span>
                        </form>--%>
                        <span style="display: inline-block"><a href="updatenews">修改</a></span>
                            <form action="deletenews" method="post">
                                <button type="submit" name="id" value="${new1.id}">删除</button>
                            </form>
                    </td>
            </tr>
        </c:forEach>
        <tr>
            <td></td>
            <td></td>
            <td></td>
            <td>
                <span><a href="addnews">添加新闻</a></span>
            </td>
        </tr>
        </tbody>
    </table>

</div>
</div>
</div>
</body>
</html>
