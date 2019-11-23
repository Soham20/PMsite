<% 
    response.setHeader("Cache-Control","no-store");
    response.setHeader("Pragma","no-cache"); 
    response.setDateHeader ("Expires", 0);
%>
<!doctype html>
<head>
	<title>Paramount Micronix & Micronix Alloy Casting</title>
	<meta http-equiv="Content-Type" content="text/html" charset="utf-8" />
	<meta name="keywords" content="Jigs, Fixtures, Special purpose machines, CNC, VMC, HMC, SPM, Paramount, Micronix, Wirecut, Heller" />
	<meta name="description" content="Website of Paramount Micronix Pvt. Ltd." />
<!-- Design and validation Links -->
	<link href="css/style.css" rel="stylesheet" type="text/css" charset="utf-8"/>
	<link href="css/slider.css" rel="stylesheet" type="text/css" charset="utf-8" />
	<script src="js/validations.js" type="text/javascript"></script>
	<script src="js/slideshow.js" type="text/javascript"></script>
<!-- Navigation bar Links -->
	<link rel='stylesheet' type='text/css' href='css/menu_styles.css' />
	<script src="js/jquery-1.10.2.min.js" type="text/javascript"></script>
	<script type='text/javascript' src='js/menu_jquery.js'></script>
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
				
					<div class="panel" id="home">
                        <h2>Change Password</h2>   
                        <div id="cntr">
                            <img src="images/factory/macpl_company.jpg" alt="Image 01" width="340" height="170" class="imagewrapper" />
							<div id="loginform">
								<form name="changeform" method="post" action="UpdatePassword.jsp" onSubmit="return validateChange();">
								</br>
									<label for="password">Old Password: </label><input type="password" name="oldPassword" size="15" class="input_field" placeholder="Old Password"/></br></br>
									<div class="cleaner_h10">
									</div>
									<label for="password">New Password: </label><input type="password" name="newPassword" size="15" class="input_field" placeholder="New Password: Minimum 6 characters"/></br></br> <!-- maxlength="10" will limit user till 10 char-->
									<div class="cleaner_h10">
									</div>
									<label for="password">ConfirmPassword: </label><input type="password" name="conPassword" size="15" class="input_field" placeholder="Confirm Password"/></br></br>
									<div class="cleaner_h10">
									</div>
									<input type="submit" value="Change Password" id="submit" name="submit" class="submit_btn"/>
								</form>
							</div><!-- end of loginform -->
                        </div> <!-- end of cntr-->
					</div> <!-- end of home -->

            	</div> <!-- End of ScrollContainer -->
			</div> <!-- End of Scrol -->
        
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
			<!-- Copyright &copy; 2013 <a href="index.html">Paramount Micronix Pvt. Ltd.</a> --> --> | Designed and developed by <a href="https://www.facebook.com/soham.kulkarni.524">Soham Kulkarni</a> , <a href="https://www.facebook.com/runita.mudhale">Runita Mudhale</a> &amp; <a href="https://www.facebook.com/rajkunwar.sawant.9">Rajkunwar Sawant</a> . |   
			<div class="cleaner">
			</div>
		</div>
	</div>
</div> <!-- End of Continer -->
<%
    }
    else
    {
		response.sendRedirect("AdminLogin.html");
	}
%>
</body>
</html>