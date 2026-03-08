<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head><title>Edit Book</title></head>
<body bgcolor="#f0f0f0">

    <table width="100%" bgcolor="#003366" cellpadding="10">
        <tr>
            <td><font color="white" size="5"><b>Library Management System</b></font></td>
        </tr>
    </table>

    <br>

    <table align="center" width="400" border="1" cellpadding="12" cellspacing="0" bgcolor="white">
        <tr bgcolor="#003366">
            <td colspan="2" align="center">
                <font color="white"><b>Edit Book</b></font>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <s:form action="updateBook">
                    <s:hidden name="book.id" value="%{book.id}"/>
                    <s:textfield name="book.title" label="Title" value="%{book.title}"/>
                    <s:textfield name="book.price" label="Price" value="%{book.price}"/>
                    <s:submit value="Update Book"/>
                </s:form>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <a href="viewBook">Back to All Books</a>
            </td>
        </tr>
    </table>

</body>
</html>