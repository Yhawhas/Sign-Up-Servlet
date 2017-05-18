<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome Page</title>
<style>
body {
	margin-top: 10%;
	margin-left: 43%;
	margin-right: 25%;
	margin-bottom: 25%;
}
</style>
	<script>
		function textValidation(){
			var firstName = document.getElementById("firstName").value;
			var lastName = document.getElementById("lastName").value;
			var firstNameString = firstName.toLowerCase();
			var lastNameString = lastName.toLowerCase();
			for (i = 0; i < firstNameString.length; i++) {
				if (firstNameString.charAt(i) >= 'a' && firstNameString.charAt(i) <= 'z') {
				} else {
					alert("Invalid First Name, Only Alphabets");
					return false;
				}
			}
			for (i = 0; i < lastNameString.length; i++) {
				if (lastNameString.charAt(i) >= 'a' && lastNameString.charAt(i) <= 'z') {
					} else {
					alert("Invalid Last Name, Only Alphabets");
					return false;
				}
			}
		}
			
		</script>
</head>
<body>
	<c:set value="${sessionScope['usernameSession']}" var="sessionUsername"></c:set>
	<p>
			Welcome <b><c:out value="${sessionUsername}"></c:out></b>
	</p>
	<form action="userprofile" method="post" onsubmit="return textValidation()">
		First Name: <input type="text" name="fname" id="firstName" required><br><br>
		Last Name:<input type="text" name="lname" id="lastName" required><br><br> 
		E-Mail: <input type="email" name="email" required><br><br> 
		D.O.B: <input type="date" name="dateOfBirth"><br><br> 
		Address: <input type="text" name="address" required><br>
		<input type="submit" value="Submit">
	</form>
	<br>
	
	<a href="/logout"><input type="submit" value="Log Out"></a>
	<a href="/ProfilePage "><input type="submit" value="Profile Page"></a>


</body>
</html>