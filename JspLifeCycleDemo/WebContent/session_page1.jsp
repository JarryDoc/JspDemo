<%@ page language="java" import = "java.util.*,java.text.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>session内置对象</title>
</head>
<body>
	<h1>session内置对象</h1>
	<hr>
	<%
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy年mm月dd日hh:mm:ss");
		
		Date d = new Date(session.getCreationTime());
		session.setAttribute("username", "admin");
	%>
	session创建时间：<%=sdf.format(d) %><br>
	session的ID编号：<%=session.getId() %><br>
	从session中获取用户名：<%=session.getAttribute("username") %><br>
	<a href = "session_page2.jsp" target = "_blang">跳转到session_page2</a>
</body>
</html>