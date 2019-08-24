<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
							
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%
		 response.setHeader("Cache-Control","no-cache"); //Forces caches to obtain a new copy of the page from the origin server
		response.setHeader("Cache-Control","no-store"); //Directs caches not to store the page under any circumstance
		response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
		response.setHeader("Pragma","no-cache");
         if(session.getAttribute("username")==null)  
         {
           session.invalidate();
		   response.sendRedirect("login.jsp");
         }
         %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Welcome</title>
	<link rel="stylesheet" type="text/css" href="oep.css"/>
    </head>
    <body>
        

	<div class="navbar">
	<ul>
	<li><strong><a class="padd" href="#home" style=";letter-spacing:2px "> H&C </a></strong></li>
	<li><a href="oep.jsp">Home</a></li>
	<!-- <li><a href="#contact">Contact</a></li>-->
	<li style="float:right"><a href="Logout.jsp">Logout</a></li>

	<li style="float:right"><a class="active" href="#">My Account</a></li>
	</ul>
	</div>
         <div>
             <br><br><br><br>
             <h1>Welcome ${username}</h1>
         </div>

	
</body>
</html>

 

