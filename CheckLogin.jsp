<% 
    response.setHeader("Cache-Control","no-store"); 
    response.setHeader("Pragma","no-cache"); 
    response.setDateHeader ("Expires", 0);
%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"%>
<%@ page import="java.sql.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Paramount Micronix & Micronix Alloy Casting</title>
</head>
<body>
<%! String userdbName;
String userdbPsw;
%>
<%
Connection con= null;
PreparedStatement ps = null;
ResultSet rs = null;

String sql = "SELECT * FROM logintab WHERE Username=? and Password=?";
try
{
	session.setAttribute("userName",null);
    session.setAttribute("passWord",null);
	String name = request.getParameter("userName");
	String password = request.getParameter("passWord");
	Class.forName("com.mysql.jdbc.Driver");
	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/micronixdb","root","soham");
	ps = con.prepareStatement(sql);
	ps.setString(1, name);
	ps.setString(2, password);
	rs = ps.executeQuery();
	if(rs.next())
	{			
		userdbName = rs.getString("Username");
		userdbPsw = rs.getString("Password");
		if(name.equals(userdbName) && password.equals(userdbPsw))
		{
			session.setAttribute("userName",name);
			session.setAttribute("passWord",password);
			response.sendRedirect("WelcomeAdmin.jsp");			
		}						   
	}
	else
	{
		response.sendRedirect("InvalidLoginMsg.html");
	}
	rs.close();
	ps.close();		
	con.close();
}
catch(SQLException e)
{
	out.println(e);
}
%>
</body>
</html>