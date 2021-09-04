<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Co-WIN</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="icon" href="hospital.png" type="image/x-icon">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs//jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script type="text/javascript">
        function preventBack() { window.history.forward(); }
        setTimeout("preventBack()", 0);
        window.onunload = function () { null };
    </script>
<style>
	body{
        background-size: 1650px 1200px;
        }
	.btn{
		margin-left: 40%;
		margin-top: 15%;
		margin-bottom: 25%;
		background-color: white;
		color: #03256c;
		padding: 7px;
		font-size: 14px;
		border-color:#03256c;
		border-radius: 6px;
		font-family: Arial, Helvetica, sans-serif;
	}
	
	.addmember{
		border:5px solid white;
		margin: 100px;
	}
	
	.division1{
		font-family: Arial, Helvetica, sans-serif;
		color:#03256c;
		padding-left: 20px;
		font-weight:bold;
		padding-right:10px;
	}
	.division2{
		font-family: Arial, Helvetica, sans-serif;
		color:#03256c;
		padding-left: 335px;
		margin-top: 20px;
		padding-right:10px;
		padding-top: 20px;
		font-weight:bold;
	}
	.division3{
		font-family: Arial, Helvetica, sans-serif;
		color:#03256c;
		padding-left:260px;
		margin-top: 20px;
		padding-right:10px;
		padding-top: 20px;
		font-weight:bold;
	}
	
	.submit{
		margin-left: 220px;
		margin-top: 2%;
		margin-bottom: 2%;
		background-color: white;
		color: #03256c;
		padding: 7px;
		font-size: 14px;
		border-color: #03256c;
		border-radius: 6px;
		font-family: Arial, Helvetica, sans-serif;
	}
	.submitit{
		margin-left: 45%;
		margin-top: 2%;
		margin-bottom: 2%;
		background-color: white;
		color: #03256c;
		padding: 7px;
		font-size: 14px;
		border-color:#03256c ;
		border-radius: 6px;
		font-family: Arial, Helvetica, sans-serif;
	}
	input[type="text"]
	{
    background: transparent;
    border: none;
	}
	hr.new2 {
  border-top: 2px dashed #03256c;
}
	
</style>
</head>
<body  background="trust.png"  >
 <nav class="navbar fixed-top navbar-expand-lg navbar-light" style="background-color:#39a6a3">
        <a class="navbar-brand fs-6 ms-1 text-white px-4 fw-bold" href="">
        <span><img style="border-radius:50%;background-color:#39a6a3;margin-left:100px;" src="emblem2.jpg" width="50px" height="40px"></span>
        <span><a href="https://www.india.gov.in/" title="Ministry of Health and Family Welfare" style="margin-left:-30px;color:white;text-decoration:none;">Ministry of Health and Family Welfare</a></span></a>
        <ul class="navbar-nav fw-bold px-5 ms-auto" >
            <li class=" nav-item">
                <a class="nav-link text-white px-4" href="Main.html">Home</a>
            </li>
            <li class="nav-item">
                <a class="nav-link text-white px-4" href="about.jsp">About</a>
            </li class="nav-item">
            <li>
                <a class="nav-link text-white px-4" target="blank" href="http://127.0.0.1:5000">Query</a>
            </li>
            <li>
                <a class="nav-link text-white px-4" href="review.jsp">Review</a>
            </li>
          	<li>
          		 <a class="nav-link text-white px-4" href="Main.html">Logout</a>
          	</li>
    
            <div id="trans">
            
            <div style="padding-top:7px;" id="google_translate" >
            </div>
            </div>
            
        </ul>
    </nav>
    <div style="background-color:white;">
    <nav class="navbar nabar-expand-lg mt-5 navbar-light">
    	
        <a style="font-family: Stencil Std, fantasy;padding-top:15px; font-size: 30px; padding-left: 200px; color: #03256c" class="navbar-brand fs-10 ms-1">Co-WIN</a>
	</nav>
	</div>

<%

String mobile_num=(String)session.getAttribute("mobile_num");
session.setAttribute("mobile",mobile_num);
%>

<div class="addmember shadow" >
<a href="member2.jsp" style="float:left;padding-top:30px;padding-left:30px;">
<i  style="font-size:24px;color:#03256c;"></i></a>
<p style="padding-left:500px;font-weight:bold;font-size:2em;color:#03256c;padding-top:20px;">Account Details</p>
<div class="tab-content" id="myTabContent">
  <label style="font-weight:bold;padding-left:55px;color:#03256c;font-size:1.3em;" id="add">Registered Mobile Number:</label>
  <br>
  <p style="font-size:1.2em;color:red;text-align:center">Re-Schedule can be done twice</p>
  <%
if(mobile_num==null)
{
	response.sendRedirect("error1.jsp");
}
else{
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/db3","root","meghana@123$");
Statement st=conn.createStatement();
ResultSet rs;
String query="select count(mobile_number) from idproof where mobile_number='"+mobile_num+"'";
rs=st.executeQuery(query);
String stQuery="";
while(rs.next()){
	stQuery=rs.getString(1);
}
int var=Integer.parseInt(stQuery);

if(var<5)
{	
	Statement stmt=conn.createStatement();
	ResultSet result;
	String querymob="select * from idproof where mobile_number='"+mobile_num+"'";
	result=stmt.executeQuery(querymob);
	int i=1;
	int k=0;
while(result.next()){%>
	
	<% 
	out.println("<input type=\"hidden\" id=\"mobile\" name=\"mobile\" value=\"" +result.getString("mobile_number") + "\" />");
	
	out.println("<div class=\"tab-pane fade show active\" style=\"border:5px solid #03256c;padding-left:50px;border-radius:5px;margin:50px;background-color:white\" id=\"home\" role=\"tabpanel\" aria-labelledby=\"home-tab\">");
	out.println("<form action=\"validate2.jsp\" method=\"post\">");
	out.println("<label style=\"font-size:1.5em;padding-top:30px;\" class=\"division1\">"+result.getString("name")+"</label>");
	out.println("<br>");
	out.println("<label style=\"float:left;padding-top:20px;\" name=\"id_number\"   class=\"division1\">Photo ID:</label>");
	out.println("<label style=\"float:left;padding-right:50px;padding-top:20px;\">"+result.getString("id_proof")+"</label>");
	out.println("<label style=\"padding-top:20px;\" class=\"division1\">Year of Birth:</label>");
	out.println("<label style=\"padding-right:50px;padding-top:20px;\">"+result.getString("year")+"</label>");
	out.println("<label style=\"padding-top:20px;\" class=\"division1\">ID Number:</label>");
	out.println("<input style=\"padding-right:250px;padding-top:20px;\" type=\"text\" id=\"name"+ i +"\" name=\"name"+ i +"\" value=\"" +result.getString("id_number") + "\" readonly />");
	out.println("<input type=\"hidden\"  id=\"hidden\" name=\"hidden\" value=\""+ i +"\"  />");
	
	out.println("<Button id=\"btn\"><img src=\"dustbin.png\" width=25px height=25px ></Button>");
	
	out.println("<hr class=\"new2\">");
	String id=result.getString("id_number");
	Statement str=conn.createStatement();
	ResultSet rs1;
	String status="select * from db3.schedule where id_number='"+id+"'";
	rs1=str.executeQuery(status);
	if(rs1.next())
	{
		
		out.println("<label class=\"division1\">Date of Schedule:</label>");
		 
		out.println("<input type=\"text\" id=\"status"+ i +"\" name=\"status"+ i +"\" value=\"" + rs1.getString("date") + "\" readonly />");
		out.println("<label  style=\"padding-left:150px;\"class=\"division2\">Time of Schedule:</label>");
		out.println("<input type=\"text\" id=\"statustime"+ i +"\" name=\"statustime"+ i +"\" value=\"" +rs1.getString("timeslot") + "\" readonly />");
		String count=rs1.getString("count");
		int num=Integer.parseInt(count);
		if(num>=2){
		
		out.println("<Button style=\"margin-left:100px;background-color:#39a6a3\" onclick=\"myFunction()\" class=\"submit\" name=\"submit\" id=\"submit\" disabled=\"disabled\"><img src=\"calendar.png\" width=20px; height=20px; >Re-Schedule</Button>");
		}
		else{
			out.println("<Button style=\"margin-left:100px;background-color:#39a6a3\" onclick=\"myFunction()\" class=\"submit\" name=\"submit\" id=\"submit\"><img src=\"calendar.png\" width=20px; height=20px;>Re-Schedule</Button>");
		}
		}
	else{
		out.println("<label style=\"color:red;\" class=\"division2\">Dose 1</label>");
		out.println("<input style=\"color:red;padding-right:150px;\" type=\"text\"  id=\"nodata"+ i +"\" name=\"nodata"+ i +"\" value=\"Not Scheduled\" readonly />");
		out.println("<Button style=\"background-color:#39a6a3\"  class=\"submit\" name=\"submit\" id=\"submit\"><img src=\"calendar.png\" width=20px; height=20px;> Schedule</Button>");
	}
	
	out.println("</form>");
	out.println("<br>");
	out.println("</div>");
	i++;
	}

}

if(var!=4){
out.println("<form action=\"member2.jsp\">");
out.println("<input type=\"submit\" value=\"+Add Member\" class=\"submitit\" id=\"submitit\" name=\"submitit\">");
out.println("</form>");
}
else{
	out.println("<p style=\"color:red;text-align:center;font-size:1.5em\">Can't Add more than 4 data</p>");
}
  
%>

  

</div>
</div>


<div style="background:#39a6a3;margin-top:320px;padding:5px;">
<p style="text-align:center;color:white">Privacy Policy | Terms of Service Copyright &#169 2021 COWIN. All Rights Reserved</p>
</div>
<%} %>
<script>
<%-- function deleted()
{
	console.log("helelo");
<%
out.println("<h1>"+mobile_num+"</h1>");
String hidden=request.getParameter("hidden");
String id_number=request.getParameter("name"+hidden);
 Class.forName("com.mysql.jdbc.Driver"); 
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/db3","root","meghana@123$");
Statement st=conn.createStatement();
ResultSet rs;
/* String query="select id_number from mobile_number='"+mobile_num+"'";
rs=st.executeQuery(query);
rs.next();
out.println(rs.getString("id_number")); */
rs=st.executeQuery("delete from idproof where id_number='"+id_number+"'");
out.println(rs.next());

%>	
/* window.location.reload(); */
}

var btn=document.getElementById("btn");
btn.addEventListener("click",function(e){
	e.preventDefault();
	deleted();
}); --%>

var add=$('#add');
$(document).ready(function(){
	var mobile=$('#mobile').val();
	console.log(mobile);
	var num=mobile%10000;
	add.append("XXX-XXX-"+num);
});
</script>
</body>
</html>