<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>


<html>
<head>

    <base href="<%=basePath%>">
    <script type="text/javascript" src="js/jquery-3.1.0.min.js"></script>
    <%--<script src="http://code.jquery.com/jquery-latest.js"></script>--%>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
    <script type="text/javascript">

        $(document).ready(function () {
            //传递字符串格式json对象到后台（一个json对象）
            $("#serialbtn").click(function () {

                $.ajax({
                    type : 'POST',
                    url : 'demo',
//                    dataType : 'json',
//                    contentType:'application/json',
                    data: $("#user").serialize(),
//                    cache:false,
                    success : function(response) {
                        //请求成功
                        alert("你好"+response.username);
                        alert("你好"+response.age);

                    },
                    error : function(msg) {
                        alert("error"+msg);
                    }
                });
            });
            $("#jsonbtn").click(function (){
                var name=$("#username").val();
                var age=$("#age").val();
                var json={"username":name,"age":age};
                console.log(json);
                $.ajax({
                    type:"POST",
                    url:"demo/json",
//                    contentType: "application/json;charset=utf-8",
                    data:JSON.stringify(json),
                    success : function(response) {
                        //请求成功
                        alert("你好"+response);
                    },
                    error : function(msg) {
                        alert("error"+msg);
                    }
                });
            });
        });

    </script>
</head>
<body>
<h1>json添加用户</h1>

<form id="user">
姓名：<input id="username" type="text" name="username">
年龄:<input id="age" type="text" name="age"><br>
<input type="button" id="serialbtn" value="serialbtn" >
<input type="button" id="jsonbtn" value="jsonbtn" >
</form>


</body>
</html>
