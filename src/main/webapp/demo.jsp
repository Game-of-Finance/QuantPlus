<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


    <script type="text/javascript" src="js/jquery-3.1.0.min.js"></script>
    <%--<script src="http://code.jquery.com/jquery-latest.js"></script>--%>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
    <script type="text/javascript">

        $(document).ready(function () {
            //传递字符串格式json对象到后台（一个json对象）
            $("#resolveJsonObject").click(function () {
                alert("click");

                var userName = encodeURI($("#userName").attr("value"));
                var age = encodeURI($("#age").attr("value"));
                var data={name: userName, age: age};
                var json = $.toJSON(data);

                $.ajax({
                    type: "POST",
                    url: "/demo/json",
                    dataType: "json",
                    contentType: "application/json; charset=utf-8",
                    data: json,
                    async: false,    //Cross-domain requests and dataType: "jsonp" requests do not support synchronous operation
                    cache: false,    //This will force requested pages not to be cached by the browser
                    processData:false, //To avoid making query String instead of JSON
                    success: function (data) {
                        alert("success")
                        if (data && data.result) {
                            var content = data.data;
                            alert(content)
                        } else {
                            var error = data.message;
                            alert(error);
                        }

                    },
                    error: function (data) {
                        alert("error"+data)
                    }
                });
            })





    </script>
</head>
<body>
<h1>json添加用户</h1>

姓名：<input id="userName" type="text" name="userName">
年龄:<input id="age" type="text" name="age"><br>
<input type="button" id="resolveJsonObject" value="json对象" >

</body>
</html>
