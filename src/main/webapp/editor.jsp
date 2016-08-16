<%--
  Created by IntelliJ IDEA.
  User: kylin
  Date: 16/8/15
  Time: 23:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>发起主题</title>
    <link rel="stylesheet" type="text/css" href="wangEditor/dist/css/wangEditor.min.css">
    <style type="text/css">
        #div1,#div2 {
            width: 100%;
            height: 150px;
        }
    </style>
    <script type="text/javascript" src="wangEditor/dist/js/lib/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="wangEditor/dist/js/wangEditor.js"></script>
</head>
<body style="padding:0 20px;">
<%--<p>wangEditor2.0 demo演示（功能尚未开发完成），支持 IE8+ 浏览器</p>--%>
<div id="div1">
    <%--<p>请输入内容...</p>--%>
</div>


<!--这里引用jquery和wangEditor.js-->
<script type="text/javascript">
    var editor = new wangEditor('div1');
    editor.create();
</script>



</body>
</html>