<% 
    response.setHeader("Cache-Control","no-store");
    response.setHeader("Pragma","no-cache"); 
    response.setDateHeader ("Expires", 0);
%>
<!doctype html>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
<html>
<head>
	<title>Paramount Micronix & Micronix Alloy Casting</title>
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
       	  <h4 id="ti"><em>When you consider Quality First...</em></h4>
		</div>
	</div>
    
	<div id="main">	
        <div id="maincontent">
			<div id="scrol">
        		<div id="scrollContainer">
				
					<div class="panel" id="home">
						<h2>Welcome Admin, Records Display</h2>
						<!-- Data from the table 'recordtab' of database 'micronixdb' -->
						<%
							try 
							{
								/* Create string of connection url within specified format with machine name, port number and database name. 
								Here machine name id localhost and database name is micronixdb. */
								String connectionURL = "jdbc:mysql://localhost:3306/micronixdb";
								// declare a connection by using Connection interface
								Connection connection = null;
								/* declare object of Statement interface that is used for executing sql statements. */
								Statement statement = null;
								// declare a resultset that uses as a table for output data from tha table.
								ResultSet rs = null;
								// Load JBBC driver "com.mysql.jdbc.Driver"
								Class.forName("com.mysql.jdbc.Driver").newInstance();
								/* Create a connection by using getConnection() method that takes parameters of string type connection url, user name and password to connect to database.*/
								connection = DriverManager.getConnection(connectionURL, "root", "soham");
								/* createStatement() is used for create statement object that is used for sending sql statements to the specified database. */
								statement = connection.createStatement();
								// sql query to retrieve values from the secified table.
								String QueryString = "SELECT * FROM recordtab";
								rs = statement.executeQuery(QueryString);
						%>
						<table width="850" cellpadding="7" border="1" style="background-color: #000;">
						<th>ID</th>
						<th>NAME</th>
						<th>DATE</th>
						<th>E-MAIL</th>
						<th>MOBILE NO</th>
						<th>MESSAGE</th>
						<%
								while (rs.next()) 
								{
						%>
									<tr>
										<td><%=rs.getInt(1)%></td>
										<td><%=rs.getString(2)%></td>
										<td><%=rs.getString(3)%></td>
										<td><%=rs.getString(4)%></td>
										<td><%=rs.getString(5)%></td>
										<td><%=rs.getString(6)%></td>
									</tr>
						<% 
								}
						%>
						<%
								rs.close();
								statement.close();
								connection.close();
							} 
							catch (Exception ex) 
							{
								out.println("Unable to connect to database.");
							}
						%>
						<!-- For button -->
						</table>
						<table>
							<tr>
								<td>
									<form action="WelcomeAdmin.jsp" method="post" >
										<input type="submit" value="Back" id="submit" name="submit" class="submit_btn"/>
										<!-- <button type="submit"><-- back</button> -->
									</form>
								</td>
							</tr>
						</table>
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
					<li class='has-sub'><a><span>Admin Login</span></a>
						<ul>
							<li><a href='WelcomeAdmin.jsp'><span>Welcome</span></a></li>
							<li><a href='ChangePassword.jsp'><span>Change Password</span></a></li>
							<li class='last'><a href='Logout.jsp'><span>Log Out</span></a></li>
						</ul>
					</li>
				<!-- <li><a href='#'><span>Admin Login</span></a></li> -->
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
<%
    }
    else
    {
		response.sendRedirect("AdminLogin.html");
	}
%>
</html>