<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1>Enter mobile details</h1>
<form action="savemob" method="post">
<table>
<tr>

<td>Mobile id</td>
<td><input type="number" name="id"></td>

</tr>

<tr>

<td>Mobile Name</td>
<td><input type="text" name="name"></td>

</tr>

<tr>

<td>Mobile brand</td>
<td><input type="text" name="brand"></td>

</tr>

<tr>

<td>Mobile Price</td>
<td><input type="text" name="price"></td>

</tr>

<tr>



<tr>
<td><input type="submit" value="add"></td></tr>

</table>

</form>

</body>
</html>