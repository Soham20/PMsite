<%@ page language="java" contentType="text/html; charset=ISO-8859-1" %>
<%@ page import="java.sql.*" %>
<html>
<head>
	<title>Paramount Micronix & Micronix Alloy Casting</title>
</head>
<body>
<%
    String nm = request.getParameter("Person");
	String d= request.getParameter("Date");
	String em = request.getParameter("Email");
	String no= request.getParameter("Mobno");
    String msg = request.getParameter("Textmsg");
    try
    {
            Class.forName("com.mysql.jdbc.Driver");
            Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/micronixdb","root","soham");
            String s = "INSERT INTO enquirytab (Name,Date,Email,MobileNo,Message) VALUES (?,?,?,?,?)";
            PreparedStatement ps = c.prepareStatement(s);
            ps.setString(1, nm);
			ps.setString(2, d);
            ps.setString(3, em);
			ps.setString(4, no);
            ps.setString(5, msg);
            ps.execute();
			String s1 = "INSERT INTO recordtab (Name,Date,Email,MobileNo,Message) VALUES (?,?,?,?,?)";
			PreparedStatement ps1 = c.prepareStatement(s1);
            ps1.setString(1, nm);
			ps1.setString(2, d);
            ps1.setString(3, em);
			ps1.setString(4, no);
            ps1.setString(5, msg);
            ps1.execute();
			c.close();
			response.sendRedirect("ThankYou.html");
    }
    catch(Exception e)
    {
            out.write("Exception : " +e);
             
    }  
%>
</body>
</html>