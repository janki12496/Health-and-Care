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
		<li style="float:right"><a href="Logout.php">Logout</a></li>

		</ul>
	</div><br><br><br><br>

	<div class="docinfo">	
<?php
	
	$con=mysqli_connect("localhost","root","","wt");
	$res="Amit";
	$ins1="select *from feedbck where name like '$res'";
	$result1=mysqli_query($con,$ins1);
	while($row=mysqli_fetch_array($result1))
	{
		?><div style="border-radius:5px; padding-top:3px; padding-bottom:3px" >
		<table >
		<tr><td><?php echo $row['feedback'];?></td></tr>
	
		</table></div>
	<?php }?>

	</div>

</body>
</html>