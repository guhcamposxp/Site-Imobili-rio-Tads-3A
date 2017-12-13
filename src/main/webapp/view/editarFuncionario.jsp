
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

        <title>Edição de Funcionario</title>
        <link href="${pageContext.request.contextPath}/all/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="${pageContext.request.contextPath}/all/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <link href="${pageContext.request.contextPath}/all/vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet" type="text/css"/>
        <link href="${pageContext.request.contextPath}/css/sb-admin.css" rel="stylesheet" type="text/css"/>
        <link href="${pageContext.request.contextPath}/css/custom.css" rel="stylesheet" type="text/css"/>
        <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">	
    </head>
    <body>

        <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
            <a class="navbar-brand" href="${pageContext.request.contextPath}/view/BoasVindas.jsp">Away - Sistema Imobiliário</a>
            <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav navbar-sidenav" id="exampleAccordion">
                    <c:if test="${sessionScope.permissaoFuncionario == 'Admin' || sessionScope.permissaoFuncionario == 'BackOffice' || sessionScope.permissaoFuncionario == 'Corretor'}" >
                    <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Components">
                        <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#opcoesImoveis" data-parent="#exampleAccordion">
                            <i class="fa fa-fw fa-home" aria-hidden="true"></i>
                            <span class="nav-link-text">Imóveis</span>
                        </a>
                        <ul class="sidenav-second-level collapse" id="opcoesImoveis">
                            <c:if test="${sessionScope.permissaoFuncionario == 'Admin' || sessionScope.permissaoFuncionario == 'BackOffice'}">
                            <li>
                                <a aria-hidden="false" href="${pageContext.request.contextPath}/view/cadastrarImovel.jsp"> ↳ Cadastrar</a>
                            </li>
                            </c:if>
                            
                            <li>
                                <a aria-hidden="true" href="${pageContext.request.contextPath}/view/listarImovel.jsp"> ↳ Consultar</a>
                            </li>
                            
                        </ul>
                    </li>
                    </c:if>
                    
                    <c:if test="${sessionScope.permissaoFuncionario == 'Admin' || sessionScope.permissaoFuncionario == 'BackOffice' || sessionScope.permissaoFuncionario == 'Corretor'}">
                    <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Components">
                        <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#dropClientes" data-parent="#exampleAccordion">
                            <i class="fa fa-fw fa-user" aria-hidden="true"></i>
                            <span class="nav-link-text">Clientes</span>
                        </a>
                        <ul class="sidenav-second-level collapse" id="dropClientes">
                            <c:if test="${sessionScope.permissaoFuncionario == 'Admin' || sessionScope.permissaoFuncionario == 'BackOffice'}">
                            <li>
                                <a aria-hidden="false" href="${pageContext.request.contextPath}/view/cadastrarCliente.jsp"> ↳ Cadastrar</a>
                            </li>
                            </c:if>
                            <li>
                                <a aria-hidden="true" href="${pageContext.request.contextPath}/view/listarCliente.jsp"> ↳ Consultar</a>
                            </li>
                        </ul>
                    </li>
                    </c:if>
                    
                    <c:if test="${sessionScope.permissaoFuncionario == 'Admin' || sessionScope.permissaoFuncionario == 'BackOffice'}">
                    <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Components">
                        <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#dropFuncionario" data-parent="#exampleAccordion">
                            <i class="fa fa-fw fa-users" aria-hidden="true"></i>
                            <span class="nav-link-text">Funcionários</span>
                        </a>
                        <ul class="sidenav-second-level collapse" id="dropFuncionario">
                            <c:if test="${sessionScope.permissaoFuncionario == 'Admin' || sessionScope.permissaoFuncionario == 'BackOffice'}">
                            <li>
                                <a aria-hidden="false" href="${pageContext.request.contextPath}/view/cadastrarFuncionario.jsp"> ↳ Cadastrar</a>
                            </li>
                            </c:if>
                            <li>
                                <a aria-hidden="true" href="${pageContext.request.contextPath}/view/listarFuncionario.jsp"> ↳ Consultar</a>
                            </li>
                        </ul>
                    </li>
                    </c:if>

                    <c:if test="${sessionScope.permissaoFuncionario == 'Admin' || sessionScope.permissaoFuncionario == 'BackOffice'}">
                    <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Components">
                        <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#dropFiliais" data-parent="#exampleAccordion">
                            <i class="fa fa-fw fa-building" aria-hidden="true"></i>
                            <span class="nav-link-text">Filiais</span>
                        </a>
                        <ul class="sidenav-second-level collapse" id="dropFiliais">
                            <c:if test="${sessionScope.permissaoFuncionario == 'Admin' || sessionScope.permissaoFuncionario == 'BackOffice'}">
                            <li>
                                <a aria-hidden="false" href="${pageContext.request.contextPath}/view/cadastrarFilial.jsp"> ↳ Cadastrar</a>
                            </li>
                            </c:if>
                            <li>
                                <a aria-hidden="true" href="${pageContext.request.contextPath}/view/listarFilial.jsp"> ↳ Consultar</a>
                            </li>
                        </ul>
                    </li>
                    </c:if>

                    <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Components">
                        <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#dropContratos" data-parent="#exampleAccordion">
                            <i class="fa fa-fw fa-files-o" aria-hidden="true"></i>
                            <span class="nav-link-text">Contratos</span>
                        </a>
                        <ul class="sidenav-second-level collapse" id="dropContratos">
                            <li>
                                <a aria-hidden="false" href="${pageContext.request.contextPath}/view/listarContratos.jsp"> ↳ Contratos Realizados</a>
                            </li>

                        </ul>
                    </li> 
                    


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

            <div class="container">
                <div class="card card-register mx-auto mt-5">
                    <div class="card-header cardRegistro">Registar Novo Funcionário</div>
                    <div class="card-body">
                        <form name="formFuncionario" id="formularioCadastro" action="${pageContext.request.contextPath}/insertFuncionario" method="post">
                            <div class="col-lg-12">
                                <div class="row">
                                    <div class="form-group col-lg-6">
                                        <h5>
                                            Dados Básicos
                                        </h5>
                                        <hr/>
                                        <div class="form-row">
                                            <div class="col-md-6">
                                                <label for="">Nome</label>
                                                <input class="form-control" type="text" name="funcionarioNome" value="${lista.funcionarioNome}"/>
                                                
                                            </div>
                                            <div class="col-md-6">
                                                <label for="">Sobrenome</label>
                                                <input class="form-control" type="text" name="funcionarioSobrenome" value="${lista.funcionarioSobrenome}" />
                                            </div>
                                            <div class="col-md-6">
                                                <label for="">CPF</label>
                                                <input class="form-control" type="text" name="funcionarioCpf" value="${lista.funcionarioCpf}" />
                                            </div>
                                            <div class="col-md-6">
                                                <label for="">RG</label>
                                                <input class="form-control" type="text" name="funcionarioRg" value="${lista.funcionarioRg}" />
                                            </div>
                                            <div class="col-md-6">
                                                <label for="">Sexo</label>
                                                <input class="form-control" type="text" name="funcionarioSexo" value="${lista.funcionarioSexo}" />
                                            </div>
                                            <div class="col-md-6">
                                                <label for="">Data de Nascimento</label>
                                                <input class="form-control maskDataNascimento" name="funcionarioNascimento" id="funcionarioNascimento" type="text" aria-describedby="nameHelp" value="${lista.funcionarioNascimento}">
                                            </div>

                                        </div>
                                    </div>
                                    <div class="form-group col-lg-6">
                                        <h5>
                                            Dados Internos
                                        </h5>
                                        <hr/>
                                        <div class="form-row">
                                            <div class="col-md-6">
                                                <label for=" ">Cargo</label>
                                                <input class="form-control" type="text" name="funcionarioCargo" value="${lista.funcionarioCargo}"/>
                                            </div>
                                            <div class="col-md-6">
                                                <label for="">Email</label>
                                                <input class="form-control" name="funcionarioEmail" id="funcionarioEmail" type="text" value="${lista.funcionarioEmail}">
                                            </div>
                                            <div class="col-md-6">
                                                <label for="">Senha</label>
                                                <input class="form-control" name="funcionarioSenha" id="funcionarioSenha" type="password" value="${lista.funcionarioSenha}">
                                            </div>
                                            <div class="col-md-6">
                                                <label for="">ID</label>
                                                <input class="form-control" type="text" name="FuncionarioId" value="${lista.funcionarioId}"/>
                                            </div>
                                            <div class="col-md-6">
                                                <label for="">Filial</label>
                                                <input class="form-control" type="text" name="FuncionarioFilial" value="${lista.funcionarioFilial}"/>
                                            </div>
                                            <div class="col-md-6">
                                                <label for="">Permissão</label>
                                                <input class="form-control" type="text" name="funcionarioPermissao" value="${lista.funcionarioPermissao}"/>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        <button type="submit" class="btn btn-primary">Cadastrar</button>
                        <a class="btn btn-warning limpar" href="">Limpar</a>
                        <a href="#" class="btn btn-primary">Cancelar</a>
                        </form>
                        <hr/>
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
                        <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancelar</button>
                        <a class="btn btn-primary" href="login.html">Sair</a>
                    </div>
                </div>
            </div>
        </div>

        <script src="../all/vendor/jquery/jquery.min.js" type="text/javascript"></script>
        <script src="../all/vendor/popper/popper.min.js" type="text/javascript"></script>
        <script src="../all/vendor/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="../all/vendor/jquery-easing/jquery.easing.min.js" type="text/javascript"></script>
        <script src="../all/vendor/chart.js/Chart.min.js" type="text/javascript"></script>
        <script src="../all/vendor/datatables/jquery.dataTables.js" type="text/javascript"></script>
        <script src="../all/vendor/datatables/dataTables.bootstrap4.js" type="text/javascript"></script>
        <script src="../js/sb-admin.min.js" type="text/javascript"></script>
        <script src="../js/sb-admin-datatables.min.js" type="text/javascript"></script>
        <script src="../js/sb-admin-charts.min.js" type="text/javascript"></script>
        <script src="../js/jquery.mask.js" type="text/javascript"></script>
        <script src="../js/masks.js" type="text/javascript"></script>
    </body>
</html>