<%--
  Created by IntelliJ IDEA.
  User: Mr
  Date: 2018/11/3
  Time: 14:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
    <script src="js/jquery.min.js"></script>
    <script>
        $(function () {
            $("#btn").click(function () {
                $.post("user/findById",{"id":$("#id").val()},
                    function (user) {
                    $("#list").empty();
                    if(user.name!=null){
                    $("#list").append('<table border=1>' +
                        '    <tr>' +
                        '        <td>商品名称</td>' +
                        '        <td> '+user.name+'</td>' +
                        '    </tr>' +
                        '    <tr>' +
                        '        <td>商品价格</td>' +
                        '        <td> '+user.price+'</td>' +
                        '    </tr>' +
                        '    <tr>' +
                        '        <td>生成日期</td>' +
                        '        <td>'+user.createtime+'</td>' +
                        '    </tr>' +
                        '    <tr>' +
                        '        <td>商品简介</td>\n' +
                        '        <td>'+user.detail+'</td>' +
                        '    </tr>' +
                        '</table>')
                    }else {
                        alert("用户不存在！！")
                    }
                },"json")
            })
        })
    </script>
</head>
<body>
    <h2>哈哈哈哈哈哈哈哈哈</h2>
    <h2>22222222222222222</h2>
    <h2>66666666666666666</h2>
    id:<input type="text" id="id"><br/>
    <input type="button" id="btn" value="查询">
    <div id="list"></div>

</body>
</html>
