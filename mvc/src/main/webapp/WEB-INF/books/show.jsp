<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/webjars/bootstrap/4.5.0/css/bootstrap.min.css" />
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container">
<h1>Book Details</h1>
<div class="card mt-5">
<div class="card-body">
<h3 class="card-title">Title:</h3>
<p class="card-title">
${book.title}.
</p>
<h4>Description:</h4>  
<p class="card-text">
${book.description}.
</p>
<h4>Language:</h4>  
<p class="card-text">
${book.language}.
</p>
<h4>Number of Pages:</h4>  
<p class="card-text">
${book.numberOfPages} Page.
</p>
</div>
</div>
<a href="/books/edit/${book.id}" class="btn btn-dark mt-4 inline">Edit Book</a>
<form action="/books/${book.id}" method="post">
	<div class="form-group mt-4">
    <input type="hidden" name="_method" value="delete">
    <input type="submit" value="Delete" class="btn btn-dark inline">
    </div>
</form>
</div>
</body>
</html>