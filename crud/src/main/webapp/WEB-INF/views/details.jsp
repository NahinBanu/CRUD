<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
   
<%@taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Get Details</h1>

<table border="2" width="70%" cellpadding="2">  
  <tr>
    <th>Id</th>
    <th>Name</th>
    <th>Password</th>
    <th>Age</th>
    <th>Location</th>
    <th>Edit</th>
    <th>Delete</th>
  </tr>
 
 <c:forEach var="b" items="${fetch }"> 
<tr>
<td>${b.getId() }</td>
<td>${b.getName() }</td>
<td>${b.getPassword() }</td>
<td>${b.getAge() }</td>
<td>${b.getLocation() }</td>
<td> <a href="edit/${b.getId() }">Edit </a> </td>
<td> <a href="delete/${b.getId() }">Delete </a> </td>
</tr>
</c:forEach>
</table>

</body>
</html>
