
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

        <title>Listagem de  Filiais</title>
        <link href="${pageContext.request.contextPath}/all/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="${pageContext.request.contextPath}/all/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <link href="${pageContext.request.contextPath}/all/vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet" type="text/css"/>
        <link href="${pageContext.request.contextPath}/css/sb-admin.css" rel="stylesheet" type="text/css"/>
        <link href="${pageContext.request.contextPath}/css/custom.css" rel="stylesheet" type="text/css"/>
        <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">	
    </head>
    <body class="fixed-nav sticky-footer" id="page-top">
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
            <a class="navbar-brand" href="${pageContext.request.contextPath}/view/BoasVindas.jsp">Away - Sistema Imobiliário</a>
            <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav navbar-sidenav" id="exampleAccordion">
                    <c:if test="${sessionScope.cargoFuncionario == 'Diretor' || sessionScope.cargoFuncionario == 'BackOffice' || sessionScope.cargoFuncionario == 'Corretor'}" >
                    <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Components">
                        <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#opcoesImoveis" data-parent="#exampleAccordion">
                            <i class="fa fa-fw fa-home" aria-hidden="true"></i>
                            <span class="nav-link-text">Imóveis</span>
                        </a>
                        <ul class="sidenav-second-level collapse" id="opcoesImoveis">
                            <c:if test="${sessionScope.cargoFuncionario == 'Diretor' && sessionScope.cargoFuncionario == 'BackOffice'}">
                            <li>
                                <a class="fa fa-plus" aria-hidden="false" href="${pageContext.request.contextPath}/view/cadastrarImovel.jsp"> Cadastrar</a>
                            </li>
                            </c:if>
                            
                            <li>
                                <a class="fa fa-search" aria-hidden="true" href="${pageContext.request.contextPath}/view/listarImovel.jsp"> Consultar</a>
                            </li>
                            
                        </ul>
                    </li>
                    </c:if>
                    
                    <c:if test="${sessionScope.cargoFuncionario == 'Diretor' || sessionScope.cargoFuncionario == 'BackOffice' || sessionScope.cargoFuncionario == 'Corretor'}" >
                    <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Components">
                        <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#dropClientes" data-parent="#exampleAccordion">
                            <i class="fa fa-fw fa-user" aria-hidden="true"></i>
                            <span class="nav-link-text">Clientes</span>
                        </a>
                        <ul class="sidenav-second-level collapse" id="dropClientes">
                            <c:if test="${sessionScope.cargoFuncionario == 'Diretor' || sessionScope.cargoFuncionario == 'BackOffice'}" >
                            <li>
                                <a class="fa fa-plus" aria-hidden="false" href="${pageContext.request.contextPath}/view/cadastrarCliente.jsp"> Cadastrar</a>
                            </li>
                            </c:if>
                            <li>
                                <a class="fa fa-search" aria-hidden="true" href="${pageContext.request.contextPath}/view/listarCliente.jsp"> Consultar</a>
                            </li>
                        </ul>
                    </li>
                    </c:if>
                    
                    <c:if test="${sessionScope.cargoFuncionario == 'Diretor' || sessionScope.cargoFuncionario == 'TI'}" >
                    <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Components">
                        <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#dropFuncionario" data-parent="#exampleAccordion">
                            <i class="fa fa-fw fa-users" aria-hidden="true"></i>
                            <span class="nav-link-text">Funcionários</span>
                        </a>
                        <ul class="sidenav-second-level collapse" id="dropFuncionario">
                            <li>
                                <a class="fa fa-plus" aria-hidden="false" href="${pageContext.request.contextPath}/view/cadastrarFuncionario.jsp"> Cadastrar</a>
                            </li>
                            <li>
                                <a class="fa fa-search" aria-hidden="true" href="${pageContext.request.contextPath}/view/consultarFuncionario.jsp"> Consultar</a>
                            </li>
                        </ul>
                    </li
                    </c:if>

                    <c:if test="${sessionScope.cargoFuncionario == 'Diretor' || sessionScope.cargoFuncionario == 'TI'}" >
                    <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Components">
                        <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#dropFiliais" data-parent="#exampleAccordion">
                            <i class="fa fa-fw fa-building" aria-hidden="true"></i>
                            <span class="nav-link-text">Filiais</span>
                        </a>
                        <ul class="sidenav-second-level collapse" id="dropFiliais">
                            <li>
                                <a class="fa fa-plus" aria-hidden="false" href="${pageContext.request.contextPath}/view/cadastrarFilial.jsp"> Cadastrar</a>
                            </li>
                            <li>
                                <a class="fa fa-search" aria-hidden="true" href="${pageContext.request.contextPath}/view/listarFilial.jsp"> Consultar</a>
                            </li>
                        </ul>
                    </li>
                    </c:if>
                    
                    <c:if test="${sessionScope.cargoFuncionario == 'Diretor' || sessionScope.cargoFuncionario == 'Corretor'}" >
                    <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Components">
                        <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#dropContratos" data-parent="#exampleAccordion">
                            <i class="fa fa-fw fa-files-o" aria-hidden="true"></i>
                            <span class="nav-link-text">Contratos</span>
                        </a>
                        <ul class="sidenav-second-level collapse" id="dropContratos">
                            <li>
                                <a class="fa fa-usd" aria-hidden="false" href=""> Contrato de Venda</a>
                            </li>
                            <li>
                                <a class="fa fa-file-o" aria-hidden="true" href=""> Contrato de Aluguel</a>
                            </li>
                        </ul>
                    </li>
                    </c:if>


                </ul>
                <ul class="navbar-nav sidenav-toggler">
                    <li class="nav-item">
                        <a class="nav-link text-center" id="sidenavToggler">
                            <i class="fa fa-fw fa-angle-left"></i>
                        </a>
                    </li>
                </ul>
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link" data-toggle="modal" data-target="#exampleModal">
                            <i class="fa fa-fw fa-sign-out"></i>Sair</a>
                    </li>
                </ul>
            </div>
        </nav>

        <div class="content-wrapper">
            <div class="container-fluid">

                <div class="card mb-3">
                    <div class="card-header">
                        <i class="fa fa-table"></i>  Filial Cadastrados </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                <thead>
                                    <tr>
                                        <th>Nome</th>
                                        <th>CNPJ</th>
                                        <th>Estado</th>
                                        <th>Cidade</th>
                                        <th>Rua</th>
                                        <th class="actions">Ações</th>
                                    </tr>
                                </thead>
                                <tbody>


                                    <c:forEach var="filial" items="${lista}">
                                        <tr>
                                            <td>${filial.filialNome}</td>
                                            <td>${filial.filialCnpj}</td>
                                            <td>${filial.filialEstado}</td>
                                            <td>${filial.filialCidade}</td>
                                            <td>${filial.filialRua}</td>

                                            <td class="actions">
                                                <a class="btn btn-success btn-xs" href="../view/showFilial.jsp?id Filial=${filial.filialId}">Visualizar</a>
                                                <a class="btn btn-warning btn-xs" href="../view/editarFilial.jsp?filialId=${filial.filialId}">Editar</a>
                                                <a class="btn btn-danger btn-xs"  href="../dropFilial?filialId=${filial.filialId}">Excluir</a>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <footer class="sticky-footer">
            <div class="container">
                <div class="text-center">
                    <small>© Copyright 2017 Away</small>
                </div>
            </div>
        </footer>
        <!-- Scroll to Top Button-->
        <a class="scroll-to-top rounded" href="#page-top">
            <i class="fa fa-angle-up"></i>
        </a>
        <!-- Logout Modal-->
        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Tem certeza que deseja sair?</h5>
                        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">×</span>
                        </button>
                    </div>
                    <div class="modal-body">Clique em "Sair" abaixo se você deseja realmente sair.</div>
                    <div class="modal-footer">

                        <!--<a class="btn btn-primary" href="login.html">Sair</a>-->
                        <form action="${pageContext.request.contextPath}/logout" method="post">
                            <input class="btn btn-primary" type="submit" value="Logout" />
                            <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancelar</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <script src="${pageContext.request.contextPath}/all/vendor/jquery/jquery.min.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/all/vendor/popper/popper.min.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/all/vendor/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/all/vendor/jquery-easing/jquery.easing.min.js" type="text/javascript"></script>
        <!--<script src="${pageContext.request.contextPath}/all/vendor/chart.js/Chart.min.js" type="text/javascript"></script>-->
        <script src="${pageContext.request.contextPath}/all/vendor/datatables/jquery.dataTables.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/all/vendor/datatables/dataTables.bootstrap4.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/js/sb-admin.min.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/js/sb-admin-datatables.min.js" type="text/javascript"></script>
        <!--<script src="${pageContext.request.contextPath}/js/sb-admin-charts.min.js" type="text/javascript"></script>-->
        <script src="${pageContext.request.contextPath}/js/jquery.mask.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/js/masks.js" type="text/javascript"></script>

    </body>
</html>

</html>
