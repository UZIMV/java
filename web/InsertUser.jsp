<%--
  Created by IntelliJ IDEA.
  User: 33837
  Date: 2022/4/28
  Time: 17:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="registerServlet" method="post">
    <table align="center" border="1px" width="450px" cellspacing="0px">
        <tr>
            <td align="right">用户名:</td>
            <td align="left">
                <input type="text" name="username" id="username" placeholder="请输入用户名">
                <span id="usernamespan"></span>
            </td>
        </tr>
        <tr>
            <th align="right">密码：</th>
            <th align="left">
                <input type="password" name="password" id="password" placeholder="请输入密码">
            </th>
        </tr>
        <tr>
            <th align="right">姓名：</th>
            <th align="left">
                <input type="text" name="name" id="name">
            </th>
        </tr>
        <tr>
            <th align="right">手机号：</th>
            <th align="left">
                <input type="text" name="telephone" id="telephone">
            </th>
        </tr>
        <tr>
            <th align="right">生日：</th>
            <th align="left">
                <input type="text" name="birthday" id="birthday">
            </th>
        </tr>
        <tr align="center">
            <th colspan="2">
                <input type="submit" value="注册">
            </th>
        </tr>
    </table>
</form>
</body>
<script src="js/jquery.min.js"></script>
<script>
    //页面加载完
    $(function (){
        //失去焦点时校验
        $("#username").blur(
            function (){
                $.ajax({
                    url:"CheckUsernameServlet",   //请求路径
                    data:{"username":$(this).val()},  //给服务端的参数（数据）
                    type:"post",  //请求方式
                    //成功 回调函数  obj参数  服务端响应的数据
                    success:function (obj){  //yes可用  no不可用
                        if(obj == "yes"){   //用户名可用
                            $("#usernamespan").html("用户名可用");
                            $("#usernamespan").css({color:"green",fontsize:"14px"});
                        }else{   //用户名不可用
                            $("#usernamespan").html("用户名不可用");
                            $("#usernamespan").css({color:"red",fontsize:"14px"});
                        }
                    }
                })
            }
        )
    })
</script>
</html>
