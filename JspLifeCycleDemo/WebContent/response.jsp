<%@ page language="java" import = "java.util.*,java.io.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	response.setContentType("text/html;charset=UTF-8");	//设置响应的MIMI类型

	out.println("<h1>response内置对象</h1>");
	out.println("<hr>");
	//out.flush();
	
	PrintWriter outer = response.getWriter();//获得输出流对象
	outer.println("少壮不努力，老大徒伤悲。");
	//response.sendRedirect("reg.jsp");//请求重定向
	//请求重定向
	//response.sendRedirect("requst.jsp");
	//请求转发
	request.getRequestDispatcher("requst.jsp").forward(request, response);
%>