<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
</head>
<body>

	<p>
		Welcome <b><%=session.getAttribute("usernameSession")%></b>
	</p>

	<form action="userprofile" method="post">
		First Name: <input type="text" name="fname" id="firstName" onblur="firstNameValidation()" required><br><br>
		Last Name:<input type="text" name="lname" id="lastName" onblur="lastNameValidation()" required><br><br> 
		E-Mail: <input type="email" name="email" required><br><br> 
		D.O.B: <input type="date" name="dateOfBirth"><br><br> 
		Address: <input type="text" name="address" required><br>
		<input type="submit" value="Submit">
	</form>
	<br>
	<br>
	
	<a href="/logout"><input type="submit" value="Log Out"></a>
	<a href="/ProfilePage "><input type="submit" value="Profile Page"></a>

	<script>
		function firstNameValidation() {
			firstName = document.getElementById("firstName").value;
			message = "Invalid First Name"
			txtValidation(firstName, message);
		}

		function lastNameValidation() {
			lastName = document.getElementById("lastName").value;
			message = "Invalid Last Name"
			txtValidation(lastName, message);
		}

		function txtValidation(txt, message) {
			var chars = txt.toLowerCase();
			for (i = 0; i < chars.length; i++) {
				if (chars.charAt(i) >= 'a' && chars.charAt(i) <= 'z') {
				} else {
					alert(message + ", Only Alphabets");
					return false;
				}
			}
			return true;
		}
	</script>

</body>
</html>