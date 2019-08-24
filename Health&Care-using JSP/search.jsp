<%@ page language="java" %>
        <%@ page import="java.sql.*,java.io.*,javax.servlet.*,javax.servlet.http.*" %>
         <%@ page import="java.sql.DriverManager.*" %>
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
		<li><a href="oep.jsp">Home</a></li>
		<li><a class="active">Doctor</a></li>
		<li style="float:right"><a href="Login.jsp">Login</a></li>
		<li style="float:right"><a href="SignUp.jsp">SignUp</a></li>
		</ul>
	</div>
	
	<div class="docinfo">	
	
	<% 
        
        String res=request.getParameter("search");
        String pass=request.getParameter("pass");
		
		Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/oep", "root", "");
        PreparedStatement pst = con.prepareStatement("select * from doctor where speciality=?");
        pst.setString(1, res);
        
        ResultSet rs = pst.executeQuery();
        
        while(rs.next()){
		
		out.print("<div><p>"+rs.getString(1)+"</p>");
		out.print("<table><tr><td><b>Experience:</b></td><td>"+rs.getInt(4)+"</td></tr>");
		out.print("<tr><td><b>Speciality:</b></td><td>"+rs.getString(3)+"</td></tr>");
		out.print("<tr><td><b>Hospital/Clinic:</b></td><td>"+rs.getString(5)+"</td></tr>");
		out.print("<tr><td><b>Hospital/Clinic:</b></td><td>"+rs.getString(6)+"</td></tr>");
		out.print("<tr><td><b>Fees:</b></td><td>"+rs.getInt(8)+"</td></table></div>");
		}
		
		PreparedStatement pst1 = con.prepareStatement("select * from doctor where locality=?");
        pst1.setString(1, res);
        
        ResultSet rs1 = pst1.executeQuery();
        
        while(rs1.next()){
		out.print("<div><p>"+rs1.getString(1)+"</p>");
		out.print("<table><tr><td><b>Experience:</b></td><td>"+rs1.getInt(4)+"</td></tr>");
		out.print("<tr><td><b>Speciality:</b></td><td>"+rs1.getString(3)+"</td></tr>");
		out.print("<tr><td><b>Hospital/Clinic:</b></td><td>"+rs1.getString(5)+"</td></tr>");
		out.print("<tr><td><b>Hospital/Clinic:</b></td><td>"+rs1.getString(6)+"</td></tr>");
		out.print("<tr><td><b>First Appoinmnent Fees:</b></td><td>"+rs1.getInt(8)+"</td></table></div>");
		}
		PreparedStatement pst2 = con.prepareStatement("select * from doctor where shortname=?");
        pst2.setString(1, res);
        
        ResultSet rs2 = pst2.executeQuery();
        
        while(rs2.next()){
		out.print("<div><p>"+rs2.getString(1)+"</p>");
		out.print("<table><tr><td><b>Experience:</b></td><td>"+rs2.getInt(4)+"</td></tr>");
		out.print("<tr><td><b>Speciality:</b></td><td>"+rs2.getString(3)+"</td></tr>");
		out.print("<tr><td><b>Hospital/Clinic:</b></td><td>"+rs2.getString(5)+"</td></tr>");
		out.print("<tr><td><b>Hospital/Clinic:</b></td><td>"+rs2.getString(6)+"</td></tr>");
		out.print("<tr><td><b>First Appoinmnent Fees:</b></td><td>"+rs2.getInt(8)+"</td></table></div>");
		}
        
%>	
</div>
	
</body>
</html>
		 
