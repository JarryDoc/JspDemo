<%@ page language="java" import = "java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>exception内置对象</title>
</head>
<body>
	<h1>exception内置对象</h1>
	<hr>
	异常消息是：<%=exception.getMessage()%>
	异常的字符串描述是：<%=exception.toString() %>
</body>
</html>