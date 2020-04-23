<%-- 
    Document   : singnUp
    Created on : 15 Apr, 2020, 11:56:21 AM
    Author     : Mr. SANDEEP KUMAR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" import="java.sql.*,java.io.*" %>
<%
     String s="";
     int roll=0;
     String roll_num=(String)request.getParameter("roll");
     roll=Integer.parseInt(roll_num);
     String f_name=(String)request.getParameter("f_name");
     String l_name=(String)request.getParameter("l_name");
     String address=(String)request.getParameter("address");
     String gender=(String)request.getParameter("gender");
     String city=(String)request.getParameter("city");
     String subject[]=request.getParameterValues("subject");
      for(int i=0;i<subject.length;i++)
     {
        s=s+subject[i]+",";
     }
     String mobile=(String)request.getParameter("mobile");
     String user_id=(String)request.getParameter("user_id");
     String password=(String)request.getParameter("pass");
     String user_type=(String)request.getParameter("user_t");
    /*
     out.println(roll);
     out.println(f_name);
     out.println(l_name);
     out.println(address);
     out.println(gender);
     out.println(city);
     out.println(s);
     out.println(mobile);
     out.println(user_id);
     out.println(password);
     out.println(user_type);
     */
     try{
      Class.forName("oracle.jdbc.driver.OracleDriver");
          Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","12345");
            
          String intQur="insert into ganesh(enroll,user_id,password,name1,name2,venue,gender,location,subject,contact_num,utype) values(?,?,?,?,?,?,?,?,?,?,?)";
          //String intQur="update university set id=?, f_name=?,l_name=?, address=?, gender=?, city=?,subject=? ,mobile_num=? ,user_id=?,pass=?,u_type=? where login=? ";
          PreparedStatement pstate=con.prepareStatement(intQur);
                         pstate.setInt(1,roll); 
                         pstate.setString(2,user_id);
                         pstate.setString(3,password);
                         pstate.setString(4,f_name);
                         pstate.setString(5,l_name);
                         pstate.setString(6,address);
                         pstate.setString(7,gender);
                         pstate.setString(8,city);
                        
                         pstate.setString(9,s);
                         pstate.setString(10,mobile);
                         pstate.setString(11,user_type);
                         pstate.executeUpdate();
                         out.println("record insert sucessfully");
                         pstate.close();
                         con.close();
                         out.println("record inserted");
                         
     }catch(SQLException e){
        out.println("sql exception"+e);
     
     }
       
        response.sendRedirect("UserRecord.jsp");
        
%>
