<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Log In Page</title>
<style>
body {
	margin-top: 12%;
	margin-left: 40%;
	margin-right: 25%;
	margin-bottom: 25%;
}
</style>


</head>
<body>
	<%@ page session="false"%>
	<p>${message1}</p>
	<h1>Log In page</h1>
	<form action="login" method="post" name="LoginForm">
		User Name: <input type="text" name="uname" onblur="usernameValidation()" required><br><br> 
			Password: <input type="password" name="password" required><br><br> 
			<input type="submit" value="Log In">
	</form>
	<script>
		function alertFunction(){
			if(!isNaN("${message}"))
			return;
			
			alert("${message}");
		}
		alertFunction();
		function usernameValidation() {
			userName = document.LoginForm.uname.value;
			var chars = userName.toLowerCase();
			for (i = 0; i < chars.length; i++) {
				if (chars.charAt(i) >= 'a' && chars.charAt(i) <= 'z') {
				} else {
					alert("Invalid Username, Only Alphabets");
					return false;
				}
			}
			return true;
		}
	</script>
</body>
</html>