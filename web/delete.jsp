<%-- 
    Document   : delete
    Created on : 19 Apr, 2020, 11:09:12 AM
    Author     : Mr. SANDEEP KUMAR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" import="java.sql.*,java.io.*" %>
   <%
        String name=(String)request.getParameter("rollNum");
        out.println(name);
          if(name!=null)
                {
                  try{
                   Class.forName("oracle.jdbc.driver.OracleDriver");
                   Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","12345");
                   String deleteQr="delete from ganesh where enroll=?";
                   PreparedStatement pstate=con.prepareStatement(deleteQr);
                                    pstate.setString(1,name);
                                    pstate.executeUpdate();
                                    out.println("record delete sucessfully");
                                    pstate.close();
                                    con.close();
               }
               catch(SQLException e)
               {
                  out.println("Error in record deletion"+e);

               }

                 String redirectURL = "UserRecord.jsp";
                 response.sendRedirect(redirectURL);

          }
   
   
   %>     
