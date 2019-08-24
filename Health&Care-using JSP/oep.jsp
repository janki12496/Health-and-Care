<%-- 
    Document   : oep
    Created on : 12 Apr, 2017, 5:12:44 PM
    Author     : Sachi Patel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>homepage</title>
	<link rel="stylesheet" type="text/css" href="oep.css"/>
    </head>
    <body>
	<div class="navbar">
		<ul >
		<li ><strong><a class="padd" href="#home" style=";letter-spacing:2px "> H&C </a></strong></li>
		<li><a class="active">Home</a></li>
		<!-- <li><a href="#contact">Contact</a></li>-->
		<li style="float:right"><a href="login.jsp">Login</a></li>
		<li style="float:right"><a href="Signup.jsp">SignUp</a></li>
		</ul>
	</div>
		
	<form method="POST" action="search.jsp">


			
		<div class="box">
			<div class="searchbox" align="middle">
			<input class="src" type="text" name="search" style="width:660px;height:60px"	placeholder="Search by doctor's name, speciality , locality...."/>
			<input type="submit" class="srchbtn" value="Search"/> 
			</div>
		</div>
	</div>	
	</form>
		<div class="maindiv">
		<div style="float:left;height:300px; width:900px;">
		<a href="medicine.jsp" style="	text-decoration:none;height:200px;margin-top:20px;width:400px;border:1px solid black;background-color: black;display:block;
    color:white;
    text-align: center; border-radius:10px;
    padding-top:80px; float:left"> Medicine </a><br>
		<a href="lab.jsp" style="	text-decoration:none;height:200px;width:400px;margin-left:10px;margin-top:0px;border:1px solid black;
                   background-color: black;display:block; float:left;color: white;border-radius:10px;text-align: center;padding: 80px;"> Laboratory </a>
		</div>
		<div class="imageslider">
			
			<div class="mySlides fade">
				<img src="pic/Facts.jpg" style="width:100%">
			</div>

			<div class="mySlides fade">
				<img src="pic/teeth.jpg" style="width:100%">
			</div>
			
			<div class="mySlides fade">
				<img src="pic/Facts.jpg" style="width:100%">
			</div>

			<div class="mySlides fade">
				<img src="pic/brain.jpg" style="width:100%;height:250px">
			</div>
			
			<div class="mySlides fade">
				<img src="pic/Facts.jpg" style="width:100%;">
			</div>

			<div class="mySlides fade">
				<img src="pic/heart.png" style="width:100%">
			</div>
			
			<div class="mySlides fade">
				<img src="pic/Facts.jpg" style="width:100%">
			</div>

			<div class="mySlides fade">
				<img src="pic/sleep.jpg" style="width:120%">
			</div>
			
			<div class="mySlides fade">
				<img src="pic/Facts.jpg" style="width:100%">
			</div>
			
			<div class="mySlides fade">
				<img src="pic/lung.jpg" style="width:100%">
			</div>
			
			<div class="mySlides fade">
				<img src="pic/Facts.jpg" style="width:100%">
			</div>
			
			<div class="mySlides fade">
				<img src="pic/lense.jpg" style="width:100%;height:270px">
			</div>
			
			<div class="mySlides fade">
				<img src="pic/Facts.jpg" style="width:100%">
			</div>
			
			<div class="mySlides fade">
				<img src="pic/heat.jpg" style="width:100%">
			</div>
			
			<div class="mySlides fade">
				<img src="pic/Facts.jpg" style="width:100%">
			</div>
			
			<div class="mySlides fade">
				<img src="pic/sneez.jpg" style="width:120%">
			</div>
			
			<div class="mySlides fade">
				<img src="pic/Facts.jpg" style="width:100%">
			</div>
			
			<div class="mySlides fade">
				<img src="pic/skin.jpg" style="width:95%;height:270px;">
			</div>
			
			<div class="mySlides fade">
				<img src="pic/Facts.jpg" style="width:100%">
			</div>
			
			<div class="mySlides fade">
				<img src="pic/eating.jpg" style="width:110%">
			</div>
			
			<div class="mySlides fade">
				<img src="pic/Facts.jpg" style="width:100%">
			</div>
			
			<div class="mySlides fade">
				<img src="pic/eye.jpg" style="width:100%;height:250px">
			</div>
			
			
			<div class="mySlides fade">
				<img src="pic/eyes.jpg" style="width:100%">
			</div>
			</div></div>

		<script>var slideIndex = 0;
					showSlides();

					function showSlides() {
    
					var i;
					var slides = document.getElementsByClassName("mySlides");
					for (i = 0; i < slides.length; i++) {
						slides[i].style.display = "none";  
						}
						slideIndex++;
					if (slideIndex> slides.length) {slideIndex = 1}    
					slides[slideIndex-1].style.display = "block";  
					if(slideIndex%2==0)
					setTimeout(showSlides, 1000);
					else
					setTimeout(showSlides, 1000); 
					}
		</script>
	
</body>
