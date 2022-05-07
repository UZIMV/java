<%--
  Created by IntelliJ IDEA.
  User: 33837
  Date: 2022/4/28
  Time: 14:58
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
    var user = {
        id:1,age:18,name:"萧炎",say:function (){
            alert("异分噬浪尺");
        }
    }
    alert(user.id);
    alert(user.name);
    alert(user.age);
    user.say();

    var arr = [
        {id:2,name :"唐三",age : 19},
        {id:3,name :"小舞",age : 19},
    ];
    for (var i = 0; i < arr.length; i++) {
        alert(arr[i].name + "--" + arr[i].age);
    }
</script>
</html>
