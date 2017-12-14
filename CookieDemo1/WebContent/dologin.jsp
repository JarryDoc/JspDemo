<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>登陆成功</h1>
	<hr>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<%
		//首先判断用户是否选择记住登录状态
		String[] isUseCookies = request.getParameterValues("isUseCookie");
		if(isUseCookies!=null&&isUseCookies.length>0){
			//把用户名和密码保存在Cookie对象里
			String userName = request.getParameter("userName");
			String passWord = request.getParameter("passWord");
			Cookie userNameCookie = new Cookie("username",userName);
			Cookie passWordCookie = new Cookie("password",passWord);
			
			//设置最长生存期限
			userNameCookie.setMaxAge(200000);
			passWordCookie.setMaxAge(200000);
			
			
			//保存Cookie对象
			response.addCookie(userNameCookie);
			response.addCookie(passWordCookie);
			
		}else{
			Cookie[] cookies = request.getCookies();
			if(cookies!=null&cookies.length>0){
				for(Cookie c:cookies){
					if(c.getName().equals("userName")||c.getName().equals("passWord")){
						c.setMaxAge(0);
						response.addCookie(c);
					}
				}
			}
		}
	%>
	<a href="users.jsp" target="_blank">查看用户信息</a>
	
</body>
</html>