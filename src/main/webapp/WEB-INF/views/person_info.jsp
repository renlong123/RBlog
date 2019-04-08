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
                    <h1 class="h2">Dashboard</h1>
                    <div class="btn-toolbar mb-2 mb-md-0">
                        <div class="btn-group mr-2">
                            <button class="btn btn-sm btn-outline-secondary">Share</button>
                            <button class="btn btn-sm btn-outline-secondary">Export</button>
                        </div>
                        <button class="btn btn-sm btn-outline-secondary dropdown-toggle">
                            <span data-feather="calendar"></span>
                            This week
                        </button>
                    </div>
                    <div>
                        <table>
                            <tr>
                                <td>vldfnvjf</td>
                            </tr>
                            <tr>
                                <td>vldfnvjf</td>
                            </tr>
                            <tr>
                                <td>vldfnvjf</td>
                            </tr>
                            <tr>
                                <td>vldfnvjf</td>
                            </tr>
                            <tr>
                                <td>vldfnvjf</td>
                            </tr>
                            <tr>
                                <td>vldfnvjf</td>
                            </tr>
                            <tr>
                                <td>vldfnvjf</td>
                            </tr>
                            <tr>
                                <td>vldfnvjf</td>
                            </tr>
                            <tr>
                                <td>vldfnvjf</td>
                            </tr>
                            <tr>
                                <td>vldfnvjf</td>
                            </tr>
                            <tr>
                                <td>vldfnvjf</td>
                            </tr>
                            <tr>
                                <td>vldfnvjf</td>
                            </tr>
                            <tr>
                                <td>vldfnvjf</td>
                            </tr>
                            <tr>
                                <td>vldfnvjf</td>
                            </tr>

                        </table>
                    </div>
                </div>

            </main>

</body>
</html>
