<%-- 
    Document   : Home
    Created on : 15 Apr, 2020, 11:53:29 AM
    Author     : Mr. SANDEEP KUMAR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" import="java.util.*,java.sql.*" %>
<%
    
    String getSession=(String)session.getAttribute("user_userId");
    //out.println("welcome user-->>>"+getSession);
     session.setAttribute("sessionVar", getSession);
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1><% out.println("welcome user-->>>"+getSession); %></h1>
        <h3><a href="logout.jsp">Logout?</a></h3>
        
    </body>
</html>
