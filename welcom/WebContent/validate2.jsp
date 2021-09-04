<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Co-WIN </title>
    <link rel="icon" href="hospital.png" type="image/x-icon">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
 	<script src="https://ajax.googleapis.com/ajax/libs//jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/forge/0.8.2/forge.all.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
     <script src="last.js"></script>
    <style>
        .btn{
            margin-left: 50%;
            margin-top: 250px;
        }
        body{
        background-size: 1650px 1000px;
        font-family: Verdana, sans-serif;
        }
        .select{
        border:2px solid black;
        border-radius:5px;
        padding:-3px;
        }
    </style>
    

<body background="trust.png" id="body-content" class="container mt-5">
<%

String hidden=request.getParameter("hidden");
String id_number=request.getParameter("name"+hidden);
//String increment=request.getParameter("increment");
String mobile=(String)session.getAttribute("mobile");
session.setAttribute("id_number",id_number);
session.setAttribute("mobile",mobile);
//session.setAttribute("increment",increment);
//response.sendRedirect("Addmember.jsp");
out.println(id_number);
//out.println(increment);
out.println(hidden);
%>

<%if(mobile==null){
	response.sendRedirect("error1.jsp");
}else{
	%>

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
          
    
            <div id="trans">
            
            <div style="padding-top:7px;" id="google_translate" >
            </div>
            </div>
            
        </ul>
    </nav>
    <div style="background-color:white;margin-left:-120px;margin-right:-110px" >
    <nav class="navbar nabar-expand-lg navbar-light" >
        <a style="font-family: Stencil Std, fantasy;padding-top:15px; font-size: 30px; padding-left: 200px; color: #03256c" class="navbar-brand fs-10 ms-1">Co-WIN</a>
	</nav>
	</div>
	
<div style="border:3px solid white;padding-left:150px;margin:20px;padding-bottom:20px;margin-top:70px;">
 <form action="validatestate.jsp"  method="post"  name="scheduleform">
<a href="Addmember.jsp"><i class="fa fa-arrow-left" style="font-size:24px;color:#03256c;float:left;margin-top:5px;margin-left:-60px;"></i></a>
<h3 style="color:#03256c;margin-top:20px;font-weight:bold;">Book Vaccination Appointment</h3>
    <div class="row" style="padding-top:50px;">
    <div class="form-group col-sm-5 ">
        <label class=" fw-bold" for="stateDropdown" style="color:#03256c">Select State</label>
       
        <div class="select">
        <select class="form-select" name="stateform" id="stateDropdown" required>
            <option selected>Select</option>
          </select>
          </div>
           
      </div>
      <div class="form-group col-sm-5 ">
            <label class="fw-bold"  for="districtDropdown" style="color:#03256c">Select District</label>
            <div class="select" >
            <select class="form-select" name="districtform" id="districtDropdown" required>
                <option selected>Select</option>
              </select>
            </div>
            
      </div>
      
    </div>
    <div class="row mt-5">
        <div class="form-group col-sm-3 ">
            <label class=" fw-bold" for="hosDropdown" style="color:#03256c">Select Hospital</label>
            <div class="col-md-8 select">
            <select class="form-select" name="hosform" id="hosDropdown" style="border-radius:4px" required >
                <option selected>Select</option>
              </select>
              </div>
             
          </div>
          <div class="form-group col-sm-3 ">
            <label class=" fw-bold"  for="dateDropdown" style="color:#03256c">Select Date</label>
            <div class="col-md-8">
            <input type="date" name="dateform" id="dateDropdown" style="border-radius:4px;padding:6px;" required>
            </div>
           
          </div>
          <div class="form-group col-sm-3" >
            <label class="fw-bold"  for="timeDropdown" style="color:#03256c">Select Time Slots</label>
            <div class="col-md-6 select">
            <select class="form-select" name="timeform" id="timeDropdown" required>
                <option selected >Select</option>
              </select>
            </div>
            
          </div>
    </div>
     <%
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/db3","root","meghana@123$");
    Statement str=conn.createStatement();
    ResultSet rst;
	String querystatus="select * from schedule where id_number='"+id_number+"'";
	rst=str.executeQuery(querystatus);
	while(rst.next()){
	out.println("<input type=\"hidden\" id=\"phone\" name=\"phone\" value=\""+rst.getString("mobile_number")+"\" readonly/>");
	out.println("<input type=\"hidden\" id=\"date\" name=\"date\" value=\""+rst.getString("date")+"\" readonly/>");
	out.println("<input type=\"hidden\" id=\"hos\" name=\"hos\" value=\""+rst.getString("hospital")+"\" readonly/>");
	out.println("<input type=\"hidden\" id=\"time\" name=\"time\" value=\""+rst.getString("timeslot")+"\" readonly/>");
	}
    %> 
	
    <input class="btn btn-dark " id="submit" style="background-color:#39a6a3;margin-left:400px;margin-top:100px;" type="submit"  value="SCHEDULE" name="schedule" id="btn">
 </form> 
    </div>
    

<div style="background:#39a6a3;margin-top:140px;padding:5px;margin-left:-120px;margin-right:-112px"">
           <p style="text-align:center;color:white">Privacy Policy | Terms of Service Copyright &#169 2021 COWIN. All Rights Reserved</p>
           </div>
          <%} %>
       
        <script>
$('#submit').click(function(){
var mobile=document.getElementById("phone").value;
var date=document.getElementById("date").value;
var d=date.split("-").reverse().join("-");
var time=document.getElementById("time").value;
var hos=document.getElementById("hos").value;
console.log(date);
console.log(mobile);
var settings = {
	    "async": true,
	    "crossDomain": true,
	    "url": "https://www.fast2sms.com/dev/bulkV2?authorization=YEtKj4RNPupsw2eaW6mgSriflc9nXZkVGyJQM7CdxBbIL0AFT8ZpzWIym7ARb3axTog1rG5F2XO64Mic&sender_id=TXTIND&message=Thank You for Scheduling Vaccination is Cowin portal. Vaccination scheduled in "+hos+" on "+d+" at "+time+"&route=v3&numbers="+mobile,
	    "method": "GET"
	  }
	  
	  $.ajax(settings).done(function (response) {
	     console.log(response);
	     
	  });
	document.forms["scheduleform"].submit();
	response.sendRedirect("Addmember.jsp");
});


</script>   
       
</body>
</html>