<%-- 
    Document   : register
    Created on : Sep 6, 2016, 10:48:13 AM
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
        <h1>Register here!</h1>
        <form action="Front" method="POST">
            <input type="text" name="username" value="" /><br>
            <input type="password" name="password" value="" /><br>
            <input type="hidden" name="origin" value="register" />
            <input type="submit" value="Register!" />
        </form>
    </body>
</html>
