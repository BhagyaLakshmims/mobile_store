<%@page import="com.js.dto.Mobile"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1>Update your data</h1>
<% Mobile m = (Mobile)request.getAttribute("mobile"); %>

<form action="edit">
<table>

 <tr>
 <td>Mobile id:</td>
 <td><input type="number" name="id" value="<%= m.getId() %>" readonly="readonly"></td>
 
 </tr>
 
 <tr>
 <td>Mobile name:</td>
 <td><input type="text" name="name" value="<%= m.getName()%>"></td>
 </tr>
 
 <tr>
 <td>Mobile Brand:</td>
 <td><input type="text" name="brand" value="<%= m.getBrand()%>"></td>
 </tr>
 
 <tr>
 <td>Mobile price:</td>
 <td><input type="text" name="price" value="<%= m.getPrice()%>"></td>
 </tr>

<tr>
<td><input type="submit" value="submit"></td>
</tr>

</table>

</form>

</body>
</html>