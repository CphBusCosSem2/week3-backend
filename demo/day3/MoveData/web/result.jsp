<%-- 
    Document   : result.jsp
    Created on : Sep 7, 2016, 2:21:18 PM
    Author     : Thomas Hartmann - tha@cphbusiness.dk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h3>Du er brugernavn: <% out.println(session.getAttribute("sessionusername"));%></h3>
    </body>
</html>
