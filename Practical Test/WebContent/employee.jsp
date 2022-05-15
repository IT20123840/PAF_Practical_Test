<%@ page import="com.Employee" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Employee Management</title>
		<link rel="stylesheet" href="Views/bootstrap.min.css">
		<script src="Components/jquery.min.js"></script>
		<script src="Components/main.js"></script>
	</head>
	
<body>
	<div class="container"> 
	 	<div class="row">
			<div class="col-6"> 
	 			<h1>Employee Details</h1> 
	 			
	 			<form id="formEmployee" name="formEmployee" method="POST" action="employee.jsp">
	 				Employee ID:
	 				<input id="e_id" name="e_id" type="text" class="form-control form-control-sm">
	 				<br>
	 				
	 				Employee Name:
	 				<input id="employee_name" name="employee_name" type="text" class="form-control form-control-sm">
	 				<br>
	 				
	 				Salary:
	 				<input id="salary" name="salary" type="text" class="form-control form-control-sm">
	 				<br>
	 				
	 				Department:
	 				<input id="department_name" name="department_name" type="text" class="form-control form-control-sm">
	 				<br>
	 				
	 				<input id="btnSave" name="btnSave" type="button" value="Save" class="btn btn-primary">

						<input type="hidden" name="hidEmployeeIDSave" id="hidEmployeeIDSave" value="">
	 				
	 			</form>
	 			<br>
	 			
				 
					 <div id="alertSuccess" class="alert alert-success"></div>
					 <div id="alertError" class="alert alert-danger"></div>
					 <br>
					 
					 <div id="divEmployeeGrid">
					 	 <%
					 	 	Employee employee = new Employee();
					 	 	out.print(employee.viewEmpDetails());
					 	 %>
					 </div>
	 		</div>
	 	</div> 
	 </div>
</body>
</html>