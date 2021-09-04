<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Co-WIN</title>
<link rel="icon" href="hospital.png" type="image/x-icon">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs//jquery/3.5.1/jquery.min.js"></script>
<style>
.submitit{
		margin-left: 200px;
		margin-top: 20px;
		margin-bottom: 2%;
		background-color: white;
		color: black;
		padding: 7px;
		font-size: 14px;
		border-color: black;
		border-radius: 6px;
		font-family: Arial, Helvetica, sans-serif;
	}
	.roundimg{
        width:100px;
        height:100px;
        border-radius:50%;
        display:block;
        margin-left:130px;
        margin-right:auto;
        }
	body{
        background-size: 1650px 1000px;
        font-family: Verdana, sans-serif;
        }
	
</style>
</head>
<body background="trust.png">
<%
String mobile=(String)session.getAttribute("mobile_num");
session.setAttribute("mobile_num",mobile);
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/db3","root","meghana@123$");
Statement st=conn.createStatement();
int j=st.executeUpdate("INSERT INTO mobile(phone_number) VALUES('"+mobile+"')");
//response.sendRedirect("Addmember.jsp?mobile_num="+mobile);
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
                <a class="nav-link text-white px-4" href="#home">Query</a>
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
    <div style="background-color:white;">
    <nav class="navbar nabar-expand-lg mt-5 navbar-light">
    	
        <a style="font-family: Stencil Std, fantasy;padding-top:15px; font-size: 30px; padding-left: 200px; color: #03256c" class="navbar-brand fs-10 ms-1">Co-WIN</a>
	</nav>
	</div>
	<div class="shadow" style="border:3px solid white;margin-left:500px;margin-right:500px;margin-top:50px;padding-top:50px;padding-bottom:100px;">
 <a href="Register.jsp"><i class="fa fa-arrow-left" style="font-size:24px;color:#03256c;padding-left:50px;float:left;padding-top:10px;"></i></a>
 <img src="heart.png" class="roundimg" style="margin-left:200px;margin-bottom:30px;">
<form action="member2.jsp">
<p style="padding-left:100px;font-size:2em;font-weight:bold">Register as New User</p>
<input type="submit" value="+Add Member" class="submitit" id="submitit" name="submitit">
</form>
</div>

 
 <div style="background:#39a6a3;margin-top:100px;padding:5px;">
           <p style="text-align:center;color:white">Privacy Policy | Terms of Service Copyright &#169 2021 COWIN. All Rights Reserved</p>
           </div>
</body>
</html>