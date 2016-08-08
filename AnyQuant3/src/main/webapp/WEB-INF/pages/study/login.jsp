<%--
  Created by IntelliJ IDEA.
  User: kylin
  Date: 16/5/11
  Time: 19:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>login.jsp page</title>
</head>
<body>

<h1>Login</h1>
<div id="login-error" style="color: #F00">
    <%=request.getAttribute("error")%></div>
<%--spring的控制器截取.do的URL进行请求响应--%>
<form action="login.do" method="post">
    userName: <input type="text" name="username"/><br>
    password: <input type="text" name="password"/><br>
    <input type="submit" value="log in">
</form>

</body>
</html>
