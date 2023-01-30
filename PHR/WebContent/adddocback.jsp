<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ehancing Security</title>
</head>
<body>
<%@page import="java.sql.*" %>

<%
String sql="";
String a1=request.getParameter("a1");
String a2=request.getParameter("a2");
String a3=request.getParameter("a3");
String a4=request.getParameter("a4");
String pswd=request.getParameter("pswd");
String addr=request.getParameter("addr");

System.out.println("select count(*) from doctor where email='"+a4+"'");

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/PHR","root", "root");
PreparedStatement pst =con.prepareStatement("select count(*) from doctor where email='"+a4+"'");
int a=0;
ResultSet od=pst.executeQuery();
while(od.next()){
	a=od.getInt(1);	
}
if(a>0){
	
	response.sendRedirect("adddoctors.jsp?m=this email id already in using");
	}
else{
	sql="insert into doctor(name,email,numb,dept,pswd,addr) values('"+a1+"','"+a4+"','"+a3+"','"+a2+"','"+pswd+"','"+addr+"')";
	System.out.println(sql);
	PreparedStatement pd=con.prepareStatement(sql);
	pd.executeUpdate();
	response.sendRedirect("adddoctors.jsp?m=details added successfully");
}


%>
</body>
</html>