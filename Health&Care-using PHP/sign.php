<html>
<head>
</head>
<body>
<?php
	
	$con=mysqli_connect("localhost","root","","wt");
	$name=$_POST['name'];
	$password=$_POST['pass'];
	$ins="select *from users where loginid like '$name'";
	$result1=mysqli_query($con,$ins);
	if(mysqli_num_rows($result1)>0)
	{
		echo "Please try another loginid";
	}
	else
	{
	$ins="insert into users	values ('$name','$password')";
	$result=mysqli_query($con,$ins);
	?> <script>alert("You are signed in");</script>
	<?php
	}
	
?>
	</body>
	</html>