<%-- 
    Document   : logout.jsp
    Created on : 19 Apr, 2020, 6:31:40 PM
    Author     : Mr. SANDEEP KUMAR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" import="java.util.*,java.sql.*" %>
<%
      String ss=(String)session.getAttribute("sessionVar");
      if(ss!=null)
      {
         session.setAttribute(" ",ss);
         //out.println("sesstion value is-->>");
         response.sendRedirect("login.html");
      }
%>
