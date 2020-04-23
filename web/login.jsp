<%-- 
    Document   : login
    Created on : 15 Apr, 2020, 11:36:48 AM
    Author     : Mr. SANDEEP KUMAR
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" import="java.sql.*,java.io.*,java.util.*"%>
<%!
    Boolean flag=false;
%>
<%
     String usd=(String)request.getParameter("userId");
     String pasw=(String)request.getParameter("password");
     String typee=(String)request.getParameter("usertype");
     
   try{    
       
             Class.forName("oracle.jdbc.driver.OracleDriver");  
             Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","12345");
             Statement smt=con.createStatement();
             String qryslect="select * from ganesh where user_id='"+usd+"' and password='"+pasw+"' and utype='"+typee+"'";
             ResultSet rs=smt.executeQuery(qryslect);
             while(rs.next())
             { 
               String users=rs.getString(2);  
               String passw=rs.getString(3);
               String users_typ=rs.getString(11);
               
               
               if(users.equals(usd) && passw.equals(pasw))
               {
                   if(users_typ.equals(typee)) 
                  {
                    session.setAttribute("user_userId",users);
                    response.sendRedirect("Home.jsp");
                  }
                 else
                  {
                    response.sendRedirect("login.html");
              
                  }
               }
               
             }
      } catch(Exception e)
     {
         out.println("Their have sql exception"+e);
     }
%>