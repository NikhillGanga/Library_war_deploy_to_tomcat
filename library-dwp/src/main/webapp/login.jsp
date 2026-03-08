<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>

<style>
.errormessage{
    color:red;
}
</style>

</head>

<body>

<h1>Login Page</h1>

<s:form action="login" method="post">
    
    <s:textfield name="username" label="Username"/>
    <br><br>
    
    <s:password name="password" label="Password"/>
    <br><br>
    
    <s:submit value="Login"/>

</s:form>

</body>
</html>