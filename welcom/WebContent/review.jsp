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
<link rel="stylesheet" href="style.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs//jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/forge/0.8.2/forge.all.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body{
        background-size: 1650px 1000px;
        font-family: Verdana, sans-serif;
        }
.checked {
  color: orange;
}
.review{
border: 2px solid #03256c;
padding-left: 30px;
margin:50px;
background:white;
margin-right:200px;
padding-top:30px;
padding-bottom:30px;
color: #03256c;

}
.image{
float:left;
padding-right:10px;
border-radius:50%;
}

@import url(//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css);

fieldset, label { margin: 0; padding: 0; }
body{ margin: 20px; }
h1 { font-size: 1.5em; margin: 10px; }

/****** Style Star Rating Widget *****/

.rating { 
  border: none;
  float: left;
}

.rating > input { display: none; } 
.rating > label:before { 
  margin: 5px;
  font-size: 1.25em;
  font-family: FontAwesome;
  display: inline-block;
  content: "\f005";
}

.rating > .half:before { 
  content: "\f089";
  position: absolute;
}

.rating > label { 
  color: #ddd; 
 float: right; 
}

/***** CSS Magic to Highlight Stars on Hover *****/

.rating > input:checked ~ label, /* show gold star when clicked */
.rating:not(:checked) > label:hover, /* hover current star */
.rating:not(:checked) > label:hover ~ label { color: #FFD700;  } /* hover previous stars in list */

.rating > input:checked + label:hover, /* hover current star when changing rating */
.rating > input:checked ~ label:hover,
.rating > label:hover ~ input:checked ~ label, /* lighten current selection */
.rating > input:checked ~ label:hover ~ label { color: #FFED85;  } 


</style>
</head>
<body background="trust.png">
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
    
        <a style="font-family: Stencil Std, fantasy;padding-top:15px;padding-right:20px; font-size: 30px;padding-left:20px; padding-left: 200px; color: #03256c" class="navbar-brand fs-10 ms-1">Co-WIN</a>
	</nav>
	</div>
<h1 style="padding-left:20px;color: #03256c">Add your reviews about the website:</h1>
<div style="padding-left:40px;" class="col-sm-4">
<form action="add.jsp" method="post" id="frmaccount">
<div>
<label>Name</label>
<input type="text" class="form-control" id="name" name="name" required>
</div>
<div>
<label>Comment:</label>
<textarea class="form-control" id="comment" name="comment" required></textarea>
</div>
<label>Rating:</label>
<br>
<fieldset class="rating">
    <input type="radio" id="star5" name="rating" value="5" /><label class = "full" for="star5" title="Awesome - 5 stars"></label>
    <input type="radio" id="star4half" name="rating" value="4 and a half" /><label class="half" for="star4half" title="Pretty good - 4.5 stars"></label>
    <input type="radio" id="star4" name="rating" value="4" /><label class = "full" for="star4" title="Pretty good - 4 stars"></label>
    <input type="radio" id="star3half" name="rating" value="3 and a half" /><label class="half" for="star3half" title="Meh - 3.5 stars"></label>
    <input type="radio" id="star3" name="rating" value="3" /><label class = "full" for="star3" title="Meh - 3 stars"></label>
    <input type="radio" id="star2half" name="rating" value="2 and a half" /><label class="half" for="star2half" title="Kinda bad - 2.5 stars"></label>
    <input type="radio" id="star2" name="rating" value="2" /><label class = "full" for="star2" title="Kinda bad - 2 stars"></label>
    <input type="radio" id="star1half" name="rating" value="1 and a half" /><label class="half" for="star1half" title="Meh - 1.5 stars"></label>
    <input type="radio" id="star1" name="rating" value="1" /><label class = "full" for="star1" title="Sucks big time - 1 star"></label>
    <input type="radio" id="starhalf" name="rating" value="half" /><label class="half" for="starhalf" title="Sucks big time - 0.5 stars"></label>
</fieldset>
<br>
<br>
<div>
<input type="submit" value="Submit" style="background-color:#39a6a3" class="btn btn-info" id="save">
</div>
</form>
<div class="panel panel-default">
<div class="panel-body" id="comments">

</div>
</div>
</div>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/db3","root","meghana@123$");
Statement str=conn.createStatement();
ResultSet rst;
String querystatus="select * from review";
rst=str.executeQuery(querystatus);
while(rst.next()){

out.println("<div class=\"review\">");
out.println("<img class=\"image\" src=\"personid.png\" width=\"50\" heigth=\"50\" >");
out.println("<label><b>Name:</b></label>");
out.println(rst.getString("name"));
out.println("<br>");
out.println("<label ><b>Comment:</b></label>");
out.println(rst.getString("comment"));
out.println("<br>");
out.println("<label ><b>Rating:</b></label>");
out.println("<span class=\"fa fa-star checked\"></span>");
out.println("<span class=\"fa fa-star checked\"></span>");
out.println("<span class=\"fa fa-star checked\"></span>");
out.println("<span class=\"fa fa-star checked\"></span>");
out.println("<span class=\"fa fa-star \"></span>");
out.println("<br>");
out.println("</div>");

}
%>

<!-- <script>
//get_all();
/* function addcomment()
{
	if($('#frmaccount').valid())
		{
			var url="add.jsp";
			var data=$("#frmaccount").serialize();
			var method="POST"
			
			$.ajax({
				type:method,
				url:url,
				dataType:"JSON",
				data:data,
				
				success:function(data)
				{
					$("#name").val("");
					$("#comment").val("");
					
					//get_all();
				}
				
			})
		}
} */

</script> -->

<div style="background:#39a6a3;margin-top:100px;padding:20px;margin-bottom:-20px;margin-left:-20px;margin-right:-20px;">
           <p style="text-align:center;color:white">Privacy Policy | Terms of Service Copyright &#169 2021 COWIN. All Rights Reserved</p>
           </div>
</body>
</html>