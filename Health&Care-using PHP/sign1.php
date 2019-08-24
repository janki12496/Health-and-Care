<html>
<head>
</head>
<body>
<?php
	
	$con=mysqli_connect("localhost","root","","wt");
	$name=$_POST['name'];
	$password=$_POST['pass'];
		$mrn=$_GET['mrn'];
	$ins="select *from newdoc where loginid like '$name'";
	$result1=mysqli_query($con,$ins);
	if(mysqli_num_rows($result1)>0)
	{
		echo "Please try another loginid";
	}
	else
	{
	$ins1="insert into newdoc values ('$name','$password','$mrn')";
	$result=mysqli_query($con,$ins1);?><script>alert("You are signed in");</script>
	<?php}

?>
	</body>
	</html>