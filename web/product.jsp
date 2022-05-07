<%--
  Created by IntelliJ IDEA.
  User: 33837
  Date: 2022/5/5
  Time: 17:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        #div{
            cursor: pointer;
            font-size: 12px;
        }
    </style>
    <script src="js/jquery.min.js"></script>
    <script>
        $(function (){
            $("#productname").keyup(function (){
                //获取输入框中数据
                var productname = $("#productname").val();
                //异步请求查询数据
                $.getJSON("ProductServlet",{"productname":productname},function (data){
                    if(data != null){
                        var str = "";
                        for (var i = 0; i < data.length; i++) {
                            //    <div>华为手机</div>
                            str += "<div>" + data[i].productname + "</div>";
                        }
                        $("#div").html(str);
                    }
                })
            })
        })

        //把点击div的值显示到输入框中
        function changeContent(e){
            //找到事件源
            var e = e || event;     //浏览器兼容
            var target = e.target || e.srcElement; //不同浏览器获取事件源
            //点击的事件源添加到输入框中  值
            $("#productname").val($(target).html());
            //展示结果的div 没有内容
            $("#div").html("");
        }

        function changebgc(e){
            // 找到事件源（由谁触发的这个事件）
            var e = e || event;   //浏览器兼容
            var target = e.target || e.srcElement;  //不同浏览器获得事件源
            $(target).css('backgroundColor','blue/');
        }

        function changebgcback(e){
            // 找到事件源
            var e = e || event;
            var target = e.target || e.srcElement;
            $(target).css('backgroundColor','');

        }
    </script>
</head>
<body>
    <%--填写数据的文本框--%>
    <input type="text" name="productname" id="productname" style="width: 300px">
    <%--  展示结果  div  --%>
    <div style="width:300px" id="div"
         onmouseover="changebgc(event)"
         onmouseout="changebgcback(event)"
         onclick="changeContent(event)">

    </div>
</body>
</html>
