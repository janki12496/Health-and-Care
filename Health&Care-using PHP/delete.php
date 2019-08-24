<html>
<head>
</head>
<body>
<?php
	
	$con=mysqli_connect("localhost","root","","wt");
	$name=$_GET['name'];
	$ins="DELETE FROM users WHERE loginid='$name'";
	$query=mysqli_query($con, $ins);

	?> 
	</body>
	</html>