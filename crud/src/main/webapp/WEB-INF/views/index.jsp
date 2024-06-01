<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- <h1>Welcome</h1> -->

<form action="reg">
  <div class="container">
    <h1>Registration form</h1>

<label> Name: </label><br>       
<input type="text" name="Name" /> <br>
<label> Password: </label><br> 
<input type="password" name="password" /> <br>
<label> Age: </label><br>         
<input type="number" name="age" /> <br>
<label> Location: </label><br>         
<input type="text" name="Location" /> <br><br>  
<button type="submit" class="registerbtn">submit</button>
  </div> 
</form>

<h1>Registration Details</h1>
<a href="details">click here</a>



</body>
</html>