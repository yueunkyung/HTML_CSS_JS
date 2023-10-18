<%@page import="com.shinhan.dto.EmpVO"%>
<%@page import="com.shinhan.model.EmpDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	EmpDAO empdao = new EmpDAO();
	int empid = Integer.parseInt(request.getParameter("empid"));
	EmpVO emp = empdao.selectById(empid);	
%>
{
	"employee_id" : <%=emp.getEmployee_id() %>,
	"first_name" : "<%=emp.getFirst_name() %>",
	"last_name" : "<%=emp.getLast_name() %>",
	"email" : "<%=emp.getEmail() %>",
	"phone_number" : "<%=emp.getPhone_number() %>",
	"hire_date" : "<%=emp.getHire_date() %>",
	"job_id" : "<%=emp.getEmployee_id() %>",
	"salary" : <%=emp.getSalary() %>,
	"commission_pct" : <%=emp.getCommission_pct() %>,
	"manager_id" : <%=emp.getManager_id() %>,
	"department_id" : <%=emp.getDepartment_id() %>
}