<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ehancing Security</title>
</head>
<body>
<%
String name=request.getParameter("name");
String password=request.getParameter("pswd");
if(name.equals("health")&&password.equals("health"))
{
	response.sendRedirect("healthhome.jsp?msg=WELCOME TO  HOME PAGE");
}else{
	response.sendRedirect("healthcare.jsp?msg=Please enter valid credentials");
}
%>
</body>
</html>