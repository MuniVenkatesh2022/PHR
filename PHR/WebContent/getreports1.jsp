<%@page import="java.sql.*"%>
<%@page import="java.util.Random"%>

<% 
String pname=request.getParameter("pname");                                                                                                              
System.out.println(pname);

String dname=request.getParameter("pemail");                                                                                                              
System.out.println(dname); 
session.setAttribute("pemail",dname); 
%>
<%

Random r=new Random();
int a=r.nextInt(10000);	
int c=0;
//String a1=S;//request.getParameter("p");
System.out.println(a);

Random d=new Random();
int e1=d.nextInt(10000);	
int c1=0;


//String e1=request.getParameter("g");
System.out.println(e1); 



String a2=request.getParameter("a");
System.out.println(a2);

try
	{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/PHR","root","root");
	
	
	
	
	PreparedStatement ps1=con.prepareStatement("update  booking set request='pending',p='"+a+"',g='"+e1+"',a='"+a2+"' where id= '"+request.getParameter("id")+"'" );
	ps1.executeUpdate();
	response.sendRedirect("pviewreports.jsp?msg=request send sucessfully");
	
	
	%>
	<% 
			    
			}catch(Exception e){
			    	e.printStackTrace();
			    }
				%>
				 <!-- ALL JS FILES -->
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