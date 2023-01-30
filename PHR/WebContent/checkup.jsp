<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>



<%@page import="java.sql.*" %>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/PHR", "root",
		"root");
String sql="update booking  set status='complete', sts1='1' where id='"+request.getParameter("id")+"'";

System.out.println(sql);
PreparedStatement pl=con.prepareStatement(sql);
pl.executeUpdate();
response.sendRedirect("dvapp.jsp");

%>

</body>
</html>