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
        function checkusername() {
            var username = $("#inputcategory").val().trim();
            var patt = /^.{1,50}$/;
            if(patt.test(username)){
                $.ajax({
                    url:"${pageContext.request.contextPath}/userRegister/"+username,
                    type:"GET",
                    data:{
                        "username":username
                    },
                    success:function (mes) {
                        if(mes!=0){
                            $("#helpBlock1").text("用户名已被使用");
                            $("#helpBlock1").parent().addClass("has-error");
                        }else{
                            $("#helpBlock1").text("");
                            $("#helpBlock1").parent().removeClass("has-error").addClass("has-success");
                        }
                    }
                });
            }else{
                $("#helpBlock1").text("用户名格式不正确");
                $("#helpBlock1").parent().addClass("has-error");
            }
        }
        function userRegister() {

            $.ajax({
                url:"${pageContext.request.contextPath}/userRegister",
                type:"POST",
                data:{
                    "userNikename":$("#inputcategory").val().trim(),
                    "userRealname":$("#inputrealname").val().trim(),
                    "userPassword":$("#inputPassword30").val().trim(),
                    "userGender":$('input:radio[name="userGender"]:checked').val().trim(),
                    "userEmail":$("#useremail").val().trim()
                },
                success:function (mes) {
                    alert(mes);
                }
            });
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
                <div style="text-align: center">用户注册</div>
                <div class="form-group">
                    <label for="inputcategory" class="col-sm-3 control-label">用户名</label>
                    <div class="col-sm-9">
                        <input type="text" class="form-control" name="username"
                               onblur="checkusername()" id="inputcategory" placeholder="用户名不能为空">
                        <span id="helpBlock1" class="help-block"></span>
                    </div>
                </div>
                <div class="form-group">
                <label for="inputrealname" class="col-sm-3 control-label">真实姓名</label>
                <div class="col-sm-9">
                    <input type="text" class="form-control" name="username" id="inputrealname" placeholder="真实姓名不能为空">
                    <span id="helpBlock2" class="help-block"></span>
                </div>
            </div>
                <div class="form-group">
                    <label for="inputPassword30" class="col-sm-3 control-label">密码</label>
                    <div class="col-sm-9">
                        <input type="password" class="form-control" id="inputPassword30" name="password" placeholder="密码">
                        <span id="helpBlock30" class="help-block"></span>
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputPassword31" class="col-sm-3 control-label">确认密码</label>
                    <div class="col-sm-9">
                        <input type="password" class="form-control" id="inputPassword31" name="password" placeholder="再输入一次密码">
                        <span id="helpBlock31" class="help-block"></span>
                    </div>
                </div>
                <div class="form-group">
                    <label for="useremail" class="col-sm-3 control-label">邮箱</label>
                    <div class="col-sm-9">
                        <input type="email" class="form-control" name="username" id="useremail" placeholder="邮箱不能为空">
                        <span id="helpBlock4" class="help-block"></span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">性别</label>
                    <div class="col-sm-9">
                        <label class="radio-inline">
                            <input type="radio" name="userGender" id="userGender1" value="1" checked="checked"> 男
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="userGender" id="userGender2" value="0"> 女
                        </label>
                    </div>
                </div>
                <div class="form-group" style="text-align: center">
                    <button class="btn btn-danger btn-block" style="margin: auto" onclick="userRegister()">一键注册</button>
                </div>
                <%-- </form>--%>
            </div>
        </div>
    </div>
</div>



</body>
</html>
