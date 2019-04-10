<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>RBlog</title>
    <!--图标-->
    <link href="${pageContext.request.contextPath}/img/title.png" rel="shortcut icon"/>
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<%--    <%@include file="WEB-INF/views/header.jsp"%>--%>
    <script>
        $(function(){
            addArticle();
        });

        function addArticle() {
            var content = '${article.articleContent}'.toString();
            var content_text=$("#content-area");
            var title = $("<span></span>").addClass("content-title").append($("<a href='#'></a>").append('${article.articleTitle}'));
            var author = $("<span></span>").addClass("content-info").append("作者：").append($("<a href='#'></a>").append("任龙"));
            var time = $("<span></span>").append("发表日期："+'${article.articleLastmodify}');
            var content1 = $("<div></div>").addClass("content-body").append(content);

            content_text
                .append(title).append($("<br/>"))
                .append(author)
                .append(time)
                .append(content1);
        }
    </script>
</head>
<body>


    <jsp:include page="navigate.jsp"></jsp:include>
    <!--轮播图-->
    <style>
        div.item img{
            width:100%;
            height: 400px;
        }
        div#carousel-example-generic{
            width:95%;
            margin:0 auto;
        }
    </style>
    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
            <li data-target="#carousel-example-generic" data-slide-to="3"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <img src="${pageContext.request.contextPath}/img/002.jpg" height="300">
            </div>
            <div class="item">
                <img src="${pageContext.request.contextPath}/img/006.jpg" height="300">
            </div>
            <div class="item">
                <img src="${pageContext.request.contextPath}/img/007.jpg" height="300">
            </div>

            <div class="item">
                <img src="${pageContext.request.contextPath}/img/008.jpg" height="300">
            </div>

        </div>

        <!-- Controls -->
        <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>

        </a>
        <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>

        </a>
    </div>


    <!--欢迎页面-->
    <div class="row" style="margin: 25px">
        <div class="col-lg-4">
            <div class="panel panel-success" style="margin: 5px;">
                <div class="panel-heading">
                    <span class="glyphicon glyphicon-book" aria-hidden="true"></span>
                    最新文章
                </div>
                <div class="panel-body" id="content-area">

                    <span class="content-title"><a href="#"></a> </span><br/>
                    <span class="content-info" style="font-size: 12px">作者：<a href="#">任龙</a></span>  <span style="float: right;font-size: 12px" >发表日期：3s 前</span>
                    <div class="content-body" id="111111"></div>
                    <!--分割线-->
                    <HR>
                    <span class="content-title"><a href="#">java泛型详解</a> </span><br>
                    <span class="content-info" style="font-size: 12px">作者：<a href="#">任龙</a></span>  <span style="float: right;font-size: 12px" >发表日期：1分钟 前</span>
                    <div class="content-body">简写属性在一个声明中设置所有外边距属性。该属性可以有 1 到 4 个值。 说明 这个简写属性设置一个元素所有外边距的宽度,或者设置各边上外边距</div>
                    <c:forEach items="${articles}" var="article">
                        <span class="content-title"><a href="#">${article.articleTitle}</a> </span><br/>
                        <span class="content-info" style="font-size: 12px">作者：<a href="#">${article.articleUserid}</a></span>  <span style="float: right;font-size: 12px" >发表日期：${article.articleLastmodify}</span>
                        <div class="content-body" id="111111">${article.articleContent}</div>
                    </c:forEach>
                </div>
            </div>
        </div>
        <div class="col-lg-4">
            <div class="panel panel-success" style="margin: 5px;height: 400px">
                <div class="panel-heading">
                    <span class="glyphicon glyphicon-book" aria-hidden="true"></span>
                    精选分类
                </div>
                <div class="panel-body">
                    <button class="btn btn-default" style="margin: 3px">精选文章</button>
                    <button class="btn btn-success">redisfangda1fbvfjkdbfd</button>
                   <%-- <button class="btn btn-block">java虚拟机</button>--%>
                    <button class="btn btn-danger">spring</button>
                    <button class="btn btn-warning">mybatis</button>
                    <button class="btn btn-danger" style="margin: 3px">vsnkdvsjkjjjjjjjj</button>
                </div>
            </div>
        </div>
        <div class="col-lg-4">
            <div class="panel panel-success" style="margin: 5px;height: 400px">
                <div class="panel-heading">
                    <span class="glyphicon glyphicon-book" aria-hidden="true"></span>
                    个人主页
                </div>
                <div class="panel-body">
                    热门的博客文章热门的博客文章热门的博客文章热门的博客文章热门的博客文章热门的博客文章热门的博客文章热门的博客文章热门的博客文章
                </div>
            </div>
        </div>
    </div>



</body>
</html>
