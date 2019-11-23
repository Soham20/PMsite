<% 
response.setHeader("Cache-Control","no-store"); 
response.setHeader("Pragma","no-cache"); 
response.setDateHeader ("Expires", 0);  
%>
<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
	<title>Paramount Micronix & Micronix Alloy Casting</title>
</head>
<body>
<%
session.removeAttribute("userName");
session.removeAttribute("passWord");
session.invalidate();
response.sendRedirect("LoggoutMsg.html");
%>
</body>
</html>