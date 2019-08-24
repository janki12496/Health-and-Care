<html>
<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>homepage</title>
		<link rel="stylesheet" type="text/css" href="oep.css"/>
		
</head>
<body>

	<?php
		session_start();
		if(isset($_SESSION['username']))
		{?>
		<div class="navbar">
		<ul>
		<li><strong><a class="padd" href="#home" style=";letter-spacing:2px "> H&C </a></strong></li>
		<li><a href="oep.html">Home</a></li>
		<!-- <li><a href="#contact">Contact</a></li>-->
		<li style="float:right"><a href="Logout.php">Logout</a></li>
		<li style="float:right"><a href="docfeed.php">Feedback</a>
		<li style="float:right"><a class="active" href="SignUp.html">My Acoount</a></li>
		</ul>
		</div>
		<br><br><br><br>
		<?php
		
			
		}
		else
		{
			?><script>alert("Please log in");</script><?php
			header('location:Login.php');
		
		}
	?>
	
</body>
</html>