<%-- 
    Document   : feedback
    Created on : Sep 6, 2016, 11:02:56 AM
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
        <% if(session.getAttribute("username") == null){
            
            out.println("<h1>Du er nu registreret i systemet</h1>");
            
            %><h1>Du er nu registreret i systemet</h1><%
        }%>
        
        <% out.println(session.getAttribute("username")); %>
    </body>
</html>
