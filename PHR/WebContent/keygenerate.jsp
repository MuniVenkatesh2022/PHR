<%@ page
	import="java.util.Date.*,java.util.*,java.text.ParseException.*"%>
<%@page
	import="java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>
<%@ page
	import="java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>
<%@ page import="java.sql.*"%>
<%@page import=" java.security.*"%>
<%@page import="javax.crypto.*"%>
<%@page import="java.math.BigDecimal"%>
<%@page import="java.math.BigInteger"%>

<html>
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script type="text/javascript">
 
	
</script>
</head>

<body>
<%@page import="java.io.*"%>
	<%@page import="java.util.*"%> 
	<%@page import="java.lang.*"%>
	<%@page import="Elgamal.*"%>
	<%@page import="java.math.BigInteger"%>
	<%@page import=" java.sql.*"%>
	<% 

	 String b=request.getParameter("b");
	System.out.println(b); 



	 /* Key generating */
	String s1="";//session.getAttribute("p").toString();
	String s2="";//session.getAttribute("g").toString();
	String s3="";//session.getAttribute("a").toString();
	String s4=request.getParameter("b"); 

	
try
	{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/PHR","root","root");
	PreparedStatement ps1=con.prepareStatement("select p,g,a from booking where id= '"+request.getParameter("id")+"'" );
	ResultSet rs=ps1.executeQuery();
	while(rs.next())
	{


		s1=rs.getString(1);
		s2=rs.getString(2);
		s3=rs.getString(3);
		 
		 
		
		
	}
	
	
	System.out.println(s1);
	System.out.println(s2);
	System.out.println(s3);
	System.out.println(s4);

	long a1=Long.parseLong(s1);
	long a2=Long.parseLong(s2);
	long a3=Long.parseLong(s3);
	long a4=Long.parseLong(s4);

	long x=0, y=0;
	long pka=0, pkb=0;


	x=((long)Math.pow(a2,a3)) %a1;
	y=((long)Math.pow(a2,a4)) %a1;
	System.out.println(x+"========="+a4);

	pka=((long)Math.pow(y, a3)) %a1;
	pkb=((long)Math.pow(x, a4)) %a1;
	System.out.println(pka+"========="+pkb);

	if(pka==pkb)
	{
	   String z=request.getParameter("pkey");
	    System.out.println("pka"+pka);
	}
	else
	{
		System.out.println("Key is not Generated");
	}



		PreparedStatement ps = con.prepareStatement("update booking set request='accepted',b='"+b+"',q='"+pka+"'  where id='"+request.getParameter("id")+"'");
		ps.executeUpdate();
		
		
		
	response.sendRedirect("viewkeyrequest.jsp?m=Geky generated successfully");
			    
	}
	
	catch(Exception e){
			    	e.printStackTrace();
	}
			    %>
				
			
			
			

		
	
	



</body>
</html>