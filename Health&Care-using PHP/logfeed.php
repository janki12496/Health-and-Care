<html>
<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>homepage</title>
		<link rel="stylesheet" type="text/css" href="oep.css"/>

	</head>
	<html>
<head>
</head>
<body style="	background: url(pic/bg7.jpg);	background-repeat: no-repeat;  
    -webkit-background-size: cover;
    -moz-background-size: cover;
    -o-background-size: cover;
    background-size: cover;
	opacity:1;">
<div class="navbar">


<div class="feedbck">
<form action="feed.php" >
<table>
<tr>
	<th>Select Doctor:</th>
	<td><select name=doc class="soflow" style="width:200px;font-size:20px;height:50px">
	<option value="Amit">Amit</option>
	<option value="Girish">Girish</option>
	<option value="Ronak">Ronak</option>
	<option value="Chirag">Chirag</option>
	<option value="Pratik">Pratik</option>
	<option value="Reshma">Reshma</option>
	</select></td></tr>
	<tr><th>Feedback:</th><td><textarea  rows="4" cols="50" style="width:200px" name="fb"></textarea></td></tr>
	<tr><td></td><td><input type="submit" class="sub" align="center"></td></tr>
</table>
</form>
</div>
<a href="logout.php">logout</a>


</body>
</html>