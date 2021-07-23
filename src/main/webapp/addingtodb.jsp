<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Adding member details to db</title>
</head>
<body>

<%
String id_proof=request.getParameter("Select");
String id_number=request.getParameter("pid");
String Name=request.getParameter("uname");
String gender=request.getParameter("gender");
String year=request.getParameter("dob");

session.setAttribute("name",Name); 
session.setAttribute("proof",id_proof);
session.setAttribute("number",id_number);
session.setAttribute("year",year);


Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/db3","root","root");
Statement st=conn.createStatement();
int j = st.executeUpdate("INSERT INTO db3.addMembers(id_proof,id_number,name,gender,year) VALUES('"+id_proof+"','"+id_number+"','"+Name+"','"+gender+"','"+year+"')");

response.sendRedirect("displayandschedule.jsp");
%>


</body>
</html>