<%-- 
    Document   : testedb
    Created on : 22/04/2017, 17:49:59
    Author     : Felipe
--%>

<%@page import="br.com.senac.gruposystem.dao.User"%>
<%@page import="br.com.senac.gruposystem.ConexaoBanco.ConexaoMySql.ConexaoMySQL"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%User us = new User();
        String login = request.getParameter("usuario");
        String senha = request.getParameter("senha");
        boolean status = us.verificarUsuario(login,senha);
        if(status == true){
            out.println("Login feito com sucesso ");
        }else{
            out.println("Login ou senha inválidos");
        }
        %>
    </body>
</html>
