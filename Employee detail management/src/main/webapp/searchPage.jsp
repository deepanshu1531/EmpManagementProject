<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.Optional" %>
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
	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<div class="container"><br>
	
	<a href="/app/home" class="btn btn-primary">HOME</a><br><br><br>
	<hr>

	<%
		Optional<Employee> emp = (Optional<Employee>)request.getAttribute("emp");
		if(emp.isPresent()){
			%>
			<table class="table table-striped table-light">
				<tr>
			    <th>ID</th>
			    <th>E-mail</th>
			    <th>Name</th>
			    <th>Age</th>
			    <th>Gender</th>
			    <th>Mobile</th>
			    <th>Address</th>
			    <th>Action</th>
			    
			  </tr>
			  <tr>
			    <td><%= emp.get().getId()%></td>
			    <td><%= emp.get().getEmail()%></td>
			    <td><%= emp.get().getName()%></td>
			    <td><%= emp.get().getAge()%></td>
			    <td><%= emp.get().getGen()%></td>
			    <td><%= emp.get().getMob()%></td>
			    <td><%= emp.get().getAdd()%></td>
			    
			    <td>
			    	<div class="dropdown">
					  <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown">
					    Choose Action
					  </button>
					  <ul class="dropdown-menu">
					    <li><a href="/app/update?id=<%=emp.get().getId()%>" class="dropdown-item"> Update </a></li>
					    <li><a href="/app/remove?id=<%=emp.get().getId()%>" class="dropdown-item"> Remove </a></li>

					  </ul>
					</div>	
			    </td>
			    
			  </tr>
			</table>
			<%
		}else{
			%><h1>Not Found !!!<h1><%
		}
	%>
	
	<% 
	response.setHeader("Cache-Control","no-cache");
	response.setHeader("Cache-Control","no-store");
	response.setHeader("Pragma","no-cache");  
	%>
</div>
</body>
</html>