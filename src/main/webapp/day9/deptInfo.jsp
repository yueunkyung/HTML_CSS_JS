<%@page import="com.shinhan.dto.DeptVO"%>
<%@page import="com.shinhan.model.DeptService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	DeptService service = new DeptService();
	int deptid = Integer.parseInt(request.getParameter("deptid"));
	DeptVO dept = service.selectById(deptid);
%>
{
	"deptid" : <%=dept.getDepartment_id()%>,
	"deptName" : "<%=dept.getDepartment_name() %>",
	"location" : <%=dept.getLocation_id() %>
}