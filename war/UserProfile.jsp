<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Profile Page</title>
<style>
body{
margin-top: 12%;
margin-left: 42%;
margin-right:25%;
margin-bottom:25%;
}
</style>
</head>
<body>
<%-- <%String name =  %> --%>
First Name: <%out.print(getServletContext().getAttribute("fname"));%><br>
Last Name: <%out.print(getServletContext().getAttribute("lname"));%><br>
E-Mail: <%out.print(getServletContext().getAttribute("email"));%><br>
D.O.B: <%out.print(getServletContext().getAttribute("dateOfBirth"));%><br>
Address: <%out.print(getServletContext().getAttribute("address"));%><br>
<br><a href="/logout"><input type = "submit" value = "Log Out"></a>

</body>
</html>