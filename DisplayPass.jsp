<!DOCTYPE html>
<%@ page import="java.sql.*" %>    
<html>
<head>
	<title>Paramount Micronix & Micronix Alloy Casting</title>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta http-equiv="Content-Type" content="text/html" charset="utf-8" />
	<meta name="keywords" content="Jigs, Fixtures, Special purpose machines, CNC, VMC, HMC, SPM, Paramount, Micronix, Wirecut, Heller" />
	<meta name="description" content="Website of Paramount Micronix Pvt. Ltd." />
	<link rel='shortcut icon' href='images/macpl_logo.png' />
<!-- Design Links -->
	<link href="css/style.css" rel="stylesheet" type="text/css" charset="utf-8"/>
	<link href="css/slider.css" rel="stylesheet" type="text/css" charset="utf-8" />
    <script src="js/slideshow.js" type="text/javascript"></script>
<!-- Navigation bar Links -->
	<link rel='stylesheet' type='text/css' href='css/menu_styles.css' />
	<script src="js/jquery-1.10.2.min.js" type="text/javascript"></script>
	<script type='text/javascript' src='js/menu_jquery.js'></script>
</head>
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
       	  <h4 id="ti"><em>When you consider Quality First...</em></h4>
		</div>
	</div>
    
	<div id="main">	
        <div id="maincontent">
			<div id="scrol">
        		<div id="scrollContainer">
				
					<div class="panel" id="home">
						<h2>Password</h2>
							<%! String userdbName;
								String userdbPsw;
								String userdbemail;
							%>
							<%
								Connection con= null;
								PreparedStatement ps = null;
								ResultSet rs = null;

								String sql = "SELECT * FROM logintab where Username=? and Email=?";

								String name = request.getParameter("username");
								String mail = request.getParameter("email");

								try
								{
									Class.forName("com.mysql.jdbc.Driver");
									con = DriverManager.getConnection("jdbc:mysql://localhost:3306/micronixdb","root","soham");
									ps = con.prepareStatement(sql);
									ps.setString(1, name);
									ps.setString(2, mail);
									rs = ps.executeQuery();
									if(rs.next())
									{			
										userdbName = rs.getString("Username");
										userdbPsw = rs.getString("Password");
										userdbemail = rs.getString("Email");
										if(name.equals(userdbName) && mail.equals(userdbemail))
										{
							%>
												<p>Your Username &amp; Password for Admin Login are as follows,</p>
												<h3>Username : </h3><p><%=userdbName%></p>
												<h3>Password : </h3><p><%=userdbPsw%></p>
							<%			
										}						   
									}
									else
											response.sendRedirect("InvalidEmailMsg.html");
									rs.close();
									ps.close();		
									con.close();
								}
								catch(SQLException e)
								{
									out.println(e);
								}
							%>
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
					<li class='has-sub'><a href='#'><span>About Us</span></a>
						<ul>
							<li><a href='Micronix.html'><span>Paramount Micronix</span></a></li>
							<li class='last'><a href='AlloyCasting.html'><span>Micronix Alloy Casting</span></a></li>
						</ul>
					</li>
					<li><a href='ProductsMain.html'><span>Products</span></a></li>
					<li><a href='Clients.html'><span>Clients</span></a></li>
					<li><a href='ContactUs.html'><span>Contact Us</span></a></li>
					<li><a href='EnquiryForm.html'><span>Enquiry Form</span></a></li>
					<li class='active'><a href='AdminLogin.html'><span>Admin Login</span></a></li>
				</ul>
			</div> <!-- End of cssmenu-->
            <img src="images/movgear2.gif" height="140" width="150" class="gear">
    	</div> <!-- end of sidebar -->
    </div> <!-- End of main -->
    <div id="footerwrapper">
		<div id="footercontent">
			<!-- Copyright &copy; 2013 <a href="index.html">Paramount Micronix Pvt. Ltd.</a> --> | Designed and developed by <a href="https://www.facebook.com/soham.kulkarni.524">Soham Kulkarni</a> , <a href="https://www.facebook.com/runita.mudhale">Runita Mudhale</a> &amp; <a href="https://www.facebook.com/rajkunwar.sawant.9">Rajkunwar Sawant</a> . |    
			<div class="cleaner">
			</div>
		</div>
	</div>
</div><!-- End of Continer -->
</body>
</html>