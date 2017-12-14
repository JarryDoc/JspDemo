<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>系统登录</h1>
	
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
	
	<form action="dologin.jsp?" name = "loginForm" method = "post">
		<table>
			<tr>
				<td>用户名：</td>
				<td><input type = "text" name = "userName" value = "<%=userName %>"/></td>
			</tr>
			<tr>
				<td>密码：</td>
				<td><input type = "password" name = "passWord" value = "<%=passWord %>"/></td>
			</tr>
			<tr>
				<td colspan = "2" align = "center">
					<input type = "checkbox" name = "isUseCookie" checked = "checked">记住密码</input>
				</td>
			</tr>
			<tr>
				<td colspan = "2" align = "center"><input type = "submit" value = "登录"/></td>
			</tr>
		</table>
	</form>
</body>
</html>