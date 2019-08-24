<html>
<head>
</head>
<body>
<?php
	
	$con=mysqli_connect("localhost","root","","wt");
	$name=$_GET['doc'];
	$feedback=$_GET['fb'];
	$ins1="insert into feedbck values ('$name','$feedback')";
	$result=mysqli_query($con,$ins1);?><script>alert("Feedback submitted successfully!!");</script>
	<?php if( mysqli_num_rows($result)>0)
	{
	header("Location: logfeed.php"); 
	}
?>
	</body>
	</html>