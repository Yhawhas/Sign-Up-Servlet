<%@page import="com.signup.model.PersonDetailsStorage"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page import="java.util.Iterator"%>
<%@  page import="java.util.ArrayList , com.signup.bean.Person, java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Profile Page</title>
<style>
body {
	margin-top: 12%;
	margin-left: 42%;
	margin-right: 25%;
	margin-bottom: 25%;
}
</style>
</head>
<body>
	<%
		PersonDetailsStorage personObj = new PersonDetailsStorage(); 
		String userName = (String)session.getAttribute("usernameSession");
		Iterator<Person> itr= personObj.getPersonDetail(userName).iterator();

			while(itr.hasNext()){
				Person person = itr.next();
				out.println("First name: "+person.getFirstName()+"<br>");
				out.println("Last name: " +person.getLastName()+"<br>");
				out.println("E-Mail: "+person.getEMail()+"<br>");
				out.println("D.O.B: "+person.getDateOfBirth()+"<br>");
				out.println("Address: "+person.getAddress()+"<br><br>");
			}
	%>

	<br>
	<a href="/logout"><input type="submit" value="Log Out"></a>
	<br>
	<a href="/WelcomePage"><input type="submit"
		value="Add one more Person Detail"></a>

</body>
</html>