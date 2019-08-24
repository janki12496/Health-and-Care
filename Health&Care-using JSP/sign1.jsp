<%@ page language="java" %>
        <%@ page import="java.sql.*,java.io.*,javax.servlet.*,javax.servlet.http.*" %>
         <%@ page import="java.sql.DriverManager.*" %>
<html>
<head>

<% 
        String uname=request.getParameter("name");
        String pass=request.getParameter("pass");
		String mrn=request.getParameter("mrn");
		Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/oep", "root", "");
        PreparedStatement pst = con.prepareStatement("insert into  newdoc (`loginid`, `password`,`MRN`)" + " values (?, ?, ?)");
        pst.setString(1, uname);
        pst.setString(2, pass);
		pst.setString(3, mrn);
        pst.executeUpdate();
%>
<script>
alert("You are signed in");
</script>
</head>
</html>

