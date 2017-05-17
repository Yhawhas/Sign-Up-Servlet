<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML >


<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<title>Registration Page</title>
<style>
body{
margin-top: 12%;
margin-left: 35%;
margin-bottom:20%;
}
</style>
<script type="text/javascript">
	function usernameValidation() {
		var chars = userName.toLowerCase();
		for (i = 0; i < chars.length; i++) {
			var nchar = chars.charAt(i);
			if (chars.charAt(i) >= 'a' && chars.charAt(i) <= 'z') {
			} else {
				return false;
			}
		}
		return true;
	}

	  function containsCapital(){
		  for (i = 0; i < userPassword.length; i++){
			  if(userPassword.charCodeAt(i)>= 65 && userPassword.charCodeAt(i)<= 97){
				  return true;
			  }
		  }
		  return false;
	  }    
	  
	  function containsSpecialCharacter(){
		  var specialCharacterArray = ['!', '@', '#', '$', '%', '^', '&', '*', '(', ')', '-', '_', '+', '='];
		  var charSet = new Set(specialCharacterArray);
		  for (i = 0; i < userPassword.length; i++){
			  var char = userPassword.charAt(i);
			  if(charSet.has(char)){
				  return true;
			  }
		  }
		  return false;
	  }
	  
	  function containsNumber(){
		  for (i = 0; i < userPassword.length; i++){
			  if(userPassword.charCodeAt(i)>= 48 && userPassword.charCodeAt(i)<= 57){
				  return true;
			  }
		  }
		  return false;	  
		  }

	function formvalidation() {
		userName = document.SignupForm.username.value;
		userPassword = document.SignupForm.password1.value;
		var userPassword2 = document.SignupForm.password2.value;
		if (userName.length < 3 || !usernameValidation()) {
			alert(" Incorrect Username, only alphabets are allowed")
			return false;
		}
		if (userPassword == userPassword2 && userPassword.length > 6 && containsCapital() && containsSpecialCharacter() && containsNumber()) {
			return true;
		} else {
			alert("Password Incorrect ")
			return false;
		}
	}
</script>
</head>
<body>
	<%@ page session="false"%>
	<h1>Sign Up</h1>
	<form name="SignupForm" action="signup" method="post" onsubmit="return formvalidation()">
		User Name: <input type="text" name="username" placeholder = "Ex: yhawhas" required>*Minimum 3 characters and Only Alphabets are allowed<br><br>
		Password: <input type="password" name="password1" placeholder = "Ex: 31@Joshua" required>*Minimum 6 Characters with atleast 1 capital, 1 number and 1 special character<br><br>
		Re-Type Password: <input type="password" name="password2" required><br>
		<input type="submit" value="Sign Up"><br>
	</form>
</body>
</html>
