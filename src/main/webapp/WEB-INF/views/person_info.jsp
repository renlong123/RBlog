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
                    <div class="panel-body">
                        <ul class="items-group">
                            <li class="item-content"><a href="#">我的信息</a></li>
                            <div></div>
                            <li class="item-content"><a href="#">我的信息</a></li>
                            <div></div>
                            <li class="item-content"><a href="#">我的信息</a></li>
                            <hr/>
                            <li class="item-content"><a href="#">我的信息</a></li>
                            <li class="item-content"><a href="#">我的信息</a></li>
                        </ul>
                    </div>
                </div>
            </nav>

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

                        <script id="container" name="content" type="text/plain"></script>
                        <script>
                           var ue = UE.getEditor('container');

                           function getContent(){
                               var content = ue.getContent();
                               console.log(content);
                               $.ajax({
                                   url:"${pageContext.request.contextPath}/test",
                                   type:"POST",
                                   data:{
                                       "content":content
                                   },
                                   success:function () {
                                       alert("chenggong");
                                   },
                                   error:function(){
                                       alert("error");
                                   }
                               });
                           }
                        </script>
                        <button class="btn btn-success" onclick="getContent()">获取内容</button>

                    </div>
                </div>

            </main>

</body>
</html>
