<%-- 
    Document   : login
    Created on : 12 Apr, 2017, 2:01:38 PM
    Author     : Sachi Patel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta charset="utf-8">
        <title>Login</title>
        <link rel="stylesheet" type="text/css" href="oep.css"/>
    </head>
	
    <body style="	background: url(pic/bk4.jpg);	background-repeat: no-repeat;  
    -webkit-background-size: cover;
    -moz-background-size: cover;
    -o-background-size: cover;
    background-size: cover;
	opacity:1;">
    <div class="navbar">
    <ul>
    <li><a class="padd" href="#home" ></a></li>
    <li><a href="oep.jsp">Home</a></li>
   <!-- <li><a href="#contact">Contact</a></li>-->
    <li style="float:right"><a class="active" >Login</a></li>
    <li style="float:right"><a href="Signup.jsp">SignUp</a></li>
    </ul>
    </div>
    <div class="pagel">

    <form action="val.jsp" method="POST">
    <div class="log">
      <div class="imgcontainer">
        <img src="pic/login.png" alt="Avatar" class="avatar">
      </div>

      <div class="container">
        <label><b>Username</b></label>
        <input type="text" placeholder="Enter Username" style="margin-top:25px" name="name" required>
    <br>
        <label><b>Password</b></label>
        <input type="password" placeholder="Enter Password" style="margin-left:3px"name="pass" required>
    <br>
        <button type="submit" style="margin-left:0px; margin-top:25px" name="login">Login</button>
            <br>
        <input type="checkbox" style="margin-left:0px"checked="checked"> Remember me
      </div>
    <br><br>
      <div style="background-color:#f1f1f1;padding:16px">
        <button type="button" class="cancelbtn" style="margin-left:0px; background-color:#f20c09" onclick="location.href='oep.jsp'">Cancel</button>
        <span class="psw">Forgot <a href="#">password?</a></span>
      </div>
      </div>
    </form>
</div>
</body>
</html>