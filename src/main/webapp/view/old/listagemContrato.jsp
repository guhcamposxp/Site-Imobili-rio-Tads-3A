
<%@page import="Data.FuncionarioData"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.FuncionarioDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

    <head>
        <jsp:include page="/getContrato" />
        <link rel="stylesheet" href="styleCadastro.css">
        <script src="jquery.js" type="text/javascript"></script>
        <c:import url="Menu.jsp"></c:import> 
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

            <title>Listagem de Contratos</title>
        </head>
        <body>



            <div class="container">
                <h2>Contratos Feitos</h2>           
                <table class="table">
                    <thead>
                        <tr>
                            <th>Comprador</th>
                            <th>Corretor</th>
                            <th>Filial</th>
                            <th>Data</th>
                            <th>Desc. Imóvel</th>
                            <th>Valor</th>
                            <th class="actions">Ações</th>
                        </tr>
                    </thead>
                    <tr>    

                    <c:forEach var="cliente" items="${lista}">
                        <td>${cliente.comprador}</td>
                        <td>${cliente.corretor}</td>
                        <td>${cliente.filial}</td>
                        <td>${cliente.dataContrato}</td>
                        <td>${cliente.imovel}</td>
                        <td>${cliente.valorContrato}</td>



                        <td class="actions">
                            <a class="btn btn-success btn-xs" href="../view/showContrato.jsp?idContrato=">Visualizar</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>

    </body>
</html>

</html>
