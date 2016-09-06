<%-- 
    Document   : login
    Created on : Sep 6, 2016, 9:47:48 AM
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
        <form action="Front" method="POST">
            <input type="text" name="username" value="" />
            <input type="password" name="password" value="" />
            <input type="hidden" name="origin" value="login" />
            <input type="submit" value="Login" />
        </form>
    </body>
</html>
