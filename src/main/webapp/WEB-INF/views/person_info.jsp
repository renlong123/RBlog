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
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">新建分类</h4>
            </div>
            <div class="modal-body" id="articledesc">
                <form class="form-horizontal">
                    <div class="form-group">
                        <label for="inputcategory" class="col-sm-2 control-label">分类名</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" onblur="checkIsUnic()" id="inputcategory" placeholder="分类名,不能为空且不能重复">
                            <span id="helpBlock1" class="help-block"></span>
                        </div>

                    </div>
                    <div class="form-group">
                        <label for="inputPassword3" class="col-sm-2 control-label">描述</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="inputPassword3" placeholder="描述">
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                <button type="button" class="btn btn-primary" id="newcategoryreal" onclick="newcategoryreal()">新建</button>
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
            <nav class="col-lg-2 sidebar">

                <div class="panel panel-success">
                    <div class="panel-heading" style="text-align: center">个人信息</div>
                    <div class="panel-body" style="margin: 0px">
                        <%--<ul class="items-group">--%>
                            <div class="item-content">
                                <span class="glyphicon glyphicon glyphicon-user" aria-hidden="true"></span>
                                <a href="#">我的信息</a></div>
                            <div></div>
                            <div class="item-content ">
                                <span class="glyphicon glyphicon-menu-hamburger" aria-hidden="true"></span>
                                <a href="${pageContext.request.contextPath}/article">文章列表</a></div>
                            <div></div>
                            <div class="item-content isChecked">
                                <span class="glyphicon glyphicon-menu-hamburger" aria-hidden="true"></span>
                                <a href="#">编辑内容</a></div>
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

            <main role="main" class="col-lg-10 content-float">
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
                        <li><a href="#">新建</a></li>
                        <li class="active">新建博客</li>
                    </ol>
                    <div>
                        <form action="action1" method="post" class="form-horizontal">
                            <%--<div class="form-group">
                                <label for="articleTitle" class="col-sm-1 control-label" >
                                    标题</label>
                                <div class="col-sm-11">
                                    <input type="text" class="form-control " name="articleTitle" id="articleTitle" placeholder="请输入标题">
                                </div>
                            </div>--%>
                            <div>
                                <div class="input-group">
                                    <span class="input-group-addon">标题</span>
                                    <input type="text" class="form-control" aria-label="Amount (to the nearest dollar)"
                                           name="articleTitle" id="articleTitle" placeholder="请输入标题,标题不能为空"
                                           <%--value="${article.articleTitle}"--%>  onblur="checkedIsUsed()">

                                </div>
                                    <span id="helpBlock2" class="help-block"></span>
                            </div>
                            <%--<div class="form-group">
                                &lt;%&ndash;<div class="form-group">&ndash;%&gt;
                                    <label for="department" class="col-sm-1 control-label">部门</label>
                                        <div class="col-sm-4 " id="department">
                                            <select class="form-control" name="dId" id="xyz">
                                                <option>dsjfbhj</option>
                                                <option>dsjfsdsbhj</option>
                                            </select>
                                        </div>

                            </div>--%>
                                <div class=".container-fluid">
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <div class="input-group ">
                                                <div class="input-group-addon">
                                                    <%--<label class="input-group-text" for="inputGroupSelect01">--%>类别<%--</label>--%>
                                                </div>
                                                <select class="form-control custom-select" id="inputGroupSelect01">

                                                </select>

                                            </div>
                                        </div>
                                        <div class="col-sm-1">
                                            <button class="btn btn-default" type="button" onclick="createNewCategory()">新建分类</button>
                                        </div>
                                    </div>

                                </div>





                            <%--默认内容--%>
                            <script id="container" name="articleContent" type="text/plain">
                            </script>
                            <%--<input type="submit" class="btn btn-success" value="发帖">--%>
                        </form>
                        <%--<button class="btn btn-success" onclick="getContent()">获取内容</button>--%>
                        <button class="btn btn-success" onclick="saveContent()">发帖</button>

                        <script>
                            function createNewCategory(){
                                $("#myModal").modal();

                            }
                            
                            function newcategoryreal() {
                                $.ajax({
                                    url:"${pageContext.request.contextPath}/category",
                                    type:"POST",
                                    data:{
                                        "categoryName":$("#inputcategory").val(),
                                        "categoryDescription":$("#inputPassword3").val()
                                    },
                                    success:function (mes) {

                                           // alert(mes);
                                        requestCategory();
                                        $("#myModal").modal('hide');
                                    },
                                    fail:function () {
                                        alert("error");
                                    }
                                });
                            }

                            function checkIsUnic(){

                                if($("#inputcategory").val()==""){
                                    $("#inputcategory").parent().addClass("has-error");
                                    $("#helpBlock1").text("分类不能为空");
                                }else{
                                    $.ajax({
                                        url:"${pageContext.request.contextPath}/forcheck",
                                        type:"GET",
                                        data:{
                                          "categoryName":$("#inputcategory").val()
                                        },
                                        success:function (mes) {

                                            if(mes!=0){
                                                $("#inputcategory").parent().addClass("has-error");
                                                $("#helpBlock1").text("分类已经存在");
                                            }else{
                                                $("#inputcategory").parent().addClass("has-success");
                                                $("#helpBlock1").empty();
                                            }
                                        },
                                        fail:function () {
                                            alert("error");
                                        }
                                    });
                                }
                            }

                            $(function () {

                                requestCategory();
                            });

                            function requestCategory(){
                                $.ajax({
                                    url:"${pageContext.request.contextPath}/category",
                                    type:"GET",
                                    success:function (mes) {
                                        console.log(mes);
                                        fullSelect(mes);

                                    },
                                    error:function(){
                                        alert("error");
                                    }
                                });
                            }

                            function fullSelect(mes){
                                $("#inputGroupSelect01").empty();
                                var list = mes;
                                /*console.log(list);*/
                                $.each(list,function(index,ite){
                                    var optionws = $("<option></option>").attr("value",ite.categoryId).append(ite.categoryName);
                                    optionws.appendTo($("#inputGroupSelect01"));
                                    /*alert(ite.categoryId);*/
                                });
                                /*alert($('#inputGroupSelect01 option:selected').val());*/
                            }

                           var ue = UE.getEditor('container',{
                               initialFrameHeight:400
                           });

                            /**
                             * 用作校验标题是否为空
                             */
                            function checkedIsUsed(){
                                if($("#articleTitle").val()==""){
                                    $("#articleTitle").parent().parent().addClass("has-error");
                                    $("#helpBlock2").text("标题不能为空");
                                }else{
                                    $("#articleTitle").parent().parent().addClass("has-success");
                                    $("#helpBlock2").text("标题可以使用");
                                }
                            }

                           function getContent(){
                               /*ue.execCommand('insertimage', {
                                   style: 'max-width:100%'
                               });*/
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
                              /* ue.execCommand('insertimage', {
                                   style: 'max-width:100%'
                               });*/
                               var content = ue.getContent();
                               console.log(content.toString());
                               $.ajax({
                                   url:"${pageContext.request.contextPath}/article",
                                   type:"POST",
                                   data: {
                                       "articleTitle": $('#articleTitle').val(),
                                       "articleCategoryid": parseInt($('#inputGroupSelect01 option:selected').val()),
                                       /*"&isPublic="+$('isPublic').value=="yes"?"是":"否"+*/
                                       "articleContent": content
                                   }
                                   ,
                                   success:function (mes) {
                                       /*alert("chenggong");*/
                                       window.location.href="${pageContext.request.contextPath}/article";
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
