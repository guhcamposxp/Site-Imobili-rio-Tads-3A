
<%@page import="Data.ImovelData"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.ImovelDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

    <head>
        <jsp:include page="/getImovel" />
        <meta charset="utf-8"/>
        <meta content="width=device-width, initial-scale=1, maximum-scale=1" name="viewport">
        <link href="../css/style.css" rel="stylesheet">	
        <c:import url="Menu.jsp"></c:import>
            <title>Listagem de Imóveis</title>
    </head>
        <div class="container">
            <legend>Imóveis Cadastrados</legend>          
            <table class="table table-striped table-hover">
                <thead>
                    <tr>
                        <th>Cidade</th>
                        <th>Bairro</th>
                        <th>Rua</th>
                        <th>Número</th>
                        <th>Cep</th>
                        <th class="actions">Ações</th>
                    </tr>
                </thead>
                <tr>    

                    <c:forEach var="imovel" items="${lista}">

                        <td>${imovel.endCidImovel}</td>
                        <td>${imovel.endBairroImovel}</td>
                        <td>${imovel.endRuaImovel}</td>
                        <td>${imovel.endNumImovel}</td>
                        <td>${imovel.endCepImovel}</td>
                       
                        <td class="actions">
                            <a class="btn btn-success btn-xs" href="../view/showCliente.jsp?idCliente=${imovel.idImovel}">Visualizar</a>
                            <a class="btn btn-warning btn-xs" href="../view/editaCliente.jsp?idCliente=${imovel.idImovel}">Editar</a>
                            <a class="btn btn-danger btn-xs"  href="../dropCliente?idCliente=${imovel.idImovel}">Excluir</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
    </body>
</html>

</html>
