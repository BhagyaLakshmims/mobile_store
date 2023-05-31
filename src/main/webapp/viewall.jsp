<%@page import="com.js.dto.Mobile"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1>Mobile table</h1>

<table border="4px" cellpadding="5px" align="center">
<tr>
<th>Mobile id</th>
<th>Mobile name</th>
<th>Mobile brand</th>
<th>Mobile price</th>
<th>Update</th>



</tr>

	<%
			ArrayList<Mobile> mobiles = (ArrayList)request.getAttribute("data");
		%>

		<%
			for (Mobile m : mobiles) {
		%>
		<tr>
			<td><%=m.getId()%></td>
			<td><%=m.getName()%></td>
			<td><%=m.getBrand()%></td>
			<td><%=m.getPrice()%></td>
		    <td><a href="update?id=<%=m.getId() %>">Edit</a></td>
            
		</tr>
		<%
			}
		%>


</table>

</body>
</html>