<%--
  Created by IntelliJ IDEA.
  User: 33837
  Date: 2022/4/28
  Time: 11:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <input type="button" value="异步请求" onclick="fun()">
</body>
<script src="js/jquery.min.js"></script>
<script>
    function fun(){
        $.ajax({
            //请求资源路径
            url:"AjaxServlet",
            //请求参数
            data:"username=world",
            //请求方式
            type:"post",
            //数据形式      text
            dataType:"text",
            //请求成功后执行函数
            //data  是一个形参   服务器返回数据
            success : function (data) {
                alert(data)
            },
            //请求失败后执行函数
            error : function () {
                alert("失败!!!")
            }
        });
    }
</script>
</html>
