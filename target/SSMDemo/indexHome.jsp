<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<table align='center' border='1' cellspacing='0'>
		<tr>
			<td>id</td>
			<td>name</td>
			<td>age</td>
		</tr>
		<c:forEach items="${lists}" var="c" varStatus="st">
			<tr>
				<td>${c.id}</td>
				<td>${c.username}</td>
				<td>${c.age}</td>
			</tr>
		</c:forEach>
	</table>

</body>
</html>