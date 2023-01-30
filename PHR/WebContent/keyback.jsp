<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%



String name=request.getParameter("name");
String password=request.getParameter("pswd");
if(name.equalsIgnoreCase("Authority")&&password.equalsIgnoreCase("Authority"))
{
	response.sendRedirect("keyhome.jsp?msg=Login Successfully");
}else{
	response.sendRedirect("keylog.jsp?msg=Please enter valid credentials");
}


%>
</body>
</html>