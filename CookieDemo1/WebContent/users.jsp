<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>用户信息</h1>
	<hr>
	-------------------------------
			不能显示、不能记住密码
	-------------------------------
	<%
		String userName = "";
		String passWord = "";
		Cookie[] cookies = request.getCookies();
		if(cookies!=null&&cookies.length>0){
			for(Cookie c:cookies){
				if(c.getName().equals("userName")){
					userName = c.getValue();
				}
				if(c.getName().equals("passWord")){
					passWord = c.getValue();
				}
			}
		}
	%>
	<br>
	<br>
	<br>
	<br>
	<br>
	用户名：<%=userName %><br>
	密码：<%=passWord %><br>
</body>
</html>