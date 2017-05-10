<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome Page</title>
<style>
body{
margin-top: 10%;
margin-left: 43%;
margin-right:25%;
margin-bottom:25%;
}
</style>
</head>
<body>

	<p>
		Welcome
		<b><%=session.getAttribute("usernameSession")%></b></p>
	
	<form action="userprofile" method="post">
		First Name: <input type="text" name="fname" required><br>
		Last Name: <input type="text" name="lname" required><br>
		E-Mail: <input type="email" name="email" required><br>
		D.O.B: <input type="date" name="dateOfBirth"><br>
		Address: <input type="text" name="address" required><br>
		<input type="submit" value="Submit">
	</form>
	<br>
	<a href="/logout"><input type="submit" value="Log Out"></a>

</body>
</html>