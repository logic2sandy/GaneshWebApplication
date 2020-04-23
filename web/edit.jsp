<%-- 
    Document   : edit
    Created on : 19 Apr, 2020, 11:09:35 AM
    Author     : Mr. SANDEEP KUMAR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" import="java.sql.*,java.io.*"%>
<% 
    String rollnum=request.getParameter("rollNum");
    try{
        Class.forName("oracle.jdbc.driver.OracleDriver");
     Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","12345");
     Statement smt=con.createStatement();
     String selectQr="SELECT * FROM ganesh where enroll='"+rollnum+"'";
     ResultSet rs=smt.executeQuery(selectQr);
     while(rs.next())
     {
           /*
                 //for raio button
                    
                    String rd1 = "", rd2 = "";
                    String dbradio = rs.getString(7);
        
                    if(request.getParameter("radio") != null) 
                       {
                         if(request.getParameter("radio").equals("dbradio")) 
                          {
                           rd1 = "CHECKED";
                          }

                        if(request.getParameter("radio").equals("dbradio"))
                          {
                           rd2 = "CHECKED";
                          }
                        }
         
                 //for check box
                      /*  
                      String s="";
                      
                      
                       String subject=rs.getString(9));
                          for(int i=0;i<subject.length;i++)
                                               {
                                                  s=s+subject[i]+",";
                                               }
                      
                      
                      
                                      String subject[]=request.getParameterValues("subject");
                                                for(int i=0;i<subject.length;i++)
                                               {
                                                  s=s+subject[i]+",";
                                               }
                      
                         String check1 = "", check2 = "", check3 = "";
                     if(request.getParameter("subject") != null) 
                            {
                                if(request.getParameter("subject").equals("rs.getString(9)")) 
                                 {
                                  check2 = "CHECKED";
                                 }
                                if(request.getParameter("subject").equals("rs.getString(9)"))
                                 {
                                  check1 = "CHECKED";
                                  check3 = "CHECKED";
                                 }
                                if(request.getParameter("subject").equals("rs.getString(9)"))
                                 {
                                  check1 = "CHECKED";
                                  check2 = "CHECKED";
                                  check3 = "CHECKED";
                                 }
                          }
        */
       

%> 
     
 

<!DOCTYPE html>
<html>
    <head>
        <title>Registration Form</title>
        <SCRIPT type="text/javascript" src="myJs.js">
     </SCRIPT>
    </head>
    <body>
    <center><h1>Student Registration Form</h1></center>  
        <form action="updateRecord.jsp" method="post" name="myform" onsubmit="return validateform()">
          <table align="center" border="2px">
              <tr><th><b>Roll Number</b></th>
                  <td><input type="text" name="roll" value="<%= rs.getString(1)%>" readonly></td></tr>
              <tr><th><b>First Name</b></th>
                  <td><input type="text" name="f_name" value="<%= rs.getString(4)%>"></td></tr>
              <tr><th><b>Second Name</b></th>
                  <td><input type="text" name="l_name" value="<%= rs.getString(5)%>"></td></tr>
              <tr><th><b>Address</b></th>
                  <td><textarea name="address" rows="5" cols="8"><%= rs.getString(6)%></textarea></td></tr>
              <tr><th><b>Gender</b></th>
                  <td>Male<input type="radio" name="gender" value="male">
                      Female<input type="radio" name="gender" value="Female">
                  </td></tr>
              <tr><th><b>city</b></th>
                  <td><select name="city" >
                          <option> </option>
                          <option>Agra</option>
                          <option>Lucknow</option>
                          <option>kanpur</option>
                          <option>Banaras</option>
                          <option>Allahabad</option>
                      </select>
                  </td></tr>
              <tr><th><b>Subject</b></th>
                  <td>Hindi<input type="checkbox" name="subject" value="hindi">
                      English<input type="checkbox" name="subject" value="English">
                      Maths<input type="checkbox" name="subject" value="maths">
                  </td></tr>
              <tr><th><b>Mobile number</b></th>
                  <td><input type="text" name="mobile" value="<%=rs.getString(10)%>"></td></tr>
              <tr><th><b>User Id</b></th>
                  <td><input type="text" name="user_id" value="<%=rs.getString(2)%>" readonly></td></tr>
              <tr><th><b>Password</b></th>
                  <td><input type="password" name="pass" value="<%=rs.getString(3)%>" readonly></td></tr>
               <tr><th><b>User type</b></th>
                  <td><input type="text" name="user_t" value="<%=rs.getString(11)%>" readonly></td></tr>
              <tr><td>
                  <input type="submit" value="submit">
                  <input type="reset" value="reset">
                  </td></tr>
          </table> 
            <br>
            
        </form>  
                 <%
                  }
                rs.close();
                con.close();

             }catch(SQLException e){
                out.println(e);
             }
           %>
    </body>
</html>

