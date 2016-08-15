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
    <title>wangEditor2 test</title>
    <link rel="stylesheet" type="text/css" href="wangEditor/dist/css/wangEditor.min.css">
    <style type="text/css">
        #div1,#div2 {
            width: 100%;
            height: 150px;
        }
    </style>
</head>
<body style="padding:0 20px;">
<p>wangEditor2.0 demo演示（功能尚未开发完成），支持 IE8+ 浏览器</p>
<div class="container">
    <div id="div1">
        <h3>标题标题1</h3>
        <p>请输入内容111</p>
        <p><a href="#">链接链接1</a></p>
    </div>
    <p>------- 分割线 -------</p>
    <div id="div2">
        <h3>标题标题2</h3>
        <p>请输入内容222</p>
        <p><a href="#">链接链接2</a></p>
    </div>
</div>
<p>底部test</p>


<script type="text/javascript" src="wangEditor/dist/js/lib/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="wangEditor/dist/js/wangEditor.js"></script>
<script type="text/javascript">
    $(function () {

        var editor1 = new wangEditor('div1');
        var editor2 = new wangEditor('div2');
        // editor2.config.menus = [
        //     'source',
        //     '|',
        //     'bold',
        //     'underline',
        //     'italic',
        //     'strikethrough',
        //     'eraser',
        //     'forecolor',
        //     'bgcolor',
        //     '|',
        //     'quote',
        //     'fontfamily',
        //     'fontsize',
        //     'head',
        //     'unorderlist',
        //     'orderlist',
        //     'alignleft',
        //     'aligncenter',
        //     'alignright',
        //     '|',
        //     'link',
        //     'unlink',
        //     'table',
        //     'emotion',
        //     '|',
        //     'img',
        //     'video',
        //     // 'location',
        //     'insertcode',
        //     '|',
        //     'undo',
        //     'redo',
        //     'fullscreen'
        // ];
        if (window.console) {
            console.log(editor1);
            console.log(editor2);
        }
        editor1.config.uploadImgUrl = '/upload';
        editor2.config.uploadImgUrl = '/upload';
        editor1.create();
        editor2.create();
        // 避免上面编辑器的 dropPanel 被下面的编辑器遮挡
        editor1.$editorContainer.css('z-index', 20)
        editor2.$editorContainer.css('z-index', 10)
    });
</script>
</body>
</html>