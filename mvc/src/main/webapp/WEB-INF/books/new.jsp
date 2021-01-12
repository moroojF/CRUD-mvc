<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>    
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/webjars/bootstrap/4.5.0/css/bootstrap.min.css" />
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container">
<h1>New Book</h1>
<form:form action="/books" method="post" modelAttribute="book">
	<div class="form-group mt-4">
        <form:label path="title">Title</form:label>
        <form:errors path="title"/>
        <form:input class="form-control" path="title"/>
	</div>
	<div class="form-group mt-3">
        <form:label path="description">Description</form:label>
        <form:errors path="description"/>
        <form:textarea class="form-control" path="description"/>
    </div>
	<div class="form-group mt-3">
        <form:label path="language">Language</form:label>
        <form:errors path="language"/>
        <form:input class="form-control" path="language"/>
	</div>
	<div class="form-group mt-3">
        <form:label path="numberOfPages">Pages</form:label>
        <form:errors path="numberOfPages"/>     
        <form:input class="form-control" type="number" path="numberOfPages"/>
	</div>
    <input type="submit" value="Submit" class="btn btn-dark mt-3"/>
</form:form>    
</div>
</body>
</html>