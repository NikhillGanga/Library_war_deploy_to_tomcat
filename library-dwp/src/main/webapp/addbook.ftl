
<html>
<head><title>Add Book</title>
</head>
<style>
.errormessage
{
 color:red;
}
</style>
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
                <font color="white"><b>Add New Book</b></font>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <@s.form action="addBook">
                    <@s.textfield name="title" label="Title"/>
                    <@s.textfield name="price" label="Price"/>
                    <@s.submit value="Add Book"/>
                </@s.form>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <a href="viewBook">Back to Books</a>
            </td>
        </tr>
    </table>

</body>
</html>