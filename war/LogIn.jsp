<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Log In Page</title>
<style>
body{
margin-top: 12%;
margin-left: 40%;
margin-right:25%;
margin-bottom:25%;
}
</style>

</head>
<body>
	<%@ page session="false"%>
	<h1>Log In page</h1>
	<form action="login" method="post">
		User Name: <input type="text" name="uname"  required><br>
		Password: <input type="password" name="password" required><br> <input type="submit" value="Log In">

	</form>

</body>
</html>