<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Employee List</title>
</head>
<body>
	<h1>List of Employees</h1>

	<table class="resultsTable" border="1" bordercolor="grey"
		cellpadding="0" cellspacing="0" width="100%" height="50%">
		<thead class="fixedHeader">
			<tr>
				<th width="20%">First Name</th>
				<th width="20%">Last Name</th>
				<th width="20%">DOB</th>
				<th width="20%">Sex</th>
				<th width="20%">Email</th>
				<th width="20%">Contact Number</th>
				<th width="20%">Street</th>
				<th width="20%">City</th>
				<th width="20%">State</th>
				<th width="20%">Zip</th>
				<th width="20%">Country</th>
				<th width="20%">Join Date</th>
				<th width="20%">End Date</th>

			</tr>
		</thead>


		<tbody class="scrollContent">
			<c:forEach var="employee" items="${employee}">
				<tr>
					<td width="20%">${employee.firstName}</td>
					<td width="20%">${employee.lastName}</td>
					<td width="20%">${employee.dob}</td>
					<td width="20%">${employee.sex}</td>
					<td width="20%">${employee.email}</td>
					<td width="20%">${employee.contactNumber}</td>
					<td width="20%">${employee.street}</td>
					<td width="20%">${employee.city}</td>
					<td width="20%">${employee.state}</td>
					<td width="20%">${employee.zip}</td>
					<td width="20%">${employee.country}</td>
					
					<td width="20%"><a href="/${employee.employeeId}">edit</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

	<a href="addEmployee"> Add new Employee</a>

</body>
</html>