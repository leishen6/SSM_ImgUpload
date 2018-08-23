<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2018-08-06
  Time: 17:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>图片上传</title>
</head>
<body>

<form action="upload.do" method="post" enctype="multipart/form-data">
    <label>用户名：</label><input type="text" name="name"><br>
    <label>密码：</label><input type="password" name="pwd"><br>
    <label>上传头像：</label><input type="file" name="file"><br>
    <input type="submit">
</form>


</body>
</html>
