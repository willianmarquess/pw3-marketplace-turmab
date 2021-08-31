<%-- 
    Document   : cadastro-usuario
    Created on : 15/06/2021, 14:14:51
    Author     : willi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Cadastro de usuário</h1>
        <form method="POST" action="<%=request.getContextPath()%>/CadastrarUsuario">
            <label for="email">E-mail</label><br>
            <input type="email" id="email" name="email" required>
            <br>
            <br>
            <label for="senha">Senha:</label><br>
            <input type="password" id="senha" name="senha" required>
            <br>
            <br>
            <button type="submit">Cadastrar</button>
        </form>
            
        <%
            String resposta = (String) request.getAttribute("resposta");
            
            if(resposta != null){
               if(resposta.equals("sucesso")) {
        %>
               
            <h2>Usuário cadastrado com sucesso!</h2>
                  
        <% } else { %>

            <h2>Erro ao cadastrar usuário!</h2>
        
        <%    }
          }
        %>
    </body>
</html>
