<%@page import="com.shinhan.model.JobDAO"%>
<%@page import="com.shinhan.dto.JobVO"%>
<%@page import="com.shinhan.model.DeptService"%>
<%@page import="com.shinhan.dto.DeptVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    DeptService dService  = new DeptService();
   	List<DeptVO> dlist = dService.selectAll();
	JobDAO jDAO = new JobDAO();
   	List<JobVO> joblist = jDAO.selectAll();
    %>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>

<body>
	<h1>~직원등록~</h1>
	<form name="empform" action="empInsert.jsp" method="get">
		<fieldset>
			<legend>직원의 기본사항</legend>
			1.EMPLOYEE_ID: <input name="employee_id" type="number" min="207" max="500" autofocus /> <br><br>
			2.FIRST_NAME: <input name="first_name" type="text" placeholder="이름/first name" /> <br><br>
			3.LAST_NAME: <input name="last_name" type="text" placeholder="성/last name" /> <br><br>
		</fieldset>
		<fieldset>
			<legend>직원의 추가정보</legend>
			4.EMAIL: <input name="email" type="text" required placeholder="@(골뱅이) 전까지만" /> <br><br>
			5.PHONE_NUMBER: <input name="phone_number" type="tel" pattern="[0-9]{3}.[0-9]{3}.[0-9]{4}"
				placeholder="***.***.****" /> <br><br>
			6.HIRE_DATE: <input name="hire_date" type="date" /> <br><br>
			7.JOB_ID: <select name="job_id">
				<%for(JobVO job:joblist){ %>
					<option value="<%=job.getJob_id()%>>"><%= job.getJob_title() %></option>
				<%} %>
			</select><br><br>
			8.SALARY: <input name="salary" type="number" placeholder="급여 정보" /> <br><br>
			9.COMMISSION_PCT: <input name="commission_pct" type="number" step="0.01" /> <br><br>
			10.MANAGER_ID: <input name="manager_id" type="number" /> <br><br>
			11.DEPARTMENT_ID: <select name="department_id">
				<%for(DeptVO dept:dlist){ %>
					<option value="<%=dept.getDepartment_id()%>"><%= dept.getDepartment_name() %></option>
				<%} %>
			</select> <br><br>
			<input type="submit" value="등록하기♥" />
		</fieldset>
	</form>
</body>

</html>