<%--
  Created by IntelliJ IDEA.
  User: renlong
  Date: 2019/4/8
  Time: 22:09
  作用是为了展示所有文章
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        .float-div{
            position: absolute;
            width: 300px;
            height: 50px;
            top:11px;
            left: 300px;
            text-align: center;
            z-index: 999;
            background-color: #00cc00;
            background: rgba(00,22,33,0.5);
            display: none;
        }
        .table-bordered > tbody > tr > td
        {
            border: white 0px solid;
        }
        .table-bordered{
            border: white 0px solid;
        }
    </style>
</head>
<body>

<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">确定要删除这个分类吗？这个分类下所有文章都会被删除！</h4>
            </div>
            <div class="modal-body" id="articledesc">
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                <button type="button" class="btn btn-primary" id="deletereal">删除</button>
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
        <nav class="col-md-2 sidebar">

            <div class="panel panel-default">
                <div class="panel-heading" style="text-align: center">个人信息</div>
                <div class="panel-body" style="margin: 0px">
                    <%--<ul class="items-group">--%>
                    <div class="item-content ">
                        <span class="glyphicon glyphicon glyphicon-user" aria-hidden="true"></span>
                        <a href="#">我的信息</a></div>
                    <div></div>
                    <div class="item-content">
                        <span class="glyphicon glyphicon-menu-hamburger" aria-hidden="true"></span>
                        <a href="${pageContext.request.contextPath}/article">文章列表</a></div>
                    <div></div>
                    <div class="item-content">
                        <span class="glyphicon glyphicon-menu-hamburger" aria-hidden="true"></span>
                        <a href="${pageContext.request.contextPath}/person">编辑内容</a></div>
                    <div></div>
                        <div class="item-content isChecked">
                            <span class="glyphicon glyphicon-menu-hamburger" aria-hidden="true"></span>
                            <a href="#">分类列表</a></div>
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
                <div class="float-div" id="tipcontent">
                    删除成功！
                </div>
                <ol class="breadcrumb" style="margin-left: 14px;margin-right: 14px">
                    <li><a href="#">个人信息</a></li>
                    <li class="active">所有分类</li>
                </ol>
                <div>
                    <div class="col-lg-12">
                        <div class="panel panel-default" >
                            <div class="panel-heading">
                                <span class="glyphicon glyphicon-book" aria-hidden="true"></span>
                                所有分类
                                <span style="float: right">
                                    <input type="checkbox" name="selectall" value="" id="checkedAll"/>&nbsp;
                                    <a href="#" id="deleteall">批量删除</a>&nbsp;
                                    <a href="#" id="deleteone">删除</a>
                                </span>
                            </div>
                            <div class="panel-body" id="content-area">

                                <div class=".container-fluid">
                                    <div class="row">
                                        <c:forEach items="${categories}" var="category">
                                            <div class="col-xs-3">
                                                <div class="panel panel-default" style="margin-bottom: 20px;padding: 10px;background-color: lightgray;height: 100px"
                                                     id="categoryitem">
                                                    <span class="glyphicon glyphicon-tag" aria-hidden="true"></span>
                                                    <a href="#" style="float: right">${category.categoryName}</a>
                                                    <div>&nbsp;&nbsp;&nbsp;&nbsp;${category.categoryDescription}</div>
                                                    <div style="position: absolute;top:80px;width:76%;display: none" class="deletediv">
                                                        <input type="checkbox" name="checkboxs" class="checkboxlist" value="${category.categoryId}"/>
                                                        <a href="#" style="float: right"
                                                           onclick="deletecategories('${category.categoryId}','${category.categoryName}','${category.categoryDescription}')">删除</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </c:forEach>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </div>
</div>


<script type="text/javascript">
    /*        $(function(){
                deleteContentById(Article{articleId=1,
                    articleTitle='java多线程', articleCreatedate=Wed Apr 10 00:00:00 CST 2019,
                    articleLastmodify=Sat Apr 13 00:00:00 CST 2019, articleUserid=1, articleCategoryid=3,
                    articleSubContent='图片图片我来了v就卡的  图片     图片  图片  图片yrrrrffffhhhh图片'})");
            });*/
    function deletecategories(categoryId,categoryName,categoryDescription){
        $("#myModal").modal();
        fullBody(categoryName,categoryDescription);
        $("#deletereal").click(function (){
            realDelete(categoryId);
        });
    }

    /**
     * 真正执行删除
     */
    function realDelete(categoryId) {
        $.ajax({
            url:'${pageContext.request.contextPath}/category/'+categoryId.toString(),
            type:"DELETE",
            success:function (mes) {
                /*alert("chenggong");*/
                $("#myModal").modal('hide');
                /*showSuccess();*/
                console.log(mes);
                window.location.href="${pageContext.request.contextPath}/categoryjump";
            },
            error:function(mes){
                alert("error");
                console.log(mes);
            }
        });
        /*window.location.href="<%--${pageContext.request.contextPath}--%>/article";*/
    }

    /**
     * 填充模态框的内容
     */
    function fullBody(articleTitle,articleSubContent) {
        var body = $("#articledesc");
        body.empty();
        var title = $("<div></div>").append(articleTitle);
        var subContent = $("<div></div>").append(articleSubContent);
        body.append(title).append($("<hr/>")).append(subContent);
    }

    $("#checkedAll").click(function(){
        $(".checkboxlist").prop("checked",$(this).prop("checked"));
    });

    $(document).on("click",".checkboxlist",function(){
        var ifff = $(".checkboxlist:checked").length==$(".checkboxlist").length;
        $("#checkedAll").prop("checked",ifff);
    });

    /*点击后显示删除框*/
    $("#deleteone").click(function () {
        $(".deletediv").show();
    });


    $("#deleteall").click(function(){
        var titles = "";
        var ids="";
        $.each($(".checkboxlist:checked"),function(){
            titles += $(this).parent().parent().find("a:eq(0)").text();
            ids += $(this).parent().find("input:eq(0)").val().trim();
            ids += "-";
        });
        console.log(ids);
        if(confirm("确认删除["+titles+"]吗？")){
            $.ajax({
                url:'${pageContext.request.contextPath}/category/'+ids.toString(),
                type:"DELETE",
                success:function (mes) {
                    /*alert("chenggong");*/
                    $("#myModal").modal('hide');
                    /*showSuccess();*/
                    console.log(mes);
                    window.location.href="${pageContext.request.contextPath}/categoryjump";
                },
                error:function(mes){
                    alert("error");
                    console.log(mes);
                }
            });
        }
    });
</script>



</body>
</html>
