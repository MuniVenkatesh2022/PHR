<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    <%@page import="java.io.File"%>
<%@page	import="java.io.FileInputStream"%>
<%@page	import="java.io.FileNotFoundException"%>
<%@page	import="java.io.FileOutputStream"%>
<%@page import="java.io.IOException"%>   
<%@page import="java.io.InputStream"%>   
<%@page import="java.io.OutputStream"%>
<meta charset="ISO-8859-1">
<title>Smart Medical System using Elgamal</title>
</head>
<body>
<%
String email=request.getParameter("email");
session.setAttribute("email", email);
System.out.println(email);
String password=request.getParameter("pswd");
System.out.println(password);
String name=null;
System.out.println(email);

int cnt=0;
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/PHR","root", "root");
PreparedStatement ps1=con.prepareStatement("select count(*),name from doctor where email=? and pswd=? ");
ps1.setString(1,email);
ps1.setString(2,password);
ResultSet rs=ps1.executeQuery();
while(rs.next())
{
	name=rs.getString("name");
	
	
	
	
	
	 cnt=rs.getInt(1);
}
System.out.println(cnt);
if(cnt==1)
{
	session.setAttribute("email", email);
	response.sendRedirect("dochome.jsp?msg=Login Successful");
	
}
else
{
	response.sendRedirect("doctorlog.jsp?msg=Invalid credentials. Please try again or not accepted");
}

}
catch(Exception e)
{
	e.printStackTrace();
}
%>