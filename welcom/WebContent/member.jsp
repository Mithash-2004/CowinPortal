<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Co-WIN</title>
    <link rel="icon" href="hospital.png" type="image/x-icon">
    <link rel="stylesheet" href="styles.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
    <script type="text/javascript" src="https://translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
    <style>
    body{
        background-size: 1650px 1000px;
        font-family: Verdana, sans-serif;
        }
    </style>
</head>
<body background="trust.png">
<nav class="navbar fixed-top navbar-expand-lg navbar-light" style="background-color:#39a6a3;padding-top:10px;">
        <a class="navbar-brand fs-6 ms-1 text-white px-4 fw-bold" href="">
        <span><img style="background-color:#39a6a3;margin-left:100px;" src="emblem2.jpg" width="50px" height="40px"></span>
        <span><a href="https://www.india.gov.in/" title="Ministry of Health and Family Welfare" style="margin-left:0px;color:white;text-decoration:none;">Ministry of Health and Family Welfare</a></span></a>
        <ul class="navbar-nav fw-bold px-5 ms-auto" >
            <li class=" nav-item">
                <a class="nav-link text-white px-4" href="Main.html">Home</a>
            </li>
            <li class="nav-item">
                <a class="nav-link text-white px-4" href="#home">About</a>
            </li class="nav-item">
            <li>
                <a class="nav-link text-white px-4" href="#home">Services</a>
            </li>
            <li>
                <a class="nav-link text-white px-4" href="#home">Contacts</a>
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

    <div class="member">
    <form action="success.jsp" method="post">
    <a href="memberadd.jsp"><i class="fa fa-arrow-left" style="font-size:24px;color:#03256c;"></i></a>
    <label style="padding-left:20px">Member Details</label>
    <hr>
    <br>
    <label><b>Photo ID Proof</b></label>
    <br>
    <select class="select" placeholder="Select" name="Select" id="Select" required>
    	<option >Select </option>
        <option  value="Aadaar Card">Aadaar Card</option>
        <option  value="Pan Card">Pan Card</option>
        <option  value=" Driving License">Driving License</option>
        <option  value="Voter ID">Voter Id Proof</option>
    </select>
    <br>
    <br>
    <label ><b>Photo ID Number</b></label>
    <br>
    <input placeholder="Enter Id number" type="text" name="pid" class="inp" value="pid" id="pid" required>
    <br>
    <br>
    <label><b>Name</b></label>
    <br>
    <input placeholder="Enter Name" type="text" class="inp" name="uname"  id="uname" required>
    <br>
    <br>
    <label><b>Gender</b></label>
    <br>
    <input class="rad" type="radio" name="gender" id="gender" value="male" required>
    <label class="gender">Male</label>
    <input class="rad" type="radio" name="gender" id="gender" value="female" required>
    <label class="gender">Female</label>
    <input class="rad" type="radio" name="gender" id="gender" value="other" required>
    <label class="gender">Others</label>
    
    <br>
    <br>
    <label><b>Year or Birth</b></label>
    <br>
    <input placeholder="Enter year of Birth" required type="text" class="inp" name="dob" id="dob" value="dob">
    <br>
    <br>
    <hr class="htext">
    <br>
    <input type="submit" class="sbtn" name="Add member" value="Add Member">
    </form>
    </div>
    
</body>
</html>