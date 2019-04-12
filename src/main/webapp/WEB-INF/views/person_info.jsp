<%--
  Created by IntelliJ IDEA.
  User: renlong
  Date: 2019/4/8
  Time: 22:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
            position: fixed;
            /*background-color: #00aa88;*/
        }
        .content-float{
            float: right;
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
    </style>
</head>
<body>
    <!--把导航栏包含进来-->
    <jsp:include page="navigate.jsp"></jsp:include>

    <!--左右式布局，左边固定，右边页面移动-->
    <div class="container-fluid">
        <div class="row">
<%--            <link href="https://v4.bootcss.com/docs/4.0/examples/dashboard/dashboard.css" rel="stylesheet">--%>
            <nav class="col-md-2 sidebar">

                <div class="panel panel-success">
                    <div class="panel-heading" style="text-align: center">个人信息</div>
                    <div class="panel-body" style="margin: 0px">
                        <%--<ul class="items-group">--%>
                            <div class="item-content isChecked">
                                <span class="glyphicon glyphicon glyphicon-user" aria-hidden="true"></span>
                                <a href="#">我的信息</a></div>
                            <div></div>
                            <div class="item-content ">
                                <span class="glyphicon glyphicon-menu-hamburger" aria-hidden="true"></span>
                                <a href="${pageContext.request.contextPath}/article">文章列表</a></div>
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
<%--            <nav class="col-md-2 d-none d-md-block bg-light sidebar">
                <div class="sidebar-sticky">
                    <ul class="nav flex-column">
                        <li class="nav-item">
                            <a class="nav-link active" href="#">
                                <span data-feather="home"></span>
                                Dashboard <span class="sr-only">(current)</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">
                                <span data-feather="file"></span>
                                Orders
                            </a>
                        </li>
                    </ul>
                </div>
            </nav>--%>

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
                    <ol class="breadcrumb">
                        <li><a href="#">前端技术</a></li>
                        <li><a href="#">BootStrap </a></li>
                        <li class="active">BootStrap 面包屑导航 </li>
                    </ol>
                    <div>
                        <form action="action1" method="post" class="form-horizontal">
                            <div class="input-group">
                                <span class="input-group-addon">标题</span>
                                <input type="text" class="form-control" aria-label="Amount (to the nearest dollar)" name="articleTitle" id="articleTitle" placeholder="请输入标题">
                            </div>
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="input-group">
                                    <span class="input-group-addon">类别</span>
                                    <input type="text" class="form-control" aria-label="Amount (to the nearest dollar)" name="articleCategoryid" id="articleCategoryid" placeholder="请输入分类">
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <%--<div class="panel panel-default">--%>
                                    <span class="col-lg-2 control-label">是否公开</span>
                                    <%--col-sm-2 control-label--%>
                                    <label class="radio-inline">
                                        <input type="radio" name="isPublic" id="inlineRadio1" value="yes"> 是
                                    </label>
                                    <label class="radio-inline">
                                        <input type="radio" name="isPublic" id="inlineRadio2" value="no"> 否
                                    </label>
                                   <%-- </div>--%>
                                </div>

                            </div>

                            <%--默认内容--%>
                            <script id="container" name="articleContent" type="text/plain">
                            </script>
                            <input type="submit" class="btn btn-success" value="发帖">
                        </form>
                        <button class="btn btn-success" onclick="getContent()">获取内容</button>
                        <button class="btn btn-success" onclick="saveContent()">保存内容</button>

                        <script>
                           var ue = UE.getEditor('container',{
                               initialFrameHeight:400
                           });


                           function getContent(){
                               var content = ue.getContent();
                               console.log(content.toString());
                               $.ajax({
                                   url:"${pageContext.request.contextPath}/action1",
                                   type:"POST",
                                   data: {
                                       "articleTitle": $('#articleTitle').val(),
                                       "articleCategoryid": parseInt($('#articleCategoryid').val()),
                                       /*"&isPublic="+$('isPublic').value=="yes"?"是":"否"+*/
                                       "articleContent": content
                                   }
                                   ,
                                   success:function (mes) {
                                       alert("chenggong");
                                       console.log(mes);
                                   },
                                   error:function(){
                                       alert("error");
                                   }
                               });
                           }

                           function saveContent(){
                               var content = ue.getContent();
                               console.log(content.toString());
                               $.ajax({
                                   url:"${pageContext.request.contextPath}/article",
                                   type:"POST",
                                   data: {
                                       "articleTitle": $('#articleTitle').val(),
                                       "articleCategoryid": parseInt($('#articleCategoryid').val()),
                                       /*"&isPublic="+$('isPublic').value=="yes"?"是":"否"+*/
                                       "articleContent": content
                                   }
                                   ,
                                   success:function (mes) {
                                       alert("chenggong");
                                       console.log(mes);
                                   },
                                   error:function(){
                                       alert("error");
                                   }
                               });
                           }
                        </script>
                    </div>
                </div>
            </main>
</body>
</html>
