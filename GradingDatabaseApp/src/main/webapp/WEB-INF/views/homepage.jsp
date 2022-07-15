<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Grade Database</title>
<link href="/style.css" rel="stylesheet">
</head>
<body>
<table class="table">
	<thead>
		<tr>
			<th>Name</th>
			<th>Type</th>
			<th>Score</th>
			<th>Total</th>
			<th>Delete</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="grade" items="${grades}">
			<tr>
				<td><a href="/grades/detail?id=${grade.id}">${grade.name}</a></td>
				<td>${grade.type}</td>
				<td>${grade.score}</td>
				<td>${grade.total}</td>
				<td><a href="/delete?id=${grade.id}" class="button"">Delete</a></td> 
			</tr>
		</c:forEach>
	</tbody>
</table>
<div>
<a href="/insert?id=${animal.id}" class="button">Add New Entry</a>
</div>
</body>
</html>