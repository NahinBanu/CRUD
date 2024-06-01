<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="/update">
  <div class="container">
  
<input type="hidden" name="id" value="${edit.getId() }"/> <br>
<label> Name: </label><br>       
<input type="text" name="name" value="${edit.getName() }" /> <br>
<label> Password: </label><br> 
<input type="password" name="password" value="${edit.getPassword() }"/> <br>
<label> Age: </label><br>         
<input type="number" name="age" value="${edit.getAge() }"/> <br>
<label> Location: </label><br>         
<input type="text" name="Location" value="${edit.getLocation() }"/> <br><br>  
<button type="submit" class="registerbtn">Edit</button>
  </div> 
</form>

<a href="/details">click here</a>

</body>
</html>