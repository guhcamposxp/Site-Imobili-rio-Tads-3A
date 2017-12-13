<%-- 
    Document   : readOnlyCliente
    Created on : 11/12/2017, 23:52:38
    Author     : Felipe Oliveira
--%>

<%@page import="Data.ClienteData"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.ClienteDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="/getCliente" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Visualizar Cliente</title>
        <link href="${pageContext.request.contextPath}/all/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="${pageContext.request.contextPath}/all/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
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
                    
                    <!--
                    <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Components">
                        <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#dropContratos" data-parent="#exampleAccordion">
                            <i class="fa fa-fw fa-files-o" aria-hidden="true"></i>
                            <span class="nav-link-text">Contratos</span>
                        </a>
                        <ul class="sidenav-second-level collapse" id="dropContratos">
                            <li>
                                <a aria-hidden="false" href=""> ↳ Contrato de Venda</a>
                            </li>
                            <li>
                                <a aria-hidden="true" href=""> ↳ Contrato de Aluguel</a>
                            </li>
                        </ul>
                    </li> !-->
                    


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
                    <div class="card-header cardRegistro">Visualizar Cliente</div>
                    <div class="card-body">
                        <form name="formCliente" id="formularioCadastro" class="well form-horizontal" action="${pageContext.request.contextPath}/insertCliente" method="post">
                            <div class="col-lg-12">
                                <div class="row">
                                    <div class="form-group col-lg-6">
                                        <h5>
                                            Dados Básicos
                                        </h5>
                                        <hr/>
                                        <div class="form-row">
                                            <div class="col-md-6">
                                                <label for="">ID</label>
                                                <input class="form-control" name="clienteId" id="clienteId" type="text" readonly="true" value="${lista.clienteId}">

                                            </div>
                                            <div class="col-md-6">
                                                <label for="">Nome</label>
                                                <input class="form-control" name="clienteNome" id="clienteNome" readonly="true" type="text" value="${lista.clienteNome}">

                                            </div>
                                            <div class="col-md-6">
                                                <label for="">Sobrenome</label>
                                                <input class="form-control" name="clienteSobrenome" id="clienteSobrenome" readonly="true" type="text" value="${lista.clienteSobrenome}">
                                            </div>
                                            <div class="col-md-6">
                                                <label for="">CPF</label>
                                                <input class="form-control maskCPF" name="clienteCpf" id="clienteCpf" readonly="true" type="text" value="${lista.clienteCpf}" placeholder="000.000.000-00">
                                            </div>
                                            <div class="col-md-6">
                                                <label for="">RG</label>
                                                <input class="form-control maskRG" name="clienteRg" id="clienteRg" readonly="true" type="text" value="${lista.clienteRg}" placeholder="00.000.000-0">
                                            </div>
                                            <div class="col-md-6">
                                                <label for="">Sexo</label>
                                                <input class="form-control maskRG" name="clienteSexo" id="clienteSexo" readonly="true" type="text" value="${lista.clienteSexo}">
                                            </div>
                                            <div class="col-md-6">
                                                <label for="">Data de Nascimento</label>
                                                <input class="form-control maskDataNascimento" name="clienteNascimento" readonly="true" id="clienteNascimento" type="text" value="${lista.clienteNascimento}">
                                            </div>

                                        </div>
                                    </div>
                                    <div class="form-group col-lg-6">
                                        <h5>
                                            Contato
                                        </h5>
                                        <hr/>
                                        <div class="form-row">
                                            <div class="col-md-6">
                                                <label for=" ">Celular</label>
                                                <input class="form-control maskTelCel" name="clienteCelular" maxlength="14" readonly="true" id="clienteCel" type="text" value="${lista.clienteCelular}" placeholder="(00) 90000-0000">
                                            </div>
                                            <div class="col-md-6">
                                                <label>Fixo</label>
                                                <input class="form-control maskTelFixo" name="clienteTelefone" id="exampleInputEmail1" readonly="true" type="text" value="${lista.clienteTelefone}" placeholder="(00) 0000-0000">
                                            </div>
                                            <div class="col-md-12">
                                                <label>Email</label>
                                                <input class="form-control" id="clienteEmail" name="clienteEmail" type="email" readonly="true" value="${lista.clienteEmail}" placeholder="Endereço de email">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group col-lg-12 divContato" >
                                <h5>
                                    Endereço
                                </h5>
                                <hr/>
                                <div class="form-row">
                                    <div class="col-md-8">
                                        <label for="">Rua</label>
                                        <input class="form-control" name="clienteRua" readonly="true" value="${lista.clienteRua}" id="clienteRua" type="text">
                                    </div>
                                    <div class="col-md-2">
                                        <label for="">Número</label>
                                        <input class="form-control" name="clienteNumero" readonly="true" value="${lista.clienteNumero}" id="clienteNumero" type="text">
                                    </div>
                                    <div class="col-md-3">
                                        <label for="">Complemento</label>
                                        <input class="form-control" name="clienteComplemento" readonly="true" value="${lista.clienteComplemento}" id="clienteComplemento" type="text" >
                                    </div>
                                    <div class="col-md-2">
                                        <label for="">CEP</label>
                                        <input class="form-control maskCEP" name="clienteCep" readonly="true" id="clienteCep" value="${lista.clienteCep}" type="text" placeholder="00000-000">
                                    </div>
                                    <div class="col-md-5">
                                        <label for="">Bairro</label>
                                        <input class="form-control" name="clienteBairro" readonly="true" id="clienteBairro" value="${lista.clienteBairro}" type="text"  >
                                    </div>
                                    <div class="col-md-5">
                                        <label for="">Cidade</label>
                                        <input class="form-control" name="clienteCidade" readonly="true" id="clienteCidade" value="${lista.clienteCidade}" type="text" >
                                    </div>
                                </div>
                            </div>
                            <button type="submit" href="${pageContext.request.contextPath}/view/listarCliente.jsp" class="btn btn-primary">Voltar</button>
                        </form>


                        <hr/>
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
