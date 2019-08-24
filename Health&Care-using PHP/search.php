<html>
<head>
	<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>homepage</title>
		<link rel="stylesheet" type="text/css" href="oep.css"/>
</head>
<body style="	background: url(pic/bg35.jpg) no-repeat fixed;  
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
		<li style="float:right"><a href="Login.php">Login</a></li>
		<li style="float:right"><a href="SignUp.php">SignUp</a></li>
		</ul>
	</div>
	<div class="docinfo">	
<?php
	
	$con=mysqli_connect("localhost","root","","wt");
	$res=$_POST['search'];
	$ins1="select *from doctor where speciality like '$res'";
	$result1=mysqli_query($con,$ins1);
	while($row=mysqli_fetch_array($result1))
	{
		?>
		
		<div>
		<form action="result.php" method="GET">
		 <p><?php echo $row['name'];?></p>
		<table >
		<tr><td><b> Short Name</td><td> <?php echo $row['shortname'];?> </td></tr>
		<tr><td><b> Experience:</td><td> <?php echo $row['experience'];?> Years</td></tr>
		<tr><td><b> Speciality:</td><td> <?php echo $row['speciality'];?></td></tr>
		<tr><td><b> Hospital/Clinic:</td><td><?php echo $row['hospital'];?></td></tr>
		<tr><td><b> Address:</td><td><?php echo $row['address'];?></td></tr>
		<tr><td><b> Fees:</td><td> <?php echo $row['Fees'];?></td></tr>
		<tr><td></td><td><input type="submit" value="See feedback"></td></tr>
		<input type="hidden" name="n1" value="<?php echo $row['shortname']?>">
		</table></form></div>
	<?php }

		
		$ins2="select *from doctor where shortname like '$res'";
	$result2=mysqli_query($con,$ins2);
	while($row=mysqli_fetch_array($result2))
	{
		?>
		<form action="result.php" method="GET">
		<div>
		 <p><?php echo $row['name'];?></p>
		<table >
		<tr><td><b> Experience:</td><td> <?php echo $row['experience'];?> Years</td></tr>
		<tr><td><b> Speciality:</td><td> <?php echo $row['speciality'];?></td></tr>
		<tr><td><b> Hospital/Clinic:</td><td><?php echo $row['hospital'];?></td></tr>
		<tr><td><b> Address:</td><td><?php echo $row['address'];?></td></tr>
		<tr><td><b> Fees:</td><td> <?php echo $row['Fees'];?></td></tr>
		<tr><td></td><td><input type="submit" value="See feedback"></td></tr>
		<input type="hidden" name="n1" value="<?php echo $row['shortname']?>">
		</table></form></div>
	<?php }

			
	$ins3="select *from doctor where locality like '$res'";
	$result3=mysqli_query($con,$ins3);
	while($row=mysqli_fetch_array($result3))
	{
		?>
		<form action="result.php" method="GET">
		<div>
		 <p><?php echo $row['name'];?></p>
		<table >
		<tr><td><b> Experience:</td><td> <?php echo $row['experience'];?> Years</td></tr>
		<tr><td><b> Speciality:</td><td> <?php echo $row['speciality'];?></td></tr>
		<tr><td><b> Hospital/Clinic:</td><td><?php echo $row['hospital'];?></td></tr>
		<tr><td><b> Address:</td><td><?php echo $row['address'];?></td></tr>
		<tr><td><b> Fees:</td><td> <?php echo $row['Fees'];?></td></tr>
		<tr><td></td><td><input type="submit" value="See feedback"></td></tr>
		<input type="hidden" name="n1" value="<?php echo $row['shortname']?>">
		
		</table></div>
	<?php }

		?>
	
	
	</div>
	
</body>
</html>