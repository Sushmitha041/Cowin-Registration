<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Members Details</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs//jquery/3.5.1/jquery.min.js"></script>

<style>

	.container-fluid{
	padding: 0 5%;
	}

	.card{
	margin : 3% 3%;
	}
	div{
		margin-top: 20px;
		padding-bottom:-70px;	
		}
	#submit{
		margin-left: 45%;
		margin-top: 2%;
		margin-bottom: 2%;
		background-color: white;
		color: black;
		padding: 7px;
		font-size: 14px;
		border-color: black;
		border-radius: 6px;
		font-family: Arial, Helvetica, sans-serif;
	}
	
	.btn
	{
		margin-left: 45%;
		margin-bottom: 2%;
		background-color: white;
		color: black;
		padding: 7px;
		font-size: 14px;
		font-family: Arial, Helvetica, sans-serif;
		margin-top:7%;
	}
</style>
</head>
<body>
<nav class="navbar fixed-top navbar-light bg-light">
    <span class="navbar-brand mb-0 h1">CoWIN Registration</span>

<ul class="nav nav-tabs" id="myTab" role="tablist">
  <li class="nav-item " role="presentation">
    <button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#home" type="button" role="tab" aria-controls="home" aria-selected="true">Schedule Vaccination</button>
  </li>
  <li class="nav-item " role="presentation">
    <button class="nav-link" id="question-tab" data-bs-toggle="tab" data-bs-target="#question" type="button" role="tab" aria-controls="profile"><a href="http://127.0.0.1:5000/chat" target="_blank">ChatHere</a></button>
  </li>
  <li class="nav-item " role="presentation">
    <a href="contact.html"><button class="nav-link"  aria-selected="false">About Us</button></a>
  </li>
</ul>
</nav>
<div class="container-fluid">
  <div class="tab-pane fade show active btn" id="home" role="tabpanel" aria-labelledby="home-tab">
  <form action="addmember.html" method="post">
		<input type="submit" value="+Add Member" class="btn btn-dark" name="btn" id="btn">
	</form>
  </div>
  
<%
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/db3","root","root");
Statement st=conn.createStatement();
String query = "select * from addMembers";
ResultSet rs= st.executeQuery(query);
out.println("<div class=\"row\">");
while(rs.next()){
	out.println("<div class=\"col-lg-4 col-md-6 col-sm-12\">");
	out.println("<div class=\"card\" id=\"myTabContent\">");
	out.println("<form action=\"distandstates.html \">");
	out.println("<h5 class=\"card-header\"> Member "+rs.getRow()+"</h5>");
	out.println("<div class=\"card-body\">");
	out.println();
	out.println("<i class=\"fas fa-person\"></i>"+"<h5 class=\"card-title\">"+ rs.getString("name")+"</h5>");
	out.println("<p class=\" card-text\"> ID Proof: "+ rs.getString("id_proof")+"<br>ID Number: "+rs.getString("id_number")+"<br>YOB: "+rs.getString("year")+"</p>");
	out.println("<input  type=\"submit\" value=\"Schedule\" class=\"btn btn-primary\" name=\"submit\">");
	out.println("</form>");
	out.println("<br>");
	out.println("</div>");
	out.println("</div>");
	out.println("</div>");
}
out.println("</div>");
%>

</div>
<script>
function change();
{
	document.getElementbyId(".submit").value="Re-Schedule";
	}
    $(document).ready(function(){
    $("#btn").on('click', function(){
   		window.href.location="displayandschedule.jsp";
    	$(".contentTab").show();
    	$(".contentTab").append( );
    	
    
    });
    $("input").click(function() {
        $(".submit").prop("value", "Re-Schedule");
    });
    $("#submit").on('click', function(){
    	window.href.location="distandstates.html";
    });
    });
    </script>


</body>
</html>