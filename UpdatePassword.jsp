<% 
    response.setHeader("Cache-Control","no-store"); 
    response.setHeader("Pragma","no-cache"); 
    response.setDateHeader ("Expires", 0);
%>
<html>
<head>
	<title>Paramount Micronix & Micronix Alloy Casting</title>
</head>
<%
    if((session.getAttribute("userName"))!=null&&(session.getAttribute("passWord")!=null))
    {
%>
<body>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%
String currentPassword=request.getParameter("oldPassword");
String Newpass=request.getParameter("newPassword");
String conpass=request.getParameter("conPassword");
String connectionURL = "jdbc:mysql://localhost:3306/micronixdb";
Connection con=null;
String pass="";
int id=0;
try
{
	Class.forName("com.mysql.jdbc.Driver");
	con = DriverManager.getConnection(connectionURL, "root", "soham");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("SELECT * FROM logintab WHERE Password='"+currentPassword+"'");
	if(rs.next())
	{
		id=rs.getInt(1);
		pass=rs.getString(3);
	}
	if(pass.equals(currentPassword))
	{
		Statement st1=con.createStatement();
		int i=st1.executeUpdate("UPDATE logintab SET Password='"+Newpass+"' WHERE Id='"+id+"'");
		/*out.println("\nPassword changed successfully");*/
		st1.close();
		con.close();
		response.sendRedirect("PassChangeSuccess.html");
	}
	else
	{
		response.sendRedirect("InvalidCurrentPass.html");
	}
}
catch(Exception e)
{
	out.println(e);
}
%>
</body>
<%
    }
    else
    {
		response.sendRedirect("AdminLogin.html");
	}
%>
</html>