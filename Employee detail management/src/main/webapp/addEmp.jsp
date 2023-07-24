<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<script src="validation.js"></script>
<div class="container"><br>
	
	<a href="/app/home" class="btn btn-primary">HOME</a><br><br>
	<hr>
	
	<form name="addEmp" action="/app/addEmp" method="post" onSubmit="return empFormValidation('addEmp')">
		<div>
			<!--<input type="number" name="id" class="form-control" placeholder="Enter ID"><br>-->
			<input type="text" name="name" class="form-control" placeholder="Enter Name"><br>
			<input type="email" name="email" class="form-control" placeholder="Enter E-mail"><br>
			<input type="number" name="age" class="form-control" placeholder="Enter Age"><br>
			<!-- <input type="text" name="gen" class="form-control" placeholder="Enter Gender"><br> -->
			
			<select name="gen" class="form-select" >
			  <option selected>Select Gender</option>
			  <option value="Male">Male</option>
			  <option value="Female">Female</option>
			</select><br>
			
			
			<input type="text" name="mob" class="form-control" placeholder="Enter Mobile"><br>
			<input type="textarea" name="add" class="form-control" placeholder="Enter Address"><br>
			<Button class="input-group-text">Submit</Button>
		</div>
	</form>
	
	<% 
	response.setHeader("Cache-Control","no-cache");
	response.setHeader("Cache-Control","no-store");
	response.setHeader("Pragma","no-cache");  
	%>
	
<div>
</body>
</html>