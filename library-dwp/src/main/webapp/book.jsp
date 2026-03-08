<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head><title>All Books</title></head>
<body bgcolor="#f0f0f0">

    <table width="100%" bgcolor="#003366" cellpadding="10">
        <tr>
            <td><font color="white" size="5"><b>Library Management System</b></font></td>
        </tr>
    </table>

    <br>

    <table align="center" width="100%" cellpadding="5">
        <tr>
            <td>
                <a href="addBookPage">Add Book</a> |
                <a href="searchBook">Search Book</a> |
                <a href="index.jsp">Home</a>
            </td>
        </tr>
    </table>

    <br>

    <table align="center" width="70%" border="1" cellpadding="10" cellspacing="0" bgcolor="white">
        <tr bgcolor="#003366">
            <td><font color="white"><b>ID</b></font></td>
            <td><font color="white"><b>Title</b></font></td>
            <td><font color="white"><b>Price</b></font></td>
            <td><font color="white"><b>Edit</b></font></td>
            <td><font color="white"><b>Delete</b></font></td>
        </tr>

        <s:iterator value="books" status="stat">
            <tr bgcolor='<s:if test="#stat.even">white</s:if><s:else>#e8e8e8</s:else>'>
                <td><s:property value="id"/></td>
                <td><s:property value="title"/></td>
                <td><s:property value="price"/></td>
                <td>
                    <s:url action="editBookPage" var="editUrl">
                        <s:param name="id" value="id"/>
                    </s:url>
                    <a href="<s:property value="#editUrl"/>">Edit</a>
                </td>
                <td>
                    <s:url action="deleteBook" var="deleteUrl">
                        <s:param name="id" value="id"/>
                    </s:url>
                    <a href="<s:property value="#deleteUrl"/>"
                       onclick="return confirm('Delete this book?')">Delete</a>
                </td>
            </tr>
        </s:iterator>
    </table>

    <br>

    <table align="center" width="400" border="1" cellpadding="12" cellspacing="0" bgcolor="white">
        <tr bgcolor="#003366">
            <td colspan="2" align="center">
                <font color="white"><b>Delete Book by ID</b></font>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <s:form action="deleteBook">
                    <s:textfield name="id" label="Enter Book ID"/>
                    <s:submit value="Delete" onclick="return confirm('Are you sure?')"/>
                </s:form>
            </td>
        </tr>
    </table>

</body>
</html>