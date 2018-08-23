<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2018-08-04
  Time: 15:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form action="hello1.do" method="post">
    hello:<input type="text" name="username" /> <input type="submit"
                                                       value="提交" />
</form>
<br>
<form action="index.do" method="post">

    <input type="submit" value="查看所有" />
</form>
<br>
<form action="add.do" method="post">
    姓名：<input type="text" name="username" /> 年龄：<input type="text"
                                                       name="age" /> <input type="submit" value="提交" /></br>
    <c:if test="${not empty message}">
        <span>${message}</span>
    </c:if>
</form>
<br>
<form action="update.do" method="post">
    id:<input type="text" name="id" /> 姓名：<input type="text"
                                                 name="username" /> 年龄：<input type="text" name="age" /> <input
        type="submit" value="更新" /></br>
    <c:if test="${not empty upmessage}">
        <span>${upmessage}</span>
    </c:if>
</form>
<br>
<form action="del.do" method="post">
    id:<input type="text" name="id" /> <input type="submit" value="删除" /></br>
    <c:if test="${not empty dmessage}">
        <span>${dmessage}</span>
    </c:if>
</form>
<hr>
<h1>下面内容涉及到多表</h1>
<h2>通过article多对一的关系查找用户文章</h2>
<form action="articlesByUser.do" method="post">
    id:<input type="text" name="userId" /> <input type="submit"
                                                  value="查找该作者文章" /></br>
    <c:if test="${not empty aMessage}">
        <span>${aMessage}</span>
    </c:if>
    <c:if test="${not empty articleLists}">
        <table align='center' border='1' cellspacing='0'>
            <tr>
                <td>id</td>
                <td>userId</td>
                <td>title</td>
                <td>content</td>
            </tr>
            <c:forEach items="${articleLists}" var="c" varStatus="st">
                <tr>
                    <td>${c.id}</td>
                    <td>${c.user.id}</td>
                    <td>${c.title}</td>
                    <td>${c.content}</td>
                </tr>
            </c:forEach>
        </table>

    </c:if>
</form>
<hr>
<h1>通过User一对多的关系查找用户文章</h1>
<form action="findAtricesByUser.do" method="post">
    id:<input type="text" name="userId" /> <input type="submit"
                                                  value="查找该作者文章" /></br>
    <c:if test="${not empty amessage}">
        <span>${amessage}</span>
    </c:if>
    <c:if test="${not empty alists.articles}">
        <table align='center' border='1' cellspacing='0'>
            <tr>
                <td>id</td>
                <td>articleId</td>
                <td>userName</td>
                <td>age</td>
                <td>title</td>
                <td>content</td>
            </tr>
            <c:forEach items="${alists.articles}" var="c" varStatus="st">
                <tr>
                    <td>${alists.id}</td>
                    <td>${c.id}</td>
                    <td>${alists.username}</td>
                    <td>${alists.age}</td>
                    <td>${c.title}</td>
                    <td>${c.content}</td>
                </tr>
            </c:forEach>
        </table>

    </c:if>
</form>
<hr>
<h1>动态Sql的应用</h1>
<form action="getArticles.do" method="post">
    文章题目:<input type="text" name="title" /> 文章内容:<input type="text"
                                                        name="content" /> <input type="submit" value="查找文章" /></br>
    <c:if test="${not empty articleMess}">
        <span>${articleMess}</span>
    </c:if>
    <c:if test="${not empty articles}">
        <table align='center' border='1' cellspacing='0'>
            <tr>
                <td>id</td>
                <td>title</td>
                <td>content</td>
            </tr>
            <c:forEach items="${articles}" var="c" varStatus="st">
                <tr>
                    <td>${c.id}</td>
                    <td>${c.title}</td>
                    <td>${c.content}</td>
                </tr>
            </c:forEach>
        </table>

    </c:if>
</form>

</body>
</html>
