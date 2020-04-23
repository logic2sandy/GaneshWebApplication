<%-- 
    Document   : uploadFile
    Created on : 18 Apr, 2020, 1:56:21 PM
    Author     : Mr. SANDEEP KUMAR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form name="uploadFile" method="POST" action="uploadFileprocess.jsp" enctype="multipart/form-data">
            <input type="file" name="myfile"> <br />
            <input type="submit" value="Submit" />
        </form>   
    </body>
</html>
