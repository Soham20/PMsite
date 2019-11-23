<%@ page language="java" contentType="text/html; charset=ISO-8859-1" %>
<%@ page import="java.sql.*;" %>
<!DOCTYPE html>
<html>
<head>
	<title>Paramount Micronix & Micronix Alloy Casting</title>
	<link rel='shortcut icon' href='images/macpl_logo.png' />
</head>
<body>
<%! String userid;%>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/micronixdb";%>
<%!String user = "root";%>
<%!String psw = "soham";%>
<%
String em = request.getParameter("Email");
String d = request.getParameter("Date");
String subj = request.getParameter("Subject");
String rplmsg = request.getParameter("Textreply");
	Connection con = null;
	PreparedStatement ps = null;
	PreparedStatement ps1 = null;
	/*int eID = Integer.parseInt(id);*/
	try
	{
		Class.forName(driverName);
		con = DriverManager.getConnection(url,user,psw);
		String sql = "DELETE FROM enquirytab WHERE Email='"+em+"'";
		ps = con.prepareStatement(sql);
		ps.executeUpdate(); 
		String s = "INSERT INTO replytab (Email,Date,Subject,ReplyMessage) VALUES (?,?,?,?)";
		ps1 = con.prepareStatement(s);
		ps1.setString(1, em);
		ps1.setString(2, d);
		ps1.setString(3, subj);
		ps1.setString(4, rplmsg);
		ps1.execute();
		ps.close();		
		con.close();
		response.sendRedirect("DisplayEnquiry.jsp");
	}
	catch(SQLException e)
	{
		out.write("Exception : " +e);
	}
%>
</body>
</html>