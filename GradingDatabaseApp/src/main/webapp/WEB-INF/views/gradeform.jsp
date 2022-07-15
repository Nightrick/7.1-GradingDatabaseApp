<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert New Grade</title>
<link href="/style.css" rel="stylesheet">
</head>
<body>
	<form class="form" action="/inputconfirmation" method="post">
		<input type="hidden" value="${grade.id}">
	
		<label for="name">Name</label>
		<input type="text" value="${grade.name}" placeholder="Name" name="name"></input>
		
		<label for="type">Type</label>
		<input type="text" value="${grade.type}" placeholder="Type" name="type"></input>
		
		<label for="score">Score</label>
		<input type="number" value="${grade.score}" placeholder="Score" name="score" min="0" max="100"></input>
		
		<label for="total">Total</label>
		<input type="number" value="${grade.total}" placeholder="Total" name="total" min="0" max="100"></input>
		
		<input type="submit">
	</form>

</body>
</html>