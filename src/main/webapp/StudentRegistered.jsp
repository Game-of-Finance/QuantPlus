<%@ page language="java" contentType="text/html; charset=GBK"
         pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <title>User Registered</title>
</head>
<body>
<center>
    <span class="STYLE2">Student Registered</span>
</center>
<br>
<table align="center" border="1">
    <tr>
        <td height="100"><span class="STYLE2">user name:</span></td>
        <td height="100"><span class="STYLE2">${param.name }</span></td>
    </tr>
    <tr>
        <td height="100"><span class="STYLE2">password:</span></td>
        <td height="100"><span class="STYLE2">${param.password }</span></td>
    </tr>
    <tr>
        <td height="100"><span class="STYLE2">college:</span></td>
        <td height="100"><span class="STYLE2">${param.college }</span></td>
    </tr>
    <tr>
        <td height="100" colspan="2" align="center"><a href="StudentRegistration.jsp" class="STYLE2">return to
            registration</a></td>
    </tr>
</table>
</body>
</html>