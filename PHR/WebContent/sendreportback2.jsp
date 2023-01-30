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
		String file1 = request.getParameter("fname");
		File f = new File("C:/Users/ymts0410/Desktop/" + file1);
		FileInputStream fis = new FileInputStream(f);
		

		
	


		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/PHR", "root", "root");


							PreparedStatement ps = con.prepareStatement("update booking set file1=AES_ENCRYPT(?,'dldpr'),status='closed',sts1='2' where id='"+request.getParameter("id")+"'");
							ps.setBinaryStream(1, (InputStream) fis, (int) (f.length()));

			 ps.executeUpdate();


				response.sendRedirect("dvapp.jsp");
				
				}
			
			
		 catch (Exception ex) {

			out.println("Error in connection : " + ex);

		}
	%>
	



</body>
</html>