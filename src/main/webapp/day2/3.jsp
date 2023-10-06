<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>JSP는 서버에서 해석하고 결과(HTML)를 Browser로 내림</h1>
	<p>1.<%=request.getParameter("my1") %></p>
	<p>1.<%=request.getParameter("my2") %></p>
	<p>3.<%=request.getParameter("my3") %></p>
	<p>4.<%=request.getParameter("my4") %></p>
	<p>5.<%=request.getParameter("my5") %></p>
	<p>6.<%=request.getParameter("my6") %></p>
	<p>7.<%=request.getParameter("my7") %></p>
	<p>8.<%=request.getParameter("my8") %></p>
	<p>9.<%=request.getParameter("my9") %></p>
	<p>10.<%=request.getParameter("my10") %></p>
	<p>11.RadioButton:<%=request.getParameter("subject") %></p>
	<p><%=request.getParameter("gender") %></p>
	<%
		String[] arr = request.getParameterValues("mailing");
		String[] arr2 = request.getParameterValues("dept2");
	%>
	<p>12.checkboxButton:<%= Arrays.toString(arr) %></p>
	<p>13.<%=request.getParameter("my11") %></p>
	<p>13.<%=request.getParameter("my12") %></p>
	<p>13.<%=request.getParameter("my13") %></p>
	<p>13.<%=request.getParameter("my14") %></p>
	<p>13.<%=request.getParameter("my15") %></p>
	<p>14.select dept:<%=request.getParameter("dept") %></p>
	<p>15.select dept2:<%=Arrays.toString(arr2) %></p>
	<p>16.select optgroup:<%=request.getParameter("class") %></p>
	<p>17.select datalist:<%=request.getParameter("interest") %></p>
	<p>17.select datalist:<%=request.getParameter("interest2") %></p>
	<p>18.textarea:<%=request.getParameter("text") %></p>
</body>
</html>