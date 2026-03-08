<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Books</title>
</head>
<body>

<h2>Books</h2>

<table border="1">

<tr>
<th>ID</th>
<th>Title</th>
<th>Price</th>
</tr>

<s:iterator value="books">

<tr>
<td><s:property value="id"/></td>
<td><s:property value="title"/></td>
<td><s:property value="price"/></td>
</tr>

</s:iterator>

</table>

<br><br>

<h3>Delete Book</h3>

<s:form action="deleteBook">

<s:textfield name="id" label="Enter Book ID"/>

<s:submit value="Delete Book"/>

</s:form>

</body>
</html>