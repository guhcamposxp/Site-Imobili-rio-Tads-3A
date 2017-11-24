
<%@page import="Data.FilialData"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.FilialDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

    <head>
        <jsp:include page="/getFilial" />
        <meta charset="utf-8"/>
        <meta content="width=device-width, initial-scale=1, maximum-scale=1" name="viewport">
        <link href="../css/style.css" rel="stylesheet">	
        <c:import url="Menu.jsp"></c:import>
            <title>Listagem de Filiais</title>
    </head>
        <div class="container">
            <legend>Filiais Cadastradas</legend>          
            <table class="table table-striped table-hover">
                <thead>
                    <tr>
                        <th>Nome Fantasia</th>
                        <th>Estado</th>
                        <th>Cidade</th>
                        <th>CEP</th>
                        <th>CNPJ</th>
                        <th class="actions">Ações</th>
                    </tr>
                </thead>
                <tr>    

                    <c:forEach var="filial" items="${lista}">

                        <td>${filial.nomeFantasiaFilial}</td>
                        <td>${filial.endEstFilial}</td>
                        <td>${filial.endCidFilial}</td>
                        <td>${filial.endCepFilial}</td>
                        <td>${filial.cnpjFilial}</td>
                       
                        <td class="actions">
                            <a class="btn btn-success btn-xs" href="../view/showFilial.jsp?idFilial=${filial.idFilial}">Visualizar</a>
                            <a class="btn btn-warning btn-xs" href="../view/editaFilial.jsp?idFilial=${filial.idFilial}">Editar</a>
                            <a class="btn btn-danger btn-xs"  href="../dropFilial?idFilial=${filial.idFilial}">Excluir</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
    </body>
</html>

</html>
