<%--
  Created by IntelliJ IDEA.
  User: 33837
  Date: 2022/5/5
  Time: 14:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="js/jquery.min.js"></script>
    <script>
        //页面加载完成
        $(function (){
            //1、查询出所有国家，将查询到的结果写到countrysel中   <option value="1">中国</option>
            $.get("CountryServlet",function (data){
                //data并不是js对象，是字符串   eval("(" + data + ")");
                var obj = eval("(" + data + ")");
                var str = "";
                for (var i = 0; i < obj.length; i++) {
                    str += "<option value='" + obj[i].id + "'>" + obj[i].name + "</option>";
                }
                $("#countrySel").html($("#countrySel").html() + str);
            });

            //2、国家选取完毕，异步加载城市     值改变事件
            $("#countrySel").change(function (){
                //获得国家id   选择框中的值
                var countryId = $("#countrySel").val();
                $.getJSON("CityServlet",{"countryId":countryId},function (data){
                    //data不要使用eval函数处理
                    if(data.length > 0){
                        var str = "";
                        for (var i = 0; i < data.length; i++) {
                            //<option value='1'>北京</option>
                            str += "<option value='" + data[i].id + "'>" + data[i].name + "</option>";
                        }
                        $("#citySel").html(str);
                    }else{
                        $("#citySel").html("<option value='0'>-请选择-</option>");
                    }
                })
            })
        })
    </script>
</head>
<body>
    <select name="countrySel" id="countrySel">
        <option value="0">-请选择-</option>
    </select>
    <select name="citySel" id="citySel">
        <option value="0">-请选择-</option>
    </select>
</body>
</html>
