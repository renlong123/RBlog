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
    <style>
        body{
            padding-top: 70px;
        }
    </style>
</head>
<body>


    <jsp:include page="WEB-INF/views/navigate.jsp"></jsp:include>
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
            <div class="panel panel-success" style="margin: 5px;height: 400px">
                <div class="panel-heading">
                    <span class="glyphicon glyphicon-book" aria-hidden="true"></span>
                    最新文章
                    <a href="${pageContext.request.contextPath}/article" style="float: right">查看更多</a>
                </div>
                <div class="panel-body" id="content-area">
                </div>
            </div>
        </div>
        <div class="col-lg-4">
            <div class="panel panel-success" style="margin: 5px;height: 400px">
                <div class="panel-heading">
                    <span class="glyphicon glyphicon-book" aria-hidden="true"></span>
                    精选分类
                    <a href="#" style="float: right">查看更多</a>
                </div>
                <div class="panel-body" id="categorycontent">
                    <%--<button class="btn btn-default" style="margin: 3px">精选文章</button>
                    <button class="btn btn-success">redisfangda1fbvfjkdbfd</button>
                   &lt;%&ndash; <button class="btn btn-block">java虚拟机</button>&ndash;%&gt;
                    <button class="btn btn-danger">spring</button>
                    <button class="btn btn-warning">mybatis</button>
                    <button class="btn btn-danger" style="margin: 3px">vsnkdvsjkjjjjjjjj</button>--%>
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

    <script type="text/javascript" charset="UTF-8">
        $(function () {
            addArticle();
        });

        function addArticle() {
            searchArticle();
            searchCategory();
        }

        function searchArticle(){
            $.ajax({
                url:"${pageContext.request.contextPath}/selectThree",
                type:"GET",
                success:function (data) {
                    showData(data);
                },
                error:function(){
                    alert("error");
                }
            });
        }

        function showData(data){
            $.each(data,function(index,item){
                var time = new Date(item.articleLastmodify);
                var getString = time.getFullYear()+"-"+(time.getMonth()+1)+"-"+time.getDate();
                var content_text=$("#content-area");
                var title = $("<span></span>").addClass("content-title").attr("style","font-size:16px").append($("<a href='#'></a>").append(item.articleTitle));
                var author = $("<span></span>").addClass("content-info").attr("style","font-size:12px").append("作者：").append($("<a href='#'></a>").append("任龙"));
                var time = $("<span></span>").attr("style","font-size:12px;float:right").append("发表日期："+getString);
                var content = $("<div></div>").addClass("content-body").append(item.articleSubContent);
                content_text.append(title)
                    .append($("<br/>"))
                    .append(author)
                    .append(time)
                    .append(content)
                    .append($("<hr/>"));

            });

        }

        function searchCategory() {
            $.ajax({
                url:"${pageContext.request.contextPath}/category",
                type:"GET",
                success:function (data) {
                    showCategoryData(data);
                },
                error:function(){
                    alert("error");
                }
            });
        }

        function showCategoryData(data) {
            $.each(data,function(index,item){
                var content_text=$("#categorycontent");
                var title = $("<span></span>").addClass("btn btn-default").attr("style","margin:3px")
                    .attr("value",item.categoryId).append(item.categoryName);
                content_text.append(title);
            });
        }

    </script>

</body>
</html>
