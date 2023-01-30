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
                    
                    <h2 style="color:#ffffcc; text-align:center;"> A Lightweight Policy Update Scheme for Outsourced Personal Health Records Sharing </h2>
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
                        <a href="dochome.jsp" class="nav-link"><span data-hover="Home" style="color:  #ffffcc;"
   
                        >Home</span></a>
                        
                   <!--  </li>
                    <li class="nav-item">
                        <a href="healthcare.jsp" class="nav-link"><span data-hover="Add Doctors" style="color: #ffffcc;">Add Doctors</span></a>
                    </li> -->
                    <li class="nav-item">
                        <a href="avpat.jsp" class="nav-link"><span data-hover="View Patients" style="color: #ffffcc;">View Patients</span></a>
                    </li>
                     <li class="nav-item">
                        <a href="dvapp.jsp" class="nav-link"><span data-hover="Appointments" style="color: #ffffcc;">Appointments</span></a>
                    </li>
                    <!-- <li class="nav-item">
                        <a href="userlog.jsp" class="nav-link"><span data-hover="View Patients" style="color: #ffffcc;">Upload Reports</span></a>
                    </li> -->
                    <li class="nav-item">
                        <a href="dvreport.jsp" class="nav-link"><span data-hover="View Reports" style="color: #ffffcc;">View Reports</span></a>
                    </li>
                    <li class="nav-item">
                        <a href="index.html" class="nav-link"><span data-hover="Log Out" style="color: #ffffcc;">Logout</span></a>
                    </li>
                    <!-- <li class="nav-item">
                        <a href="#contact" class="nav-link"><span data-hover="Contact">Contact</span></a>
                    </li> -->
                </ul>
           

                <ul class="navbar-nav ml-lg-auto">
                    <div class="ml-lg-5">
                      <div class="color-mode d-lg-flex justify-content-center align-items-center">
                        
                        <!-- <img alt="" src="images/pharmacy-icon.png" width="60px"> -->
                </div>
                </navbar-collapse>
            </nav>
            </navbar>
        </div>
        </container>
    </div>
    </header>


    <div class="parallax-content baner-content" id="home">
        <div class="container">
            <div class="text-content">
            <div align="center" style="margin-top: 2%">
            
            <script type="text/javascript">


function checkcap(theForm) {
    if (theForm.des.value == null)
    {
       /*  alert('Enter Description!'); */
        return false;
    } else {
        return true;
    }
}


</script>
<form action="sendreportback2.jsp" onsubmit="return checkcap(this);">
<h2>Reports Sending</h2>
<table>

<tr>
<div class="content">
<tr>
<td>Report File</td><td><input type="file" id="input" title="file max size 1 MB" name="fname" required="required"></tr>
</div>
</table>
<input type="hidden" name="id" value="<%=request.getParameter("id")%>">
<input type="submit" class="sub" value="Send">
</form>
<script type="text/javascript">

const input = document.getElementById('input')

input.addEventListener('change', (event) => {
  const target = event.target
  	if (target.files && target.files[0]) {

      /*Maximum allowed size in bytes
        5MB Example
        Change first operand(multiplier) for your needs*/
      const maxAllowedSize = 1 * 1024 * 1024;
      if (target.files[0].size > maxAllowedSize) {
      	// Here you can ask your users to load correct file
       	target.value = ''
      }
  }
})</script>
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