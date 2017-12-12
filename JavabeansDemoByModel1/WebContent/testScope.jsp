<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.po.Users" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>javaBean的四个作用域</h1>
	<hr>
	<jsp:useBean id="myUsers" class="com.po.Users" scope="request"/>
	用户名：<jsp:getProperty property="username" name="myUsers"/><br>
	密码：<jsp:getProperty property="password" name="myUsers"/><br><br><br>
	
	<!-- 使用内置对象获取用户名密码 -->
	<hr>
	<%-- 
	用户名：<%=((Users)application.getAttribute("myUsers")).getUsername() %>
	密码：<%=((Users)application.getAttribute("myUsers")).getPassword() %>
	--%>
	<%-- 
	用户名：<%=((Users)session.getAttribute("myUsers")).getUsername() %>
	密码：<%=((Users)session.getAttribute("myUsers")).getPassword() %>
	--%>
 
	用户名：<%=((Users)request.getAttribute("myUsers")).getUsername() %>
	密码：<%=((Users)request.getAttribute("myUsers")).getPassword() %>

	
</body>
</html>