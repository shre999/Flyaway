<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	try{
	String username = request.getParameter("username");
	String password = request.getParameter("password");
	Class.forName("com.mysql.jdbc.Driver");
	String url = "jdbc:mysql://localhost:3306/flyaway";
	String user = "root";
	String pass = "root";
	Connection con = DriverManager.getConnection(url,user,pass);
	String sql = "select username, password from login where username=? and password=?";
	PreparedStatement pst = con.prepareStatement(sql);
	pst.setString(1, username);
	pst.setString(2, password);
	ResultSet rs = pst.getResultSet();
	rs = pst.executeQuery();
	if(rs.next())
	{
		response.sendRedirect("adminhome.jsp");
	}
	else
	{
		out.println("<h1>Invalid Credentials</h1>");
	}
	}
	catch(Exception e)
	{
		out.println(e);
	}
%>
</body>
</html>