<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Smart Medical System using Elgamal</title>
</head>
<body>

<%@page import="java.sql.*" %>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/PHR", "root",
		"root");
String dname=request.getParameter("dname");
String dmail=request.getParameter("dmail");

String pname=request.getParameter("pname");
String pmail=request.getParameter("pmail");
String sympt=request.getParameter("sympt");
String adate=request.getParameter("adate");

System.out.println(dname);

String sql="insert into `booking`(`pname`,`pemail`,`dname`,`demail`,`sympt`,`adate`) values ( '"+pname+"','"+pmail+"','"+dname+"','"+dmail+"','"+sympt+"','"+adate+"')";

PreparedStatement ps=con.prepareStatement(sql);
ps.executeUpdate();
response.sendRedirect("psched.jsp?m=Booked Successfully");



%>

</body>
</html>