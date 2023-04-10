<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Change password</title>
</head>
<body>
<h1>Change Password</h1><br>
	<form action="changepassword.jsp">
		Enter existing password<br><input type = "password" name = "existing password"><br><br>
		Enter new password<br><input type = "password" name = "new password"><br><br>
		Confirm password<br><input type = "password" name = "confirm password"><br><br>
		<input type = "submit" value = "change">
	</form>
</body>
</html>