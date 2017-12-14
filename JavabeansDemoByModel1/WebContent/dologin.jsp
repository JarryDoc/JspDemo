<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%
		request.setCharacterEncoding("utf-8");
	%>

	<jsp:useBean id = "loginUser" class = "com.po.Users" scope = "page"/>
	<jsp:useBean id="userDao" class="com.dao.UserDao" scope="page"></jsp:useBean>
	<jsp:setProperty property="*" name="loginUser"/>
	
	<%
		if(userDao.userLogin(loginUser)){
			session.setAttribute("loginUser", loginUser.getUsername());
			request.getRequestDispatcher("login_success.jsp").forward(request, response);
		}else{
			response.sendRedirect("login_failure.jsp");
		}
	
	%>
	
	
	
</body>
</html>