<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>
<%@ page import="com.practice.demo.pojo.Employee" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Crud App</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
 </head>
<body style="
	background-image:url('https://www.incimages.com/uploaded_files/image/1920x1080/getty_693810132_20001335181884318245_325319.jpg');
	background-attachment: fixed;
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
	">
	
	
<div class="container"><br>
	<a href="/logout" class="btn btn-primary">LOGOUT</a><br><br>
	<hr>
	<form action="/app/getEmp" method="get">
		<div  class="input-group mb-3">
			<input type="number" name="id" class="form-control" placeholder="Enter employee ID">
  			<Button class="input-group-text btn btn-primary" id="basic-addon2">Search</Button>
		</div>
	</form><br><hr>
	
	<%
		List<Employee> allEmps=(List<Employee>)request.getAttribute("allEmps");
		for(Employee emp: allEmps){
			%>
			<table class="table table-bordered border-dark table-light">
				<tr>
				    <th>ID</th>
				    <th>Name</th>
				    <th>Mobile</th>
				    <th>Action</th>
			  	</tr>
			    <tr>
				    <td><%= emp.getId()%></td>
				    <td><%= emp.getName()%></td>
				    <td><%= emp.getMob()%></td>
				    <td><a href="/app/getEmp?id=<%=emp.getId()%>" class="btn btn-primary"> View </a><br></td>
			    </tr>
			</table>
		<%;
			}
		
		response.setHeader("Cache-Control","no-cache");
		response.setHeader("Cache-Control","no-store");
		response.setHeader("Pragma","no-cache"); 
	%>
	
	<a href="/app/addEmp" class="btn btn-primary" aria-current="true">Add Employee</a><br>
	<hr>
</div>	
</body>
</html>