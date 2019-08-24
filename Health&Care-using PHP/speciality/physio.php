<html>
<head>
	<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>homepage</title>
		<link rel="stylesheet" type="text/css" href="oep.css"/>
</head>
<body style="	background: url(pic/bg4.jpg) no-repeat fixed;  
    -webkit-background-size: cover;
    -moz-background-size: cover;
    -o-background-size: cover;
    background-size: cover;
	opacity:1; ">
	<div class="navbar">
		<ul>
		<li><a class="padd" href="#home" ></a></li>
		<li><a href="oep.html">Home</a></li>
		<li><a class="active">Doctor</a></li>
		<li style="float:right"><a href="Login.html">Login</a></li>
		<li style="float:right"><a href="SignUp.html">SignUp</a></li>
		</ul>
	</div>

	<div class="docinfo">	
<?php
	
	$con=mysqli_connect("localhost","root","","wt");
	$res='Physiotherapist';
	$ins1="select *from doctor where speciality like '$res'";
	$result1=mysqli_query($con,$ins1);
	while($row=mysqli_fetch_array($result1))
	{
		?><p> <b><?php echo $row['name'];?></b></p>
		<p> Experience: <?php echo $row['experience'];?> Years</p>
		<p> Speciality: <?php echo $row['speciality'];?></p>
		<p> Hospital/Clinic:<?php echo $row['hospital'];?></p>
		<p> Address: <?php echo $row['address'];?></p>
		<p> Fees: <?php echo $row['Fees'];?></p>
	<?php }?>

	</div>

</body>
</html>