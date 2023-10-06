<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//자바단 : JSP = JAVA + HTML
String myname = "은경";

request.setCharacterEncoding("utf-8");
String uid = request.getParameter("userid");
String upass = request.getParameter("userpass");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>나의 이름은 <%=myname %></h1>
	<h1>아이디는 <%=uid %></h1>
	<h1>비밀번호는 <%=upass %></h1>
</body>
</html>