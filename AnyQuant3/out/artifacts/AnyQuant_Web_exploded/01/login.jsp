<%--
  Created by IntelliJ IDEA.
  User: Seven
  Date: 16/5/4
  Time: 下午8:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登陆页面</title>
</head>
<body>
    <form action="/loginServlet">
        userName:<input type="text" name="uname" /> <br/>
        password:<input type="password" name="upwd" /> <br/>
        <input type="submit" value="Login"/>
        <input type="reset" value="Reset"/>
    </form>
</body>
</html>
