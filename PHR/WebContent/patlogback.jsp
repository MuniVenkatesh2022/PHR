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
int c=0;
try{
String sql="update  booking set status='cancelled',sts1='4' where CURDATE()>adate and sts1='0'";
PreparedStatement pi=con.prepareStatement(sql);
pi.executeUpdate();
}
catch(Exception e){
	System.out.println(e);
}


String email=request.getParameter("email");
String pswd=request.getParameter("pswd");
System.out.println(email);
System.out.println(pswd);
String pass="";
String logname="";
String id=request.getParameter("id");
session.setAttribute("apid",id);

PreparedStatement ps=con.prepareStatement("select count(*),password,name from patreg  where email='"+email+"' and password='"+pswd+"'");
ResultSet rs=ps.executeQuery();
while(rs.next()){
	c=rs.getInt(1);
	pass=rs.getString(2);
	logname=rs.getString(3);

}

if(c==0){
	out.println("ddddddddddddd");
	
	response.sendRedirect("patlog.jsp?m= You Dont have an Account");

}
if(c>0){

	if(pass.equals(pass)){
		session.setAttribute("email", email);
		session.setAttribute("logname", logname);

		response.sendRedirect("pathome.jsp");

		
	}
	else{
	response.sendRedirect("patlog.jsp?m=You Entered An Wrong password");

	}
}



%>






</body>
</html>