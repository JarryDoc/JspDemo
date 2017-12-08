<%@page import="java.io.IOException"%>
<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%!String printMultiTable1() {
		String s = "";
		for (int i = 1; i <= 9; i++) {
			for (int j = 1; j <= i; j++) {
				s += i + "*" + j + "=" + (i * j) + "&nbsp;&nbsp;&nbsp;&nbsp;";
			}
			s += "<br>";
		}
		return s;
	}

	void printMultiTable2(JspWriter out) throws IOException {
		String s = "";
		for (int i = 1; i <= 9; i++) {
			for (int j = 1; j <= i; j++) {
				out.println(i + "*" + j + "=" + (i * j) + "&nbsp;&nbsp;&nbsp;&nbsp;");
			}
			out.println("<br>");
		}
	}%>
	<h1>九九乘法表</h1>
	<br>
	<%=printMultiTable1()%>
	<%printMultiTable2(out); %>
</body>
</html>