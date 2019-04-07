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
                <img src="${pageContext.request.contextPath}/img/001.jpg" height="300">
            </div>
            <div class="item">
                <img src="${pageContext.request.contextPath}/img/003.jpg" height="300">
            </div>
            <div class="item">
                <img src="${pageContext.request.contextPath}/img/005.jpg" height="300">
            </div>

            <div class="item">
                <img src="${pageContext.request.contextPath}/img/006.jpg" height="300">
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
</body>
</html>
