<%@page import="com.shinhan.dto.EmpVO"%>
<%@page import="com.shinhan.model.EmpDAO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
   	EmpDAO empDAO = new EmpDAO();
   	List<EmpVO> emplist = empDAO.selectAll();
    %>
<!DOCTYPE html>
<html lang="ko">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#container {
		width: 90%;
		margin: 50px auto;
	}
	h1 { text-align: center; }
	table {
		border-collapse: collapse;
    }
    table th, table td {
    	border: 1px solid #bbb;
    	font-size: 14px;
    	box-sizing: border-box;
    }
    table th {
    	padding: 10px;
    	background-color: #185422;
    	color: white;
    	letter-spacing: 0.05em;
    }
    table td {
    	padding: 7px 10px;
    	text-align: center;
    	background-color: #fff;
    }
    table tbody tr:hover td {
    	background-color: #ffffd7;
    }
    table tbody tr td:hover {
    	background-color: #ffff9b;
    }
</style>
</head>
<body>
	<div id="container">
		<h1>직원목록</h1>
		<table>
			<thead>
				<tr>
					<th>employee_id</th>
					<th>first_name</th>
					<th>last_name</th>
					<th>email</th>
					<th>phone_number</th>
					<th>hire_date</th>
					<th>job_id</th>
					<th>salary</th>
					<th>commition_pct</th>
					<th>manager_id</th>
					<th>department_id</th>
				</tr>
			</thead>
			<tbody>
				<%for(EmpVO emp:emplist) { %>
					<tr>		
						<td><%= emp.getEmployee_id() %></td>
						<td><%= emp.getFirst_name() %></td>
						<td><%= emp.getLast_name() %></td>
						<td><%= emp.getEmail() %></td>
						<td><%= emp.getPhone_number() %></td>
						<td><%= emp.getHire_date() %></td>
						<td><%= emp.getJob_id() %></td>
						<td><%= emp.getSalary() %></td>
						<td><%= emp.getCommission_pct() %></td>
						<td><%= emp.getManager_id() %></td>
						<td><%= emp.getDepartment_id() %></td>
					</tr>
				<%} %>
			</tbody>
		</table>	
	</div>
	
</body>
</html>