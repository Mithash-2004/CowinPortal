<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Co-WIN</title>
<link rel="icon" href="hospital.png" type="image/x-icon">
 <link rel="stylesheet" href="style.css">
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
    <script type="text/javascript" src="https://translate.google.com/translate_a/element.js?cb=googleTranslateElementInit">
    </script>
        <script src="https://ajax.googleapis.com/ajax/libs//jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/forge/0.8.2/forge.all.min.js"></script>
 <style>
        body{
        background-size: 1650px 1000px;
        font-family: Verdana, sans-serif;
        }
        .round{
        width:100px;
        height:100px;
        border-radius:50%;
        display:block;
        margin-left:130px;
        margin-right:auto;
        }
        .field_set{
        border:3px;
       
  		border-color: white;
  		border-style: solid;
		}
		input[type=number]::-webkit-inner-spin-button, 
input[type=number]::-webkit-outer-spin-button {
  -webkit-appearance: none;
  margin: 0;
}
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
    <div style="background-color:white;">
    <nav class="navbar nabar-expand-lg mt-5 navbar-light">
    
        <a style="font-family: Stencil Std, fantasy;padding-top:15px; font-size: 30px; padding-left: 200px; color: #03256c" class="navbar-brand fs-10 ms-1">Co-WIN</a>
	</nav>
	</div>
        <div class="register">
       
                <fieldset class="field_set shadow"><legend><img class="round" src="heart.png"></legend>
                
                <b style="color:#03256c;font-size:1.5em;">Register or Sign-In</b>
                <label style="font-weight:bold;margin-top:18px;margin-bottom:18px;">Enter you mobile number</label>
                 
                <input type="number" style="border-radius:4px;margin-bottom:-20px" class="enter" name="num" id="num" maxlength="10"  onkeyup="check(); return false;" required><br><span style="color:red;" id="Message"></span>
               
                <br>
                <br>
               <Button type="button" class="btn btn-outline-secondary" style="background-color:#39a6a3;color:white">GET OTP</Button>       
 
                <br>
                <br>
                <br>
                <div class="otp-section">
                <label style="font-weight:bold" id="add">An OTP has been sent to mobile</label>
                <br>
                <br>
                <input style="border-radius:4px;padding-top:-30px;" type="text" class="confirm-otp" name="pnum" id="pnum">
                <br>
                
                <br>
                <input type="submit" class="btn btn-outline-secondary confirm-btn" style="background-color:#39a6a3;color:white;margin-bottom:20px;" name="pbtn" id="pbtn" value="PROCEED">
            </div>
  
            </fieldset>
        </div>   

        <script>
        //Global variable to store transaction ID
            var transID;
            var add=$('#add');
           
            function check()
            {
				
                var mobile = document.getElementById('num');
               
                var message = document.getElementById('Message');
              
                if(mobile.value.length!=10 ){
                	
                		message.innerHTML="Please Enter 10 digit number";
               
                }
                else{
                	message.innerHTML="";
           
                	
        //document is ready for jquery function call
            $(document).ready(function(){
            //onlick function for btn class

            	var phone=$('.enter').val();
                $('.btn').on('click',function(){
               //fetching value from class enter and assigning to variable phone 	
                   
                	$("#Message").hide();
              //print phone on console
                    console.log(phone);
             //assigning/request to requestdata in JSON format
                    var requestdata={'mobile':phone};
         			
             
             //calling ajax for request or send data from sever
             $.ajax({
            url:"https://cdn-api.co-vin.in/api/v2/auth/public/generateOTP", //url to generate otp
            type:'POST',						//request type
            data:JSON.stringify(requestdata),		//request data
            contentType: 'application/json',		//request contentType
            success: function(results)				//success response
            {
            	$("#Message").hide();
            	$(".otp-section").show(); 			//if success show otp section
                var ph=phone%10000;
               	add.append("******"+ph);
                transId=results;					//assigning local to global
                console.log(results); 				//printing on to console
            },
            error:function(){						//error response
                $(".otp-section").show(); 			//if error show otp-section
            }
            });
            });
               

            $('.confirm-btn').on('click',function(){
                var otp=$('.confirm-otp').val();
                console.log(otp);
                var md = forge.md.sha256.create();  
                md.start();  
                md.update(otp, "utf8");  
                var hashText = md.digest().toHex();

                $.ajax({
                    url:"https://cdn-api.co-vin.in/api/v2/auth/public/confirmOTP",
                    type:'POST',
                    data:JSON.stringify({'otp':hashText,'txnId':transId.txnId}),
                    contentType: 'application/json',
                    success: function(results)
                    {
                        window.location.href="phone.jsp?mobile="+phone
                    	
                    },
                    error:function(){
                	 $('.otp-section').show();
                    alert("Entered OTP is invalid");

            }
        	   
           });
            });
        });
 			}
               
                
            }
           
           
            </script>
           <div style="background:#39a6a3;margin-top:100px;padding:5px;">
           <p style="text-align:center;color:white">Privacy Policy | Terms of Service Copyright &#169 2021 COWIN. All Rights Reserved</p>
           </div>
    </body>
</html>