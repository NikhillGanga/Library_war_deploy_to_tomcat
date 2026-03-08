<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head><title>Search Book</title></head>
<body bgcolor="#f0f0f0">

    <table width="100%" bgcolor="#003366" cellpadding="10">
        <tr>
            <td><font color="white" size="5"><b>Library Management System</b></font></td>
        </tr>
    </table>

    <br>

    <table align="center" width="400" border="1" cellpadding="12" cellspacing="0" bgcolor="white">
        <tr bgcolor="#003366">
            <td align="center">
                <font color="white"><b>Search Book by Title</b></font>
            </td>
        </tr>
        <tr>
            <td>
                <s:form action="searchBook">
                    <s:textfield name="title" label="Enter Title"/>
                    <s:submit value="Search"/>
                </s:form>
            </td>
        </tr>
    </table>

    <br>

    <s:if test="books != null && books.size() > 0">
        <table align="center" width="70%" border="1" cellpadding="10" cellspacing="0" bgcolor="white">
            <tr bgcolor="#003366">
                <td><font color="white"><b>ID</b></font></td>
                <td><font color="white"><b>Title</b></font></td>
                <td><font color="white"><b>Price</b></font></td>
                <td><font color="white"><b>Action</b></font></td>
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
                </tr>
            </s:iterator>
        </table>
    </s:if>

    <s:if test="notFound == true">
        <br>
        <table align="center" width="400" border="1" cellpadding="10" bgcolor="white">
            <tr>
                <td align="center"><font color="red"><b>No book found with that title.</b></font></td>
            </tr>
        </table>
    </s:if>

    <br>
    <table align="center" width="400">
        <tr>
            <td align="center"><a href="viewBook">Back to All Books</a></td>
        </tr>
    </table>

</body>
</html>