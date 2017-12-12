<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>javaBean的四个作用域</h1>
	<hr>
	<jsp:useBean id="myUsers" class="com.po.Users" scope="application"/>
	用户名：<jsp:getProperty property="username" name="myUsers"/><br>
	密码：<jsp:getProperty property="password" name="myUsers"/><br><br><br>
</body>
</html>