<%--
  Created by IntelliJ IDEA.
  User: renlong
  Date: 2019/4/8
  Time: 22:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        .floatname{
            position: absolute;
            top: 200px;
            z-index: 999;
        }
    </style>
</head>
<body>
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">修改用户</h4>
            </div>
            <div class="modal-body" id="articledesc">
                <form class="form-horizontal" method="POST" action="${pageContext.request.contextPath}/updateUser" enctype="multipart/form-data">
                    <div class="form-group">
                        <label for="inputcategory" class="col-sm-2 control-label">用户名</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" readonly="readonly" name="userNikename" id="inputcategory" value="${sessionScope.username}">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputPassword3" class="col-sm-2 control-label">姓名</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="userRealname" id="inputPassword2" placeholder="描述">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputPassword3" class="col-sm-2 control-label">邮箱</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="userEmail" id="inputPassword3" placeholder="描述">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputPassword3" class="col-sm-2 control-label">头像</label>
                        <div class="col-sm-10">
                            <input type="file"  name="file" id="inputPassword4" accept="image/*"/>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-primary" id="newcategoryreal1">新建</button>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                <button type="submit" class="btn btn-primary" id="newcategoryreal" onclick="/*newcategoryreal()*/">新建</button>
            </div>
        </div>
    </div>
</div>
    <!--把导航栏包含进来-->
    <jsp:include page="navigate.jsp"></jsp:include>

    <!--左右式布局，左边固定，右边页面移动-->
    <div class="container-fluid">
        <div class="row">
<%--            <link href="https://v4.bootcss.com/docs/4.0/examples/dashboard/dashboard.css" rel="stylesheet">--%>
            <nav class="col-sm-2 sidebar">
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
                            <div class="item-content">
                                <span class="glyphicon glyphicon-menu-hamburger" aria-hidden="true"></span>
                                <a href="${pageContext.request.contextPath}/articleNew">新建文章</a></div>
                            <div></div>
                            <div class="item-content">
                                <span class="glyphicon glyphicon-menu-hamburger" aria-hidden="true"></span>
                                <a href="${pageContext.request.contextPath}/categoryjump">分类列表</a></div>
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


            <main role="main" class="col-sm-10 content-float">
                <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pb-2 mb-3 border-bottom">
                    <ol class="breadcrumb">
                        <li><a href="#">个人信息</a></li>
                        <li class="active">我的资料</li>
                    </ol>
                    <div>
                        <div class="panel panel-default">
                            <div class="panel-body">
                                <div style="">
                                    <img src="${pageContext.request.contextPath}/img/005.jpg" style="width: 100%;opacity:0.5">
                                </div>
                                <%--<table class="table table-bordered" width="90%" style="float: bottom">--%>
                            </div>
                        </div>
                        <div class="panel panel-success">
                            <div class="panel-heading">
                                <a href="#" style="float: right;" onclick="changeUser('${sessionScope.username}')">修改</a>
                            </div>
                            <div class="panel-body">
                                <div class=".container-fluid">
                                    <div class="row">
                                        <div class="col-xs-6">
                                            <div style="font-size: 30px" style="float: bottom">
                                                ${sessionScope.username}
                                            </div>
                                        </div>
                                        <div class="col-xs-6">
                                            <div style="height: 100px;width: 100px;float: right;border: #449d44;border-width: 3px">
                                                <img src="${pageContext.request.contextPath}/img/saves/${user.userHeadportait}" style="height: 100px;width: 100px;">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-xs-2">
                                            关注
                                        </div>
                                        <div class="col-xs-1">
                                            <%--${user.userFollow}--%>
                                        </div>
                                        <div class="col-xs-2">
                                            粉丝
                                        </div>
                                        <div class="col-xs-1">
                                            <%--${user.userFollowed}--%>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-xs-12">${sessionScope.userDescription}</div>
                                    </div>
                                    <div class="row">
                                        <div class="col-xs-3">
                                            真实姓名
                                        </div>
                                        <div class="col-xs-3">
                                            ${sessionScope.userRealname}
                                        </div>
                                        <div class="col-xs-3">
                                            邮箱
                                        </div>
                                        <div class="col-xs-3">
                                            ${sessionScope.userEmail}
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-xs-3">
                                            性别
                                        </div>
                                        <div class="col-xs-3">
                                            ${sessionScope.userGender==1?"男":"女"}
                                        </div>
                                        <div class="col-xs-3">
                                            注册时间
                                        </div>
                                        <div class="col-xs-3">
                                            ${sessionScope.userRegisterdate}
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="panel panel-success">
                            <div class="panel-heading">
                                <span class="glyphicon glyphicon-book" aria-hidden="true"></span>
                                我发表的文章
                                <a href="${pageContext.request.contextPath}/article" style="float: right">查看更多</a>
                            </div>
                            <div class="panel-body" id="content-area">
                            </div>
                        </div>
                        <script>
                            $(function () {
                                addArticle();
                               // addUserinfo(1);
                            });

                            function addArticle() {
                                searchArticle();
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

                            /*显示文章数据*/
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

                            function changeUser(username) {
                                $.ajax({
                                    url:"${pageContext.request.contextPath}/UserName/"+username,
                                    type:"GET",
                                    success:function (data) {
                                        showData1(data);
                                    },
                                    error:function(){
                                        alert("error");
                                    }
                                });
                            }

                            function showData1(data) {
                                $("#myModal").modal();
                            }


                            /*文档加载完成后立刻查询用户信息*/
                            /*function addUserinfo(userId){
                                $.ajax({
                                    url:"<%--${pageContext.request.contextPath}--%>/User/"+userId,
                                    type: "GET",
                                    success: function (data) {
                                        console.log(data);
                                    }
                                });
                            }*/

                        </script>
                    </div>
                </div>
            </main>
</body>
</html>
