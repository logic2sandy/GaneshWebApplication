<%-- 
    Document   : uploadFileprocess
    Created on : 18 Apr, 2020, 1:50:46 PM
    Author     : Mr. SANDEEP KUMAR
--%>

<%@ page contentType="text/html;charset=windows-1252"%>
<%@ page import="org.apache.commons.fileupload.DiskFileUpload"%>
<%@ page import="org.apache.commons.fileupload.FileItem"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Iterator"%>
<%@ page import="java.io.File"%>
<%  
    try{
      System.out.println("Content type"+request.getCookies());
      System.out.println("Cookies"+request.getCookies());
      DiskFileUpload fu=new DiskFileUpload();
      // if file size exceeds, a File Upoad Exception will be thrown
      fu.setSizeMax(1000000);
      List fileItems =fu.parseRequest(request);
      Iterator itr=fileItems.iterator();
      while(itr.hasNext())
      {
        FileItem fi=(FileItem)itr.next();
        //chek if not form field so as to only handle the file inputs
        if(!fi.isFormField())
        {
            System.out.println("/n Name:"+fi.getName());
        //System.out.println(fi.getOutStream().toString());
        File fNew = new File("C:/uploadfiledata",fi.getName());
        System.out.println(fNew.getAbsolutePath());
        fi.write(fNew);
        out.println("Sucess");
      
      }else
        {
          System.out.println("Field="+fi.getFieldName());
        }
      }}catch(Exception e)
           { 
               out.println("io exception"+e);
           }
%>
