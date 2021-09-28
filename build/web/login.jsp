<%-- 
    Document   : login
    Created on : 21/09/2021, 14:23:48
    Author     : willi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <h1>Login</h1>
        <form method="POST" action="#">
            
            <label for="email">E-mail:</label><br>
            <input type="email" name="email"><br><br>
            
            <label for="senha">Senha:</label><br>
            <input type="password" name="senha"><br><br>
            
            <button type="submit">Logar</button>
        </form>
    </body>
</html>
