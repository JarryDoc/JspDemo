<%@ page language="java" import = "java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage = "exception.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>测试异常的页面</title>
</head>
<body>
	<h1>测试异常的界面</h1>
	<hr>
	<%
		System.out.println(100/0);//抛出一个运行时异常
	%>
</body>
</html>