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
<title>Ehancing Security</title>
</head>
<body>
<%
String name=request.getParameter("name");
String pswd=request.getParameter("pswd");
String email=(String)request.getParameter("email");
/* String faculty=(String)request.getParameter("faculty"); */

String date=(String)request.getParameter("date");
String gender=request.getParameter("gender");
String address=request.getParameter("address");
String phone=request.getParameter("phone");




try{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/PHR", "root", "root");
PreparedStatement pst1=con.prepareStatement("insert into patreg(name,password,email,dateofbirth,gender,address,mobile) values(?,?,?,?,?,?,?)");
pst1.setString(1,name);
pst1.setString(2,pswd);
pst1.setString(3,email);
pst1.setString(4,date);
pst1.setString(5,gender);
pst1.setString(6,address);
pst1.setString(7,phone);


pst1.executeUpdate();
response.sendRedirect("patlog.jsp?msg=your registration is completed successfully");
}
catch(Exception e)
{
	e.printStackTrace();
}

%>


%>
</body>
</html>
