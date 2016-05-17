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
	
	<div><p>${deleteMessage}</p></div>
	<form action="${pageContext.request.contextPath}/addEmployee" method="get">
		<button>Add New Employee</button>
	</form>
	<br>

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
				<th width="20%">Department Name</th>
				<th width="20%">Designation</th>

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
					<td width="20%">${employee.address.street}</td>
					<td width="20%">${employee.address.city}</td>
					<td width="20%">${employee.address.state}</td>
					<td width="20%">${employee.address.zip}</td>
					<td width="20%">${employee.address.country}</td>
					<td width="20%">${employee.joinDate}</td>
					<td width="20%">${employee.endDate}</td>
					<td width="20%">${employee.department.departmentName}</td>
					<td width="20%">${employee.department.designation}</td>
					
					<td width="20%">
						<form action="${pageContext.request.contextPath}/editEmployee/${employee.employeeId}"
								method="get">
								<button>Edit</button>
						</form>
					</td>		
					<td width="20%">
						<form action="${pageContext.request.contextPath}/delete/${employee.employeeId}"
								method="post">
								<button>Delete</button>
						</form>
					</td>	
				</tr>
			</c:forEach>
		</tbody>
	</table>
	
	<br>

	<form action="${pageContext.request.contextPath}/homePage" method="get">
		<button>Back To Home</button>
	</form>

</body>
</html>