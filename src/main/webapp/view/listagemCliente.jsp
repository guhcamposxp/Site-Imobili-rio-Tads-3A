
<%@page import="Data.ClienteData"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.ClienteDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

    <head>
        <jsp:include page="/getCliente" />
        <meta charset="utf-8"/>
        <meta content="width=device-width, initial-scale=1, maximum-scale=1" name="viewport">
        <link href="../css/style.css" rel="stylesheet">	
        <c:import url="Menu.jsp"></c:import>
            <title>Listagem de Clientes</title>
    </head>
        <div class="container">
            <legend>Clientes Cadastrados</legend>          
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

                    <c:forEach var="cliente" items="${lista}">

                        <td>${cliente.nomeCliente}</td>
                        <td>${cliente.cpfCliente}</td>
                        <td>${cliente.emailCliente}</td>
                        <td>${cliente.telFixoCliente}</td>
                        <td>${cliente.telCelCliente}</td>
                       
                        <td class="actions">
                            <a class="btn btn-success btn-xs" href="../view/showCliente.jsp?idCliente=${cliente.idCliente}">Visualizar</a>
                            <a class="btn btn-warning btn-xs" href="../view/editaCliente.jsp?idCliente=${cliente.idCliente}">Editar</a>
                            <a class="btn btn-danger btn-xs"  href="../dropCliente?idCliente=${cliente.idCliente}">Excluir</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
    </body>
</html>

</html>
