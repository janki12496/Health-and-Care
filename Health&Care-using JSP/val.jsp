<%@ page language="java" %>
        <%@ page import="java.sql.*,java.io.*,javax.servlet.*,javax.servlet.http.*" %>
         <%@ page import="java.sql.DriverManager.*" %>
<% 
        
        String uname=request.getParameter("name");
        String pass=request.getParameter("pass");
		Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/oep", "root", "");
        PreparedStatement pst = con.prepareStatement("select * from users where loginid=? and password=?");
        pst.setString(1, uname);
        pst.setString(2, pass);
        ResultSet rs = pst.executeQuery();
        
        if(rs.next()){
                session.setAttribute("username",uname);
                response.sendRedirect("Welcome.jsp");
        }
        else
        {
            response.sendRedirect("login.jsp");
        }

%>
