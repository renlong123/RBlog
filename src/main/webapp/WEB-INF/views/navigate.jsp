<%--
  Created by IntelliJ IDEA.
  User: renlong
  Date: 2019/4/7
  Time: 22:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <script>
        function confirmquit() {
            var quitdailog = confirm("确定退出？");
            if(quitdailog){
                window.location.href="${pageContext.request.contextPath}/userLoginOut";
            }
        }
    </script>
</head>
<body>
<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">RBLOG</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li ><a href="${pageContext.request.contextPath}/">首页 <span class="sr-only">(current)</span></a></li>
                <li><a href="${pageContext.request.contextPath}/article">热门文章</a></li>
                <c:if test="${sessionScope.username!=null}">
                    <li><a href="${pageContext.request.contextPath}/UserName/${sessionScope.username}">个人主页</a></li>
                </c:if>
                <c:if test="${sessionScope.username==null}">
                    <li><a href="${pageContext.request.contextPath}/userLogin">个人主页</a></li>
                </c:if>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">更多<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Java</a></li>
                        <li><a href="#">C++</a></li>
                        <li><a href="#">Something else here</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="#">Separated link</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="#">One more separated link</a></li>
                    </ul>
                </li>
            </ul>
            <form class="navbar-form navbar-right">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Search">
                </div>
                <button type="submit" class="btn btn-default">一键搜索</button>
            </form>
            <ul class="nav navbar-nav navbar-right">
                <c:if test="${sessionScope.username!=null}">
                    <li><a href="${pageContext.request.contextPath}/UserName/${sessionScope.username}">${sessionScope.username}</a></li>
                    <li><a href="#" onclick="confirmquit()">退出</a></li>
                </c:if>
                <c:if test="${sessionScope.username==null}">
                    <li><a href="${pageContext.request.contextPath}/userLogin">登陆</a></li>
                    <li><a href="${pageContext.request.contextPath}/userRegister">注册</a></li>
                </c:if>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">更多 <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">哈哈</a></li>
                        <li><a href="#">Another action</a></li>
                        <li><a href="#">Something else here</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="#">Separated link</a></li>
                    </ul>
                </li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
</body>
</html>
