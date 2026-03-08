<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head><title>Library Home</title></head>
<body bgcolor="#f0f0f0">

    <table width="100%" bgcolor="#003366" cellpadding="10">
        <tr>
            <td><font color="white" size="5"><b>Library Management System</b></font></td>
        </tr>
    </table>

    <br>

    <table align="center" width="400" border="1" cellpadding="15" cellspacing="0" bgcolor="white">
        <tr bgcolor="#003366">
            <td align="center"><font color="white"><b>Menu</b></font></td>
        </tr>
        <tr>
            <td align="center">
                <s:a action="addBookPage">Add New Book</s:a>
            </td>
        </tr>
        <tr>
            <td align="center">
                <s:a action="viewBook">View All Books</s:a>
            </td>
        </tr>
        <tr>
            <td align="center">
                <s:a action="searchBook">Search Book</s:a>
            </td>
        </tr>
    </table>

</body>
</html>