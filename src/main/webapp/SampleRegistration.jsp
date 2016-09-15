<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>LOF Index</title>

    <!-- Bootstrap -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">


    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>

    <link href="bootstrap/css/navbar.css" rel="stylesheet">

    <![endif]-->
</head>
<body>
<h1 align="center">Student Registration Page</h1>
<form method="post" action="StudentAction.do?method=HandleStudentRegistrationFormSubmit" class="form">
    <table width="280" border="0" align="center">
        <tr>
            <td width="87" align="center" valign="middle">
                <div align="right">name:</div>
            </td>
            <td width="183">
                <label>
                    <input name="name" type="text" id="name" maxlength="10"/>
                </label>
            <td>
        </tr>
        <tr>
            <td height="37" align="center" valign="middle">
                <div align="right">password:</div>
            </td>
            <td>
                <label>
                    <input name="password" type="text" id="password" maxlength="20"/>
                </label>
            </td>
        </tr>
        <tr>
            <td height="37" align="center" valign="middle">
                <div align="right">college:</div>
            </td>
            <td>
                <label>
                    <input name="college" type="text" id="college" maxlength="20"/>
                </label>
            </td>
        </tr>
        <tr>
            <td align="center" valign="middle">
                <input type="submit" name="Submit" value="submit"/>
            </td>
            <td>
                <input name="reset" type="reset" id="reset" value="reset"/>
            </td>
        </tr>
    </table>
</form>

</body>
</html>