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
        #pid{
        display:hidden;
        }
    </style>
</head>
<body background="trust.png">
<%String mobile=(String)session.getAttribute("mobile");
session.setAttribute("mobile_num",mobile);

%>
<nav class="navbar fixed-top navbar-expand-lg navbar-light " style="background-color:#39a6a3;padding-top:10px;padding-bottom:-20px;">
        <a class="navbar-brand fs-6 ms-1 text-white px-4 fw-bold" href="">
        <span><img style="border-radius:50%;background-color:#39a6a3;margin-left:100px;" src="emblem2.jpg" width="50px" height="40px"></span>
        <span><a href="https://www.india.gov.in/" title="Ministry of Health and Family Welfare" style="margin-left:0px;color:white;text-decoration:none;">Ministry of Health and Family Welfare</a></span></a>
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
    <div style="background-color:white;margin-left:0px;margin-right:0px;">
    <nav class="navbar nabar-expand-lg mt-5 navbar-light">
    <a style="font-family: Stencil Std, fantasy;padding-top:15px; font-size: 30px; padding-left: 100px; color: #03256c" class="navbar-brand fs-10 ms-1">Co-WIN</a>
	</nav>
	</div>

    <div class="member">
    <form onsubmit="validate();" id="myform" action="success.jsp"  method="post">
    <a href="Addmember.jsp"><i class="fa fa-arrow-left" style="font-size:24px;color:#03256c;"></i></a>
    <label style="padding-left:20px">Member Details</label>
    <hr>
    <br>
    <label><b>ID Proof</b></label>
    <br>
    <select class="select" placeholder="Select" name="Select"  id="Select" required>
    	<option >Select </option>
        <option value="Aadaar_Card">Aadaar Card</option>
        <option  value="Pan_Card">Pan Card</option>
        <option  value="Driving_License">Driving License</option>
        <option  value="Voter_ID">Voter Id Proof</option>
    </select>
    <br>
    <br>
    <label ><b>ID Number</b></label>
    <br>
    <input  type="text" placeholder="Enter ID Number" name="pid"  class="inp"  id="pid"  required>
 
    <!-- <p id="aadar" style="visibility:hidden;color:red" >Enter 12 digit number(Eg:388010812359)</p>
    <p id="pan" style="visibility:hidden;color:red" >Enter the Pan Card number (eg:KAWER4532E)</p> -->
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
    <!-- <input placeholder="Enter year of Birth" required type="text" class="inp" name="dob" id="dob"> -->
    <select required type="text" class="inp" name="dob" id="dob" name="birth-year">
    <option value="2002">2002</option>
    <option value="2001">2001</option>
    <option value="2000">2000</option>
    <option value="1999">1999</option>
    <option value="1998">1998</option>
    <option value="1997">1997</option>
    <option value="1996">1996</option>
    <option value="1995">1995</option>
    <option value="1994">1994</option>
    <option value="1993">1993</option>
    <option value="1992">1992</option>
    <option value="1991">1991</option>
    <option value="1990">1990</option>
    <option value="1989">1989</option>
    <option value="1988">1988</option>
    <option value="1987">1987</option>
    <option value="1986">1986</option>
    <option value="1985">1985</option>
    <option value="1984">1984</option>
    <option value="1983">1983</option>
    <option value="1982">1982</option>
    <option value="1981">1981</option>
    <option value="1980">1980</option>
    <option value="1979">1979</option>
    <option value="1978">1978</option>
    <option value="1977">1977</option>
    <option value="1976">1976</option>
    <option value="1975">1975</option>
    <option value="1974">1974</option>
    <option value="1973">1973</option>
    <option value="1972">1972</option>
    <option value="1971">1971</option>
    <option value="1970">1970</option>
    <option value="1969">1969</option>
    <option value="1968">1968</option>
    <option value="1967">1967</option>
    <option value="1966">1966</option>
    <option value="1965">1965</option>
    <option value="1964">1964</option>
    <option value="1963">1963</option>
    <option value="1962">1962</option>
    <option value="1961">1961</option>
    <option value="1960">1960</option>
    <option value="1959">1959</option>
    <option value="1958">1958</option>
    <option value="1957">1957</option>
    <option value="1956">1956</option>
    <option value="1955">1955</option>
    <option value="1954">1954</option>
    <option value="1953">1953</option>
    <option value="1952">1952</option>
    <option value="1951">1951</option>
    <option value="1950">1950</option>
    <option value="1949">1949</option>
    <option value="1948">1948</option>
    <option value="1947">1947</option>
    <option value="1946">1946</option>
    <option value="1945">1945</option>
    <option value="1944">1944</option>
    <option value="1943">1943</option>
    <option value="1942">1942</option>
    <option value="1941">1941</option>
    <option value="1940">1940</option>
    <option value="1939">1939</option>
    <option value="1938">1938</option>
    <option value="1937">1937</option>
    <option value="1936">1936</option>
    <option value="1935">1935</option>
    <option value="1934">1934</option>
    <option value="1933">1933</option>
    <option value="1932">1932</option>
    <option value="1931">1931</option>
    <option value="1930">1930</option>
    <option value="1929">1929</option>
    <option value="1928">1928</option>
    <option value="1927">1927</option>
    <option value="1926">1926</option>
    <option value="1925">1925</option>
    <option value="1924">1924</option>
    <option value="1923">1923</option>
    <option value="1922">1922</option>
    <option value="1921">1921</option>
    <option value="1920">1920</option>
    <option value="1919">1919</option>
    <option value="1918">1918</option>
    <option value="1917">1917</option>
    <option value="1916">1916</option>
    <option value="1915">1915</option>
    <option value="1914">1914</option>
    <option value="1913">1913</option>
    <option value="1912">1912</option>
    <option value="1911">1911</option>
    <option value="1910">1910</option>
    <option value="1909">1909</option>
    <option value="1908">1908</option>
    <option value="1907">1907</option>
    <option value="1906">1906</option>
    <option value="1905">1905</option>
</select>
    <br>
    <br>
    <hr class="htext">
    <br>
    <input type="submit" class="sbtn" name="Add member" id="go" value="+Add Member">
    </form>
     
   
    </div>
    <p style="text-align:center;color:red;">We have not enhanced the data of ID Number, We will do further</p>
    
    <script>
    var btn=document.getElementById("go");
    var form=document.getElementById("myform");
    btn.addEventListener("click",function(e){
    	e.preventDefault();
    	var res1=validate();
    	if(res1==1)
    		{
    		form.submit();
    		}
    	else{
    		alert("Invalid ID Number");
    	}
    });
    function validate()
    {
    	var res=document.getElementById("Select").value;
    	console.log(res);
    	var num=document.getElementById("pid").value;
    	console.log(num);
    	if(res=="Aadaar_Card")
    		{
    		var reg=/^[2-9]{1}[0-9]{11}$/;
    		var result=reg.test(num)
    		if(!result)
    			{
    			
    			return 0;
    			}
    		else{

    			return 1;
    		}
    		}
    		 
    		/*  else if(!regexp.text(pan))
    			{
    			$("pan").val("");
    			$("pan").parent().append('<span >Invalid pancard</span>');
    			}
    		else{
    			$("pan").parent().find(".error").remove();
    			
    		} */
    	
    	else if(res=="Pan_Card")
    		{
    		var regexp=/^[a-zA-Z]{5}[0-9]{4}[a-zA-Z]{1}$/;
    		var result=regexp.test(num);
    		if(!result)
    			{
    			console.log(result);
    			return 0;
    			}
    		else{
    			
    			return 1;
    		}
    		}
    	else if(res=="Driving_License")
    		{
    		var regexp=/^[a-zA-Z][a-zA-Z]\d{13}$/;
    		var result=regexp.test(num);
    		if(!result)
    			{
    			return 0;
    			}
    		else{
    			return 1;
    		}
    		}
    	else if(res=="Voter_ID")
    		{
    		var regexp=/^[a-zA-Z]{3}[0-9]{7}$/;
    		var result=regexp.test(num);
    		
    		if(!result)
    			{
    			
    			return 0;
    			}
    		else{
    			return 1;
    		}
    		}
    }
    	
    </script>
 
    <div style="background:#39a6a3;margin-top:100px;padding:5px;">
           <p style="text-align:center;color:white">Privacy Policy | Terms of Service Copyright &#169 2021 COWIN. All Rights Reserved</p>
           </div>
</body>
</html>