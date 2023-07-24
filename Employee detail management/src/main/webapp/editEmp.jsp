<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<script src="validation.js"></script>
	
<div class="container"><br>
	
	<a href="/app/home" class="btn btn-primary">HOME</a><br><br>
	<hr>
	<% Employee emp = (Employee)request.getAttribute("emp"); %>
	<form name="editEmp" action="/app/addEmp" method="post" onSubmit="return empFormValidation('editEmp')">
		<input class="form-control" type="text" name="id" value=<%=emp.getId() %> readonly><br>
		<input class="form-control" type="email" name="email" value=<%=emp.getEmail() %> readonly><br>
		<input class="form-control" type="text" name="name" value=<%=emp.getName() %>><br>
		<input class="form-control" type="text" name="age" value=<%=emp.getAge() %>><br>
		<input class="form-control" type="text" name="gen" value=<%=emp.getGen() %>><br>
		<input class="form-control" type="text" name="mob" value=<%=emp.getMob() %>><br>
		<input class="form-control" type="text" name="add" value=<%=emp.getAdd() %>><br>
		<Button class="input-group-text btn btn-primary">Update</Button>
	</form>
	
	<% 
	response.setHeader("Cache-Control","no-cache");
	response.setHeader("Cache-Control","no-store");
	response.setHeader("Pragma","no-cache");  
	%>
	
</div>	
</body>
</html>