<%-- 
    Document   : showusers
    Created on : Sep 6, 2016, 11:48:11 AM
    Author     : Thomas Hartmann - tha@cphbusiness.dk
--%>
<%@page import="java.util.List, java.util.ArrayList"%>
<%! List<String> users; %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <p>Vær opmærksom på følgende: br>
           - linje 6 importerer de klasser der skal bruges (som man gør det i en alm. java klasse<br>
           - The session data with the list in it will only be there if this jsp page comes from the servlet
        </p>
        <h1>All users from the collection!</h1>
        <% users = (List<String>)session.getAttribute("users");
        for(int i = 0 ; i < users.size(); i++){
            out.println(users.get(i));
        }%>
    </body>
</html>
