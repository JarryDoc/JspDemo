<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName();//+":"+
	String username = "";
	String password = "";
	request.setCharacterEncoding("UTF-8");
	username = request.getParameter("username");
	password = request.getParameter("password");
	
	//如果用户名和密码都等于“admin”
	if("admin".equals(username)&&"admin".equals(password)){
		session.setAttribute("loginUser",username);
		request.getRequestDispatcher("login_success.jsp").forward(request, response);
	}else{
		response.sendRedirect("login_failure.jsp");
	}
%>