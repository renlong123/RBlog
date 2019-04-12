<%--
  Created by IntelliJ IDEA.
  User: renlong
  Date: 2019/4/12
  Time: 20:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>RBlog 个人信息</title>
    <!--图标-->
    <link href="${pageContext.request.contextPath}/img/title.png" rel="shortcut icon"/>
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <%-- <link href="https://v4.bootcss.com/docs/4.0/examples/dashboard/dashboard.css" rel="stylesheet">--%>

    <!--添加ueditor-->
    <script type="text/javascript">
        window.UEDITOR_HOME_URL = "${pageContext.request.contextPath}/utf8-jsp/";
    </script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath }/utf8-jsp/ueditor.config.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath }/utf8-jsp/ueditor.all.js"></script>
    <%--    <script type="text/javascript"
                src="${pageContext.request.contextPath }/js/zh-cn.js"></script>--%>


    <style>
        body{
            padding-top: 70px;
        }
        .sidebar{
            float: right;
            position: fixed;
            /*background-color: #00aa88;*/
        }
        .content-float{
            float: left;
        }
        .input-group{
            margin-bottom: 5px;
        }
        .item-content{
            font-size: 20px;
        }
        .isChecked{
            background-color: #5f2dab;
            font-color: white;
        }
        .content-title{
            font-size: 40px;

        }
        .content-body{
            font-size: 16px;
        }
    </style>
</head>
<body>
    <jsp:include page="navigate.jsp"></jsp:include>

    <div class="container-fluid">
        <div class="row">
            <main role="main" class="col-md-10 content-float">
                <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pb-2 mb-3 border-bottom">
                    <%--<h1 class="h2">Dashboard</h1>
                    <div class="btn-toolbar mb-2 mb-md-0">
                        <div class="btn-group mr-2">
                            <button class="btn btn-sm btn-outline-secondary">Share</button>
                            <button class="btn btn-sm btn-outline-secondary">Export</button>
                        </div>
                        <button class="btn btn-sm btn-outline-secondary dropdown-toggle">
                            <span data-feather="calendar"></span>
                            This week
                        </button>
                    </div>--%>
                    <%--<ol class="breadcrumb">
                        <li><a href="#">个人信息</a></li>
                        <li class="active">所有博客</li>
                    </ol>--%>
                    <div>
                        <%--<div class="col-lg-10">--%>
                            <div class="panel panel-default" style="margin: 5px;">
                                <div class="panel-heading">
                                    <span class="glyphicon glyphicon-book" aria-hidden="true"></span>
                                    查看内容
                                </div>
                                <div class="panel-body" id="content-area">
                                    <span class="content-title"><a href="#">${article.articleTitle}</a> </span><br/>
                                    <span class="content-info" style="font-size: 12px">作者：<a href="#">${article.articleUserid}</a></span>
                                    <span style="float: right;font-size: 12px" >发表日期：<fmt:formatDate value="${article.articleLastmodify}" pattern="yyyy-MM-dd"/></span>
                                    <div class="content-body" id="111111">${article.articleContent}</div>
                                    <hr/>
                                </div>
                            </div>
                        <%--</div>--%>
                    </div>
                </div>
            </main>

                <nav class="col-md-2 ">

                    <div class="panel panel-default">

                        <div class="panel-body" style="margin: 0px">
                            <%--<ul class="items-group">--%>
                            <div class="item-content ">
                                <span class="glyphicon glyphicon glyphicon-user" aria-hidden="true"></span>
                                <a href="${pageContext.request.contextPath}/person">我的信息</a></div>
                            <div></div>
                            <div class="item-content isChecked">
                                <span class="glyphicon glyphicon-menu-hamburger" aria-hidden="true"></span>
                                <a href="#">文章列表</a></div>
                            <div></div>
                            <%--<li class="item-content"><a href="#">我的信息</a></li>
                            <div></div>
                            <li class="item-content"><a href="#">我的信息</a></li>
                            <hr/>
                            <li class="item-content"><a href="#">我的信息</a></li>
                            <li class="item-content"><a href="#">我的信息</a></li>--%>
                            <%--</ul>--%>
                        </div>
                    </div>
                </nav>
        </div>
    </div>
</body>
</html>
