<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2018-08-06
  Time: 18:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String path = request.getContextPath(); String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"; %>
<html>
<head>
    <title>图片显示</title>

</head>
<body>
    <h3>显示图片</h3>
    <img src="${basePath}${user.image}" height="300" width="400">用户名：${user.name}
    <hr>
</body>
</html>
