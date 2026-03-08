<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Testingg Book</title>
</head>

<body>

	<h2>Testingggg   Book</h2>

	<s:form action="addBook" method="post">

		<s:textfield name="title" label="Book Title" />

		<s:textfield name="price" label="Price" />

		<s:submit value="Add Book" />

	</s:form>

</body>
</html>