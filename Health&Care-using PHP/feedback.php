<html>
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>homepage</title>
		<link rel="stylesheet" type="text/css" href="oep.css"/>
	</head>
	<body style="	background: url(pic/bg17.jpg);	background-repeat: no-repeat;  
    -webkit-background-size: cover;
    -moz-background-size: cover;
    -o-background-size: cover;
    background-size: cover;
	opacity:1; ">
			
	<div class="navbar">
		<ul>
		<li><strong><a class="padd" href="#home" style=";letter-spacing:2px "> H&C </a></strong></li>
		<li><a href="oep.html">Home</a></li>
		<!-- <li><a href="#contact">Contact</a></li>-->
		<li style="float:right"><a href="Login.php">Login</a></li>
		<li style="float:right"><a href="SignUp.php">SignUp</a></li>
		<li  style="float:right"><a class="active">Feedback</a></li>
		</ul>
		</div>
		<div class="logf">
	<form action="logfeed.php" method="POST">
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
  
<br><br>
  <div style="background-color:#f1f1f1;padding:16px">
    <button type="button" class="cancelbtn" style="margin-left:0px; background-color:#f20c09" onclick="location.href='oep.html'">Cancel</button>
    <span class="psw">Forgot <a href="#">password?</a></span>
  </div>
  </div>
</form>
		<?php 
			session_start();
	   if(isset($_POST['login']))
	   {
	    $con=mysqli_connect("localhost","root","","wt");
		$name=$_POST['name'];
		$password=$_POST['pass'];
		$ins="select *from users where loginid like '$name' and password like '$password'";
		$result=mysqli_query($con,$ins);
		if(mysqli_num_rows($result)>0)
		{
		 $_SESSION['is_logged']= true;
		 $_SESSION['username']=$name;
		 $_SESSION['passwrd']=$password;
		 echo "you are logged in";
		?><script>alert("You are logged in");</script><?php
				header('location:logfeed.php');
			}
else
		{
		  ?><script>alert("please check your username or password")</script>	<?php
        }
	    } 
?>

</body>
</html>