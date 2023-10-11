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
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>직원 목록</title>
<style>
	#container {
		width: 90%;
		margin: 50px auto;
	}
	h1 { text-align: center; }
	table {
		border-collapse: collapse;
		margin: 0 auto;
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
    }
    table tbody tr:hover td {
    	background-color: #ffffd7;
    }
    table tbody tr td:hover {
    	background-color: #ffff9b;
    }
    
    /* 직원 이름이 'D'로 시작하면 글씨색을 red */
    /* 한칸 이상의 공백은 자손을 의미한다 */
    table tbody tr td[fname ^="D"] {
    	color: red;
    }
    
    /* tr의 seq 속성에 값이 5로 끝나면 스타일 바꾸기 */
    table tbody tr[seq $="5"] {
    	background-color: #eaeaea;
    }
    
    /* data 중에 짝수번째 row에 border 스타일 변경 */
    table tbody tr:nth-of-type(even) {
    	border: 2px dotted green;
    }
    
    /* data 중에 짝수번째 row에 border 스타일 변경 */
    table tbody tr:nth-of-type(2n+1) {
    	border: 2px dotted hotpink;
    }
    table tbody tr:First-child,
    table tbody tr:last-child {
    	background-color: aqua;
    }
    p:only-child {
    	font-size: 30px;
    }
    p:only-of-type {
    	font-size: 50px;
    	color: maroon;
    }
    #container h1::before, #container h1::after {
    	content:"**********";
    }
</style>
</head>
<body>
	<div>
		<h1>p가 1개인 경우</h1>
		<p>Only Child</p>
	</div>
	<div id="container">
		<h1>직원목록</h1>
		<table>
			<thead>
				<tr>
					<th>순서</th>
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
				<%
				int i=0;
				for(EmpVO emp:emplist) { 
					i++;
				%>				
					<tr seq="<%= i %>">
						<td><%= i %></td>
						<td>
							<a href="empDetail.jsp?empid=<%= emp.getEmployee_id() %>">
								<%= emp.getEmployee_id() %>
							</a>
						</td>
						<td fname="<%= emp.getFirst_name() %>"><%= emp.getFirst_name() %></td>
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