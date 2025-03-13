<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product Details</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f4f4f4;
	margin: 20px;
	padding: 20px;
}

h1 {
	text-align: center;
	color: #333;
}

table {
	width: 80%;
	margin: auto;
	border-collapse: collapse;
	background: lightgreen;
	box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
}

th, td {
	border: 1px solid #ddd;
	padding: 10px;
	text-align: left;
}

th {
	background-color: #007BFF;
	color: white;
}

tr:nth-child(even) {
	background-color: #f2f2f2;
}

#a {
	position: absolute;
	top: 80px;
	right: 185px;
	text-decoration: none;
}

#a button {
	background-color: rgb(100, 200, 255);
	color: white;
	border: none;
	padding: 10px 15px;
	font-size: 16px;
	cursor: pointer;
	border-radius: 5px;
	transition: background-color 0.3s ease;
}

#a button:hover {
	background-color: #218838; /* Darker green */
}
.a {
        text-align: center;
    }
    
    /* Button styling inside the table */
table button {
    background-color: #dc3545; /* Default color for Delete button */
    color: white;
    border: none;
    padding: 8px 12px;
    font-size: 14px;
    cursor: pointer;
    border-radius: 5px;
    transition: background-color 0.3s ease, transform 0.2s;
}

/* Delete button hover effect */
table a[href^="delete"] button:hover {
    background-color: #c82333; /* Darker red */
    transform: scale(1.10);
}

/* Update button styling */
table a[href^="updatepage"] button {
    background-color: rgb(100, 150, 255); /* Default blue for Update */
}

/* Update button hover effect */
table a[href^="updatepage"] button:hover {
    background-color: #0056b3; /* Darker blue */
    transform: scale(1.10);
}
    

</style>
</head>
<body>

	<h1>All Products Details</h1>
     
            <a href="index.jsp" id="a"><button type="submit">Create Product</button></a>
	<table>
		<tr>
			<th class="a">Id</th>
			<th class="a">Name</th>
			<th class="a">Price</th>
			<th class="a">Brand</th>
			<th class="a">Description</th>
			<th colspan="2" class="a">Action</th>
		</tr>
   <% 
   ResultSet rs = (ResultSet) request.getAttribute("abc");
   while(rs.next()){
   %>
	<tr>
		<td class=a><%=rs.getString(1)%></td>
		<td class="a"><%=rs.getString(2)%></td>
		<td class="a"><%=rs.getString(3)%></td>
		<td class="a"><%=rs.getString(4)%></td>
		<td class="a"><%=rs.getString(5)%></td>
		<td class="a">
		<a href="delete?id=<%=rs.getString(1)%>"> <button>Delete</button> </a></td>
		<td class="a"><a href="updatepage?id=<%=rs.getString(1)%>"> <button>Update</button> </a>
		</td>
	</tr>
	
	<%
	}
	%>
	
	</table>
</body>
</html>