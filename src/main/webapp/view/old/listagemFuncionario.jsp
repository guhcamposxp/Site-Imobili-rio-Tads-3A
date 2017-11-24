
<%@page import="Data.FuncionarioData"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.FuncionarioDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

    <head>
        <jsp:include page="/getFuncionario" />
        <meta charset="utf-8"/>
        <meta content="width=device-width, initial-scale=1, maximum-scale=1" name="viewport">
        <link href="../css/style.css" rel="stylesheet">	
        <c:import url="Menu.jsp"></c:import>
            <title>Listagem de Funcionarios</title>
    </head>
        <div class="container">
            <legend>Funcionarios Cadastrados</legend>          
            <table class="table table-striped table-hover">
                <thead>
                    <tr>
                        <th>Nome</th>
                        <th>Cpf</th>
                        <th>E-mail</th>
                        <th>Telefone</th>
                        <th>Celular</th>
                        <th class="actions">Ações</th>
                    </tr>
                </thead>
                <tr>    

                    <c:forEach var="Funcionario" items="${lista}">

                        <td>${Funcionario.nomeFuncionario}</td>
                        <td>${Funcionario.cpfFuncionario}</td>
                        <td>${Funcionario.emailFuncionario}</td>
                        <td>${Funcionario.telFixoFuncionario}</td>
                        <td>${Funcionario.telCelFuncionario}</td>
                       
                        <td class="actions">
                            <a class="btn btn-success btn-xs" href="../view/showFuncionario.jsp?idFuncionario=${Funcionario.idFuncionario}">Visualizar</a>
                            <a class="btn btn-warning btn-xs" href="../view/editaFuncionario.jsp?idFuncionario=${Funcionario.idFuncionario}">Editar</a>
                            <a class="btn btn-danger btn-xs"  href="../dropFuncionario?idFuncionario=${Funcionario.idFuncionario}">Excluir</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
    </body>
</html>

</html>
