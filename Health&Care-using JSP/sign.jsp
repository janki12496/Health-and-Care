<%@ page language="java" %>
        <%@ page import="java.sql.*,java.io.*,javax.servlet.*,javax.servlet.http.*" %>
         <%@ page import="java.sql.DriverManager.*" %>
<html>
<head>

<% 
        String uname=request.getParameter("name");
        String pass=request.getParameter("pass");
		Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/oep", "root", "");
        PreparedStatement pst = con.prepareStatement("insert into users (`loginid`, `password`)" + " values (?, ?)");
        pst.setString(1, uname);
        pst.setString(2, pass);
        pst.executeUpdate();
%>
<script>
alert("You are signed in");
</script>
</head>
</html>

