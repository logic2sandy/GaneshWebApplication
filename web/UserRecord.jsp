<%-- 
    Document   : UserRecord
    Created on : 15 Apr, 2020, 1:11:33 PM
    Author     : Mr. SANDEEP KUMAR
--%>

<%@page import="java.sql.*,java.io.*" %>
<%
     Class.forName("oracle.jdbc.driver.OracleDriver");
     Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","12345");
     Statement smt=con.createStatement();
     String selectQr="SELECT * FROM ganesh";
     ResultSet rs=smt.executeQuery(selectQr);
     
%>
<!DOCTYPE html>
<html>
    <head>
        <title>Display Data</title>
    </head>
    <body bgcolor="skyblue">
        <table BORDER="1px" align="center">
            <tr><th>s.no</th>
                <th>Roll Number</th>
                <th>User Id</th>
                <th>Password</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Address</th>
                <th>Gender</th>
                <th>City</th>
                <th>Subject</th>
                <th>Mobile no.</th>
                <th>user type</th>
            </tr>
         <%   
             
               int i=1;
               while(rs.next())
               { 
                  out.println("<tr>");
                  out.println("<td>"+i+"</td>");
                  out.println("<td>"+rs.getString(1)+"</td>");
                  out.println("<td>"+rs.getString(2)+"</td>");
                  out.println("<td>"+rs.getString(3)+"</td>");
                  out.println("<td>"+rs.getString(4)+"</td>");
                  out.println("<td>"+rs.getString(5)+"</td>");
                  out.println("<td>"+rs.getString(6)+"</td>");
                  out.println("<td>"+rs.getString(7)+"</td>");
                  out.println("<td>"+rs.getString(8)+"</td>");
                  out.println("<td>"+rs.getString(9)+"</td>");
                  out.println("<td>"+rs.getString(10)+"</td>");
                  out.println("<td>"+rs.getString(11)+"</td>");
                  out.println("</tr>");
                   i++;
               }  
               rs.close();
               con.close();
         %>
        </table>
     <br>   
    <a href="delete.html">Press hear to delete record_?</a><br><br>
    <a href="edit.html">Press hear to update record_?</a>
    
    </body>   
</html>    


