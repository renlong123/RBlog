<%--
  Created by IntelliJ IDEA.
  User: renlong
  Date: 2019/4/15
  Time: 22:11
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

    <style>
        /*.container-fluid{
            margin-top: 70px;
        }*/
    </style>
    <script>
        function userLogin() {
            $.ajax({
                url:"${pageContext.request.contextPath}/userLogin",
                type:"POST",
                data: {
                    "username":$("#inputcategory").val().trim(),
                    "password":$("#inputPassword3").val().trim()
                }
                ,
                success:function (mes) {
                    showResults(mes);
                },
                error:function(){
                    alert("error");
                }
            });
        }

        function showResults(mes) {
            if(mes==0){
                $("#helpBlock1").text("用户名不存在");
                $("#inputcategory").parent().addClass("has-error");
                /*$("#helpBlock2").text("");
                $("#inputPassword3").parent().addClass("has-success");*/
            }else if(mes==1){
                $("#helpBlock1").text("");
                $("#inputcategory").parent().addClass("has-success");
                $("#helpBlock2").text("密码错误");
                $("#inputPassword3").parent().addClass("has-error");
            }else{
                window.location.href="${pageContext.request.contextPath}/welcome.jsp";
            }
        }
    </script>
</head>
<body>
<jsp:include page="navigate.jsp"></jsp:include>

<div class="container-fluid" style="margin-top: 70px">
    <div class="row">
        <div class="col-xs-8">
            <img src="${pageContext.request.contextPath}/img/007.jpg" style="width: 100%">
        </div>
        <div class="col-xs-4">

            <div>
                <%--<form class="form-horizontal" action="/userLogin" method="post">--%>
                    <div style="text-align: center"><font size="22px" style="text-align: center">用户登陆</font></div>
                    <br/>
                    <div class="form-group">
                        <label for="inputcategory" class="col-sm-3 control-label">用户名</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" name="username" id="inputcategory" placeholder="用户名">
                            <span id="helpBlock1" class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputPassword3" class="col-sm-3 control-label">密码</label>
                        <div class="col-sm-9">
                            <input type="password" class="form-control" id="inputPassword3" name="password" placeholder="密码">
                            <span id="helpBlock2" class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group" style="text-align: center">
                        <button type="submit" class="btn btn-success" value="" onclick="userLogin()">登陆</button>
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        <button class="btn btn-danger" value="" href="${pageContext.request.contextPath}/userRegister">注册</button>
                    </div>
               <%-- </form>--%>
            </div>
        </div>
    </div>
</div>



</body>
</html>
