<%--
  Created by IntelliJ IDEA.
  User: alfred
  Date: 16/9/8
  Time: 下午4:53
  To change this template use File | Settings | File Templates.
--%>
<%--加载表单示例--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <script type="text/javascript" src="js/jquery-3.1.0.min.js"></script>

    <script>
        $(document).ready(function(){
            $("#btn1").click(function(){
                alert("success");
                $('#test').load('/demo_test.txt');
            })
        })
    </script>
</head>

<body>

<h3 id="test">请点击下面的按钮，通过 jQuery AJAX 改变这段文本。</h3>
<button id="btn1" type="button">获得外部的内容</button>

</body>
</html>
