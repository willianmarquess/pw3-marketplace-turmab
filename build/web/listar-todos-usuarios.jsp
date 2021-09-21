<%-- 
    Document   : listar-todos-usuarios
    Created on : 31/08/2021, 14:04:24
    Author     : willi
--%>

<%@page import="java.util.List"%>
<%@page import="br.com.model.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listar Usuários</title>
    </head>
    <body>
        <h1>Lista de Usuários</h1>
        <table>
            <thead>
                <tr>
                    <th>Id</th>
                    <th>E-mail</th>
                    <th>Senha</th>
                    <th>Tipo</th>
                    <th>Status</th>
                </tr>
            </thead>
            <tbody>
                <% List<Usuario> usuarios = 
                (List<Usuario>) request.getAttribute("usuarios"); %>
                <% for(Usuario usuario: usuarios){%>
                <tr>
                    <td><%=usuario.getIdUsuario()%></td>
                    <td><%=usuario.getEmailUsuario()%></td>
                    <td><%=usuario.getSenhaUsuario()%></td>
                    <td><%=usuario.getTipoUsuario()%></td>
                    <td><%=usuario.getStatusUsuario()%></td>
                </tr>
                <%}%>
            </tbody>
        </table>
        
    </body>
</html>
