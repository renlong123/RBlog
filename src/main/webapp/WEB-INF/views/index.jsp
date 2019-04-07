<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: renlong
  Date: 2019/4/7
  Time: 17:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>haha</title>
</head>
<body>
    <table>
        <c:forEach items="${list}" var="useri">
            <tr>
                <td>${useri.userId}</td>
                <td>${useri.userNikename}</td>
                <td>${useri.userDescription}</td>
                <td>${useri.userEmail}</td>
                <td>${useri.userPassword}</td>
                <td>${useri.userGender==1?"男":"女"}</td>
            </tr>
        </c:forEach>
    </table>

</body>
</html>
