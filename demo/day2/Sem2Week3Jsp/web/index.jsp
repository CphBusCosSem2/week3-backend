<%-- 
    Document   : index
    Created on : Sep 5, 2016, 6:03:39 PM
    Author     : Thomas Hartmann - tha@cphbusiness.dk
--%>
<%! List<String> strings; %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% if (session.isNew()) {%>
        <h1>Hello new user!</h1>
        <%} else { %> 
        <h1>Hello <% out.print(session.getAttribute("username")); %> </h1>
        
        <% strings = (List<String>)session.getAttribute("theList"); 
           for(int i = 0; i < strings.size(); i++){
               out.println(strings.get(i));
        %> <br> <%
           }
        } %>
        <a href="FrontController">Click here to circle back to this place with a session id</a>
        
        
    </body>
</html>
