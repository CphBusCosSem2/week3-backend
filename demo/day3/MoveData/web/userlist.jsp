<%-- 
    Document   : userlist
    Created on : Sep 7, 2016, 7:50:06 PM
    Author     : Thomas Hartmann - tha@cphbusiness.dk
--%>


<%-- Important to import all referenced classes --%>
<%@page import="java.util.List, entity.User" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% List<User> userList = (List<User>)session.getAttribute("users"); %>
        <ul>
            <% for(int i = 0; i < userList.size(); i++){
                User user = userList.get(i);
                out.println("<li>"+user.getId()+" - "+user.getUsername()+" - "+user.getPassword()+"</li>");
            } %>
        </ul>
    </body>
</html>
