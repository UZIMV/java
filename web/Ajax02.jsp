<%--
  Created by IntelliJ IDEA.
  User: 33837
  Date: 2022/4/28
  Time: 11:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <input type="button" value="异步请求1" onclick="fun1()">
    <input type="button" value="异步请求2" onclick="fun2()">
</body>
<script src="js/jquery.min.js"></script>
<script>
    function fun1(){
        // $.get(url,[data],[success],[returnType])
        $.get("AjaxServlet","username=hello",function (data) {
            alert(data);
        },"text");
    }
    function fun2(){
        // $.post(url, [data] , [success] , [returnType])
        $.post("AjaxServlet","username=tomcat",function (data){
            alert(data);
        },"text");
    }
</script>
</html>
