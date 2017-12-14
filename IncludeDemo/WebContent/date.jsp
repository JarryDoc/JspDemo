<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Date d = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy年mm月dd日");
		String s = sdf.format(d);
		out.println(s);
	%>
</body>
</html>