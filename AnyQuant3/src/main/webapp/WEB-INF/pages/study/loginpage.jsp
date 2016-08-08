<%@ page isELIgnored="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Login</title>
</head>
<body>
<h1>Login</h1>
<div id="login-error" style="color: #F00"><%=request.getAttribute("error")%></div>
<div id="login-error" style="color: #F00">${requestScope.error}</div>
<form action="../j_spring_security_check" method="post">
    <p>
        <label>Username</label>
        <input id="j_username" name="j_username" type="text" />
    </p>
    <p>
        <label>Password</label>
        <input id="j_password" name="j_password" type="password" />
    </p>
    <input type="submit" value="Login" />
</form>
</body>
</html>