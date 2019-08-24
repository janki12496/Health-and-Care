<%@ page language="java" %>
        <%@ page import="java.sql.*,java.io.*,javax.servlet.*,javax.servlet.http.*" %>
   	<%
       //   session.removeAttribute("username");
         session.setAttribute("username", null);
		 session.invalidate();
		response.sendRedirect("login.jsp"); 
    %>
	
