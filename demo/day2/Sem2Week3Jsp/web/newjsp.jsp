<%-- 
    Document   : newjsp
    Created on : Sep 6, 2016, 9:11:09 AM
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
        <h1>Hello World!</h1>
        <%
            out.println("Your IP address is " + request.getRemoteAddr());
        %>
    </body>
</html>
