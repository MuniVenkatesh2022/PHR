<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<!--
Tinker Template
http://www.templatemo.com/tm-506-tinker
-->
        <title>Ehancing Security</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900" rel="stylesheet">
        
        <link rel="apple-touch-icon" href="apple-touch-icon.png">

        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/bootstrap-theme.min.css">
        <link rel="stylesheet" href="css/fontAwesome.css">
        <link rel="stylesheet" href="css/hero-slider.css">
        <link rel="stylesheet" href="css/owl-carousel.css">
        <link rel="stylesheet" href="css/templatemo-style.css">
        <link rel="stylesheet" href="css/lightbox.css">

        <script src="js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
    </head>
    <body id="home" oncopy="return false" oncut="return false" onpaste="return false" data-spy="scroll" data-target="#navbar-wd" data-offset="98">
<%@page import="java.util.Date"%> 
<%@page import=" java.text.ParseException"%> 
<%@page import=" java.text.SimpleDateFormat"%>
<%@page import="  java.time.format.DateTimeFormatter"%>
<%@page import="  java.util.*"%>
<%@page import="  java.time.LocalDateTime"%>


	<body>
    <div class="header">
        <div class="container">
            <nav class="navbar navbar-inverse" role="navigation">
                <div class="navbar-header">
                    <button type="button" id="nav-toggle" class="navbar-toggle" data-toggle="collapse" data-target="#main-nav">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                     <!-- <a href="#" class="navbar-brand scroll-top"><em>T</em>inker</a> --> 
                    
                    <h2 style="color:#ffffcc;;  background-color: #5bc0de; text-align:center;"> A Lightweight Policy Update Scheme for Outsourced Personal Health Records Sharing </h2>
                </div>
                <!--/.navbar-header-->
                <!-- <div id="main-nav" class="collapse navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li><a href="index.html" class="scroll-link">Home</a></li>
                        <li><a href="healthcare.jsp" class="scroll-link">Healthcare</a></li> 
                        <li><a href="#" class="scroll-link" data-id="Doctor">Doctor</a></li>
                        <li><a href="#" class="scroll-link" data-id="Patient">Patient</a></li>
                        <li><a href="#" class="scroll-link" data-id="Key generator">Key Generator</a></li>
                    </ul> -->
                    <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav mx-auto">
                    <li class="nav-item">
                        <a href="pathome.jsp" class="nav-link"><span data-hover="Home" style="color: blueviolet;"
   
                        >Home</span></a>
                       </li>
                   <li class="nav-item">
                        <a href="viewprofile.jsp" class="nav-link"><span data-hover="View Profile" style="color: blueviolet;">View profile</span></a>
                    </li>
                     <li class="nav-item">
                        <a href="slot.jsp" class="nav-link"><span data-hover="View Profile" style="color: blueviolet;">Slot Booking</span></a>
                    </li>
                    <li class="nav-item">
                        <a href="pviewreports.jsp" class="nav-link"><span data-hover="View Reports" style="color: blueviolet;">View Reports</span></a>
                    </li>
                    <li class="nav-item">
                        <a href="index.html" class="nav-link"><span data-hover="Log Out" style="color: blueviolet;">Logout</span></a>
                    </li>
                    
                    <!-- <li class="nav-item">
                        <a href="#contact" class="nav-link"><span data-hover="Contact">Contact</span></a>
                    </li> -->
                </ul>
                    
                    <!-- <li class="nav-item">
                        <a href="#contact" class="nav-link"><span data-hover="Contact">Contact</span></a>
                    </li> -->
              
           

                <ul class="navbar-nav ml-lg-auto">
                    <div class="ml-lg-4">
                      <div class="color-mode d-lg-flex justify-content-center align-items-center">
                        
                     <!--    <img alt="" src="images/pharmacy-icon.png" width="60px"> -->
                        
                      </div>
                    </div>
                </ul>
            </div>
        </div>
    </nav>

    <!-- ABOUT -->
    <section class="about full-screen d-lg-flex justify-content-center align-items-center" id="about" style="background-color: skyblue;">
        <div class="container">
            <div class="row">
                
                <div class="col-lg-5 col-md-5 col-5 d-flex align-items-center"></div>
                    <div class="about-text">
                        
                        <!-- <h1 class="animated animated-text">
                            <span class="mr-2">Medicine is a Science of Uncertainity  and an Art  of Probability</span>
                            
                        </h1> -->
                        <header id="header">
                <div class="intro"> 
    <div class="overlay">
      <div class="container">
        <div class="row">
          <div class="intro-text">
           </div>
        </div>
      </div>
    </div>
</header>

    <div align="center">
<!-- <form action="adocb.jsp" style=""> -->



<table border="1"style="border-color: black;background-color:white">
<tr>
<th>Doctor Name</th>
<th>Doctor  Email</th>
<th>Symptoms</th>
<th>Appointment Date</th>
<th>Status</th>
<!-- <th>CheckUp/<br>SendReport</th> -->
<th>Get Reports</th>


<!-- <th>CheckUp</th> -->
<!-- <th>ReportFile</th> -->
</tr>

<%@page import="java.sql.*" %>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/PHR", "root",
		"root");
/* 
String pemail=request.getParameter("email");
session.setAttribute("email", pemail);
System.out.println(pemail); */
PreparedStatement ps=con.prepareStatement("select * from booking where pemail='"+session.getAttribute("email")+"' and sts1='2'");
ResultSet rs=ps.executeQuery();
/* ps.setString(1,pemail); */
/* ps.setString(2,password); */
/* ResultSet rs=ps.executeQuery(); */	
while(rs.next()){
%>


<tr>
<td><%=rs.getString(4)%></td>
<td><%=rs.getString(5)%></td>
<td><%=rs.getString(6)%></td>
<td><%=rs.getString(7)%></td>
<td><%=rs.getString(8)%></td>


<td>


 <%if (rs.getString("sts1").equals("2") && rs.getString("request").equals("--")) { 
		  
        // When Date d1 = Date d2 
        out.println("Wait for Responce"); 
     
%>
<%-- 
<form action="getreports1.jsp">
<input type="text" name="a" required="required" pattern="[0-9]{1,4}">
<input type="hidden" name="id" value="<%=rs.getString(1)%>">

<input type="submit" value="Get Reports">
</form> --%>
<%-- <a href="getreports1.jsp?id=<%=rs.getString(1)%>">Get Reports</a>
 --%>
<%} 

 else if (rs.getString("sts1").equals("2") && rs.getString("request").equals("pending")) { 
%>Waiting For response
<%}
 else if (rs.getString("sts1").equals("2") && rs.getString("request").equals("accepted")) { 
 	 %>
 	 <p style="color: black;"> Your Key /<b><%=rs.getString("q") %></b></p>
 	 <form action="viewreportp.jsp">
 	 <input type="hidden" name="id" value="<%=rs.getString(1)%>">
 	 
 	 <input type="text" required="required" name="pkey" >
 	 
 	 <input type="submit" value="view"> </form>
<%--  	 <a style="color: green;" href="viewreportp.jsp?id=<%=rs.getString(1) %>">View Report</a>
 --%> 	 
 	 <%} %>
</td>


</tr>

<%} %>


</table>

</div>
				
						</div>
              

     <br>
   <br>
   <br>
   <br>
   <br>
   <br>
   <br>
   <br>
   <br>
   <br>
   <br>
   <br>
   <br>
   <br>
   <br>
   <br>
   <br>
   <br>
   <br>
   <br>
   <br>
   <br>
   <br>
   

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.11.2.min.js"><\/script>')</script>

    <script src="js/vendor/bootstrap.min.js"></script>

    <script src="js/plugins.js"></script>
    <script src="js/main.js"></script>

    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js" type="text/javascript"></script>
    <script type="text/javascript">
    $(document).ready(function() {
        // navigation click actions 
        $('.scroll-link').on('click', function(event){
            event.preventDefault();
            var sectionID = $(this).attr("data-id");
            scrollToID('#' + sectionID, 750);
        });
        // scroll to top action
        $('.scroll-top').on('click', function(event) {
            event.preventDefault();
            $('html, body').animate({scrollTop:0}, 'slow');         
        });
        // mobile nav toggle
        $('#nav-toggle').on('click', function (event) {
            event.preventDefault();
            $('#main-nav').toggleClass("open");
        });
    });
    // scroll function
    function scrollToID(id, speed){
        var offSet = 50;
        var targetOffset = $(id).offset().top - offSet;
        var mainNav = $('#main-nav');
        $('html,body').animate({scrollTop:targetOffset}, speed);
        if (mainNav.hasClass("open")) {
            mainNav.css("height", "1px").removeClass("in").addClass("collapse");
            mainNav.removeClass("open");
        }
    }
    if (typeof console === "undefined") {
        console = {
            log: function() { }
        };
    }
    </script>
</body>
</html>