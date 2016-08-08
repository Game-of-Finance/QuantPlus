<%--
  Created by IntelliJ IDEA.
  User: kylin
  Date: 16/5/11
  Time: 19:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>loginError.jsp</title>
</head>
<body>
    <%--当这个页面被请求时,从request对象中取得msg的值,是一个请求者定义好的值--%>
    sorry,log in failed,reason:<%=request.getAttribute("msg")%>>
</body>
</html>
