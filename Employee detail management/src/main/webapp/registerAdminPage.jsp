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
	background-image:url('https://img.lovepik.com/photo/50051/5428.jpg_wh860.jpg');
	background-attachment: fixed;
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
	">
	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<script src="adminValidate.js"></script>
<div class="container"><br>
	<hr>
	
	<h1 style="color:white;">SIGN UP</h1>
	<hr>
	
	<form name="registerAdminPage" action="registerAdmin" method="post" onSubmit="return adminFormValidation('registerAdminPage')">
		<div>
			<!--<input type="number" name="id" class="form-control" placeholder="Enter ID"><br>-->
			<input type="text" name="uname" class="form-control" placeholder="Enter Username"><br>
			<input type="password" name="pass" class="form-control" placeholder="Enter Password"><br>
			<Button class="input-group-text">SignUp</Button>
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