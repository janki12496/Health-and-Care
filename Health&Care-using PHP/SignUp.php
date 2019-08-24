<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title></title>
 <!--   <link href="css/bootstrap.min.css" rel="stylesheet">
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>-->
	<link rel="stylesheet" type="text/css" href="oep.css"/>
	<script type="text/javascript">
	function validate()
	{
		var p1=document.f1.pass.value;
		var p2=document.f1.pass2.value;
		if(p1!=p2)
		{
			alert("Password doesnt match");
			return false;
		}
		else
		{
			return true;
		}
	}
	function validate2()
	{
		var p1=document.f2.pass.value;
		var p2=document.f2.pass2.value;
		if(p1!=p2)
		{
			alert("Password doesnt match");
			return false;
		}
		else
		{
			return true;
		}
	}
	</script>
  </head>
<body style="	background: url(pic/bg3.jpg);	background-repeat: no-repeat;  
    -webkit-background-size: cover;
    -moz-background-size: cover;
    -o-background-size: cover;
    background-size: cover;
	opacity:1;" >
<?
	session_start();
?>
<div class="navbar">
<ul>
  <li><a class="padd" href="#home" ></a></li>
  <li><a href="oep.html">Home</a></li>
 <!-- <li><a href="#contact">Contact</a></li>-->
  <li style="float:right"><a href="Login.php">Login</a></li>
  <li style="float:right"><a class="active" href="#Doctor">SignUp</a></li>
 </ul> </div>
 
  
<form action="sign.php" name="f1" onsubmit="validate()" method="POST">
 <div class="page">
<div class="sign1" >

<!--  <div class="imgcontainer">
    <img src="pic/login.png" alt="Avatar" class="avatar">
  </div>-->

  <div class="container">
    <label><b>Login ID</b></label><br>
    <input type="text" placeholder="Enter your e-mail address" name="name" required>
<br>
    <label><b>Password</b></label><br>
    <input type="password" placeholder="Enter Password" style="margin-left:3px"name="pass" required>
<br>
	<label><b>Confirm Password</b></label>
    <input type="password" placeholder="Confirm Password" style="margin-left:3px"name="pass2" required>
<br>

    <button type="submit" style="margin-left:0px; margin-top:25px" name="submit">Submit</button>
	<button type="submit" style="margin-left:0px; margin-top:25px; background-color:red">Cancel</button>
	<br>

</div>
<br><br>
  
 
  </div>
</div>
</form>
<div class="page">
  <div class="sign2" >
  <form action="sign1.php" name="f2"  onsubmit="validate2()">
<!--  <div class="imgcontainer">
    <img src="pic/login.png" alt="Avatar" class="avatar">
  </div>-->
  <p>For Doctors:</p>
  <div class="container">

    <label><b>Login ID</b></label><br>
    <input type="text" placeholder="Enter your e-mail address" name="name" required>
<br>
    <label><b>Password</b></label><br>
    <input type="password" placeholder="Enter Password" style="margin-left:3px"name="pass" required>
<br>
	<label><b>Confirm Password</b></label>
    <input type="password" placeholder="Confirm Password" style="margin-left:3px"name="pass2" required>
<br>
		  <label><b>Medical Registration Number</b></label><br>
    <input type="text" placeholder="Enter your MRN" style="margin-left:3px"name="mrn" required>
<br>
    <button type="submit" style="margin-left:0px; margin-top:25px" name="docsub" >Submit</button>
	<button type="submit" style="margin-left:0px; margin-top:25px; background-color:red">Cancel</button>
	<br>

</div>
<br><br>

 
  </div>
</form>



</div>
</div>
</body>
</html>