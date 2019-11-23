<% 
    response.setHeader("Cache-Control","no-store");
    response.setHeader("Pragma","no-cache"); 
    response.setDateHeader ("Expires", 0);
%>
<!DOCTYPE html>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<html>
<head>
	<title>Paramount Micronix & Micronix Alloy Casting</title>
	<meta http-equiv="Content-Type" content="text/html" charset="utf-8" />
	<meta name="keywords" content="Jigs, Fixtures, Special purpose machines, CNC, VMC, HMC, SPM, Paramount, Micronix, Wirecut" />
	<meta name="description" content="Website of Paramount Micronix Pvt. Ltd." />
	<link rel='shortcut icon' href='images/macpl_logo.png' />
<!-- Design and validation Links -->
	<link href="css/style.css" rel="stylesheet" type="text/css" charset="utf-8" />
	<link href="css/slider.css" rel="stylesheet" type="text/css" charset="utf-8" />
	<script src="js/slideshow.js" type="text/javascript"></script>
	<script src="js/validations.js" type="text/javascript"></script>
<!-- Navigation bar Links -->
	<link rel='stylesheet' type='text/css' href='css/menu_styles.css' />
	<script src="js/jquery-1.10.2.min.js" type="text/javascript"></script>
	<script type='text/javascript' src='js/menu_jquery.js'></script>
<!-- Dropdown Calender links -->
	<link href="jqueryCalendar.css" rel="stylesheet" type="text/css" charset="utf-8" />
	<script src="js/jquery-1.6.2.min.js"></script>
	<script src="js/jquery-ui-1.8.15.custom.min.js"></script>
	<script type="text/javascript">
	window.onload = function()
	{
		document.replyform.Date.value = new Date().toLocaleString();
	}
	</script>
</head>
<%
    if((session.getAttribute("userName"))!=null&&(session.getAttribute("passWord")!=null))
    {
%>
<body>
<div id="container">
    <div id="headerwrapper">
		<img src="images/slideshow/work.jpg" name="slide" width="1050" height="200" />
		<script>
			slideit();
		</script>
		<div id="headercontent">
			<a href="index.html"><img src="images/macpl_logo.png"></a>
			<h1 id="ti">PARAMOUNT MICRONIX & ALLOY CASTING</h1>
		</div>
        <div id="tagline">
        	<h4><em>When you consider Quality First...</em></h4>
        
		</div>
	</div>
    
    <div id="main">
        <div id="maincontent">
        	<div id="scrol">
        		<div id="scrollContainer">
		
					<div class="panel" id="contactus">
                    	<h2>Reply Form</h2>
                    	<div class="cleaner_h10">
						</div>
                        <div id="col1">
                            <div id="contactform">
                                <form name="replyform" action="DeleteEnquiry.jsp" method="post" onSubmit="return validateReply();">
									<label for="email">E-mail:</label> <input type="text" name="Email" size="15" class="input_field" placeholder="Email@Url.com" pattern="[^@]+@[^@]+\.[a-zA-Z]{2,6}" /></br></br>
                                    <div class="cleaner_h10">
									</div>
									<label for="date">Date:</label> <input type="text" name="Date" size="15" class="input_field" /></br></br>
									<div class="cleaner_h10">
									</div>
                                    <label for="subject">Subject:</label> <input type="text" name="Subject" size="15" class="input_field" placeholder="Your Subject"/></br></br>
                                    <div class="cleaner_h10">
									</div>
                                    <label for="text">Reply:</label> <textarea name="Textreply" rows="0" cols="0" placeholder="Your Message"></textarea></br></br>
									<p align='left'>* All fields are mandatory</p>
                                    <input type="submit" value="Reply" id="submit" name="submit" class="submit_btn" />
                            	</form>
                            </div><!-- End of contactform -->
                        </div><!-- End of col1 --> 
                    </div> <!-- end of contactus -->
				
            	</div> <!-- End of ScrollContainer -->
			</div> <!-- End of Scroll -->
  
        	<div class="cleaner">
			</div>
        </div> <!-- end of maincontent -->
    
    	<div id="sidebar">
        	<div id='cssmenu'>
				<ul>
					<li><a href='index.html'><span>Home</span></a></li>
					<li class='has-sub'><a href='AboutUsMain.html'><span>About Us</span></a>
						<ul>
							<li><a href='Micronix.html'><span>Paramount Micronix</span></a></li>
							<li class='last'><a href='AlloyCasting.html'><span>Micronix Alloy Casting</span></a></li>
						</ul>
					</li>
					<li><a href='ProductsMain.html'><span>Products</span></a></li>
					<li><a href='Clients.html'><span>Clients</span></a></li>
					<li><a href='ContactUs.html'><span>Contact Us</span></a></li>
					<li><a href='EnquiryForm.html'><span>Enquiry Form</span></a></li>
					<li class='has-sub'><a href='AdminLogin.html'><span>Admin Login</span></a>
						<ul>
							<li><a href='WelcomeAdmin.jsp'><span>Welcome</span></a></li>
							<li><a href='ChangePassword.jsp'><span>Change Password</span></a></li>
							<li class='last'><a href='Logout.jsp'><span>Log Out</span></a></li>
						</ul>
					</li>
				</ul>
			</div> <!-- End of cssmenu -->
            <img src="images/movgear2.gif" height="140" width="150" class="gear">
    	</div> <!-- end of sidebar -->
    </div> <!-- End of main -->
	
    <div id="footerwrapper">
		<div id="footercontent">
			<!-- Copyright &copy; 2013 <a href="index.html">Paramount Micronix Pvt. Ltd.</a> --> | Designed and developed by <a href="https://www.facebook.com/soham.kulkarni.524">Soham Kulkarni</a> , <a href="https://www.facebook.com/runita.mudhale">Runita Mudhale</a> &amp; <a href="https://www.facebook.com/rajkunwar.sawant.9">Rajkunwar Sawant</a> . |    
			<div class="cleaner">
			</div>
		</div> <!-- End of footercontent -->
    </div> <!-- End of footerwrapper -->
</div> <!-- End of Container -->

</body>
<%
    }
    else
    {
		response.sendRedirect("AdminLogin.html");
	}
%>
</html>