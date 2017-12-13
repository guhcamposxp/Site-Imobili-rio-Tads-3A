<%-- 
    Document   : readOnlyContrato
    Created on : 13/12/2017, 21:19:43
    Author     : Felipe Oliveira
--%>


<%@page import="Data.ContratoData"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.ContratoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="/getContrato" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Visualizar Contrato</title>
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
                    <div class="card-header cardRegistro">Visualizar Contrato</div>
                    <div class="card-body">
                            <div class="col-lg-12">
                                <div class="row">
                                    <div class="form-group col-lg-6">
                                        <h5>
                                            Dados do Cliente Interessado
                                        </h5>
                                        <hr/>
                                        <div class="form-row">
                                            <div class="col-md-6">
                                                <label for="">Nome</label>
                                                <input class="form-control" name="clienteNome" id="clienteNome" readonly="true" type="text" value="${lista.contratoClienteInteressadoNome}">

                                            </div>
                                            <div class="col-md-6">
                                                <label for="">Sobrenome</label>
                                                <input class="form-control" name="clienteSobrenome" id="clienteSobrenome" readonly="true" type="text" value="${lista.contratoClienteInteressadoSobrenome}">
                                            </div>
                                            <div class="col-md-6">
                                                <label for="">CPF</label>
                                                <input class="form-control" name="clienteCpf" id="clienteCpf" readonly="true" type="text" value="${lista.contratoClienteInteressadoCpf}" placeholder="000.000.000-00">
                                            </div>
                                            <div class="col-md-6">
                                                <label for="">RG</label>
                                                <input class="form-control" name="clienteRg" id="clienteRg" readonly="true" type="text" value="${lista.contratoClienteInteressadoRg}" placeholder="00.000.000-0">
                                            </div>
                                            <div class="col-md-6">
                                                <label for="">Email</label>
                                                <input class="form-control" name="clienteSexo" id="clienteSexo" readonly="true" type="text" value="${lista.contratoClienteInteressadoEmail}">
                                            </div>
                                            <div class="col-md-6">
                                                <label for="">Celular</label>
                                                <input class="form-control" name="clienteNascimento" readonly="true" id="clienteNascimento" type="text" value="${lista.contratoClienteInteressadoCelular}">
                                            </div>
                                            <div class="col-md-6">
                                                <label for="">Telefone</label>
                                                <input class="form-control" name="clienteNascimento" readonly="true" id="clienteNascimento" type="text" value="${lista.contratoClienteInteressadoTelefone}">
                                            </div>

                                        </div>
                                    </div>
                                    <div class="form-group col-lg-6">
                                        <h5>
                                            Dados do Cliente Negociador
                                        </h5>
                                        <hr/>
                                        <div class="form-row">
                                            <div class="col-md-6">
                                                <label for="">Nome</label>
                                                <input class="form-control" name="clienteNome" id="clienteNome" readonly="true" type="text" value="${lista.contratoClienteProprietarioNome}">

                                            </div>
                                            <div class="col-md-6">
                                                <label for="">Sobrenome</label>
                                                <input class="form-control" name="clienteSobrenome" id="clienteSobrenome" readonly="true" type="text" value="${lista.contratoClienteProprietarioSobrenome}">
                                            </div>
                                            <div class="col-md-6">
                                                <label for="">CPF</label>
                                                <input class="form-control" name="clienteCpf" id="clienteCpf" readonly="true" type="text" value="${lista.contratoClienteProprietarioCpf}" placeholder="000.000.000-00">
                                            </div>
                                            <div class="col-md-6">
                                                <label for="">RG</label>
                                                <input class="form-control" name="clienteRg" id="clienteRg" readonly="true" type="text" value="${lista.contratoClienteProprietarioRg}" placeholder="00.000.000-0">
                                            </div>
                                            <div class="col-md-6">
                                                <label for="">Email</label>
                                                <input class="form-control" name="clienteSexo" id="clienteSexo" readonly="true" type="text" value="${lista.contratoClienteProprietarioEmail}">
                                            </div>
                                            <div class="col-md-6">
                                                <label for="">Celular</label>
                                                <input class="form-control" name="clienteNascimento" readonly="true" id="clienteNascimento" type="text" value="${lista.contratoClienteProprietarioCelular}">
                                            </div>
                                            <div class="col-md-6">
                                                <label for="">Telefone</label>
                                                <input class="form-control" name="clienteNascimento" readonly="true" id="clienteNascimento" type="text" value="${lista.contratoClienteProprietarioTelefone}">
                                            </div>

                                        </div>
                                    </div>
                                            
                                            <div class="form-group col-lg-6">
                                        <h5>
                                            Dados do Corretor
                                        </h5>
                                        <hr/>
                                        <div class="form-row">
                                            <div class="col-md-6">
                                                <label for="">Nome</label>
                                                <input class="form-control" name="clienteNome" id="clienteNome" readonly="true" type="text" value="${lista.contratoFuncionarioNome}">

                                            </div>
                                            <div class="col-md-6">
                                                <label for="">Sobrenome</label>
                                                <input class="form-control" name="clienteSobrenome" id="clienteSobrenome" readonly="true" type="text" value="${lista.contratoFuncionarioSobrenome}">
                                            </div>
                                            <div class="col-md-6">
                                                <label for="">Email</label>
                                                <input class="form-control" name="clienteCpf" id="clienteCpf" readonly="true" type="text" value="${lista.contratoFuncionarioEmail}" placeholder="000.000.000-00">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group col-lg-12 divContato" >
                                <h5>
                                    Dados do Imóvel
                                </h5>
                                <hr/>
                                <div class="form-row">
                                    <div class="col-md-8">
                                        <label for="">Rua</label>
                                        <input class="form-control" name="clienteRua" readonly="true" value="${lista.contratoIMovelRua}" id="clienteRua" type="text">
                                    </div>
                                    <div class="col-md-2">
                                        <label for="">Número</label>
                                        <input class="form-control" name="clienteNumero" readonly="true" value="${lista.contratoIMovelNumero}" id="clienteNumero" type="text">
                                    </div>
                                    <div class="col-md-3">
                                        <label for="">Complemento</label>
                                        <input class="form-control" name="clienteComplemento" readonly="true" value="${lista.contratoIMovelComplemento}" id="clienteComplemento" type="text" >
                                    </div>
                                    <div class="col-md-2">
                                        <label for="">CEP</label>
                                        <input class="form-control maskCEP" name="clienteCep" readonly="true" id="clienteCep" value="${lista.contratoIMovelCep}" type="text" placeholder="00000-000">
                                    </div>
                                    <div class="col-md-5">
                                        <label for="">Bairro</label>
                                        <input class="form-control" name="clienteBairro" readonly="true" id="clienteBairro" value="${lista.contratoIMovelBairro}" type="text"  >
                                    </div>
                                    <div class="col-md-5">
                                        <label for="">Cidade</label>
                                        <input class="form-control" name="clienteCidade" readonly="true" id="clienteCidade" value="${lista.contratoIMovelCidade}" type="text" >
                                    </div>
                                    <div class="col-md-5">
                                        <label for="">Estado</label>
                                        <input class="form-control" name="clienteCidade" readonly="true" id="clienteCidade" value="${lista.contratoIMovelEstado}" type="text" >
                                    </div>
                                    <div class="col-md-5">
                                        <label for="">Tipo Transação</label>
                                        <input class="form-control" name="clienteCidade" readonly="true" id="clienteCidade" value="${lista.contratoIMovelTipoTransacao}" type="text" >
                                    </div>
                                    <div class="col-md-5">
                                        <label for="">Valor Venda</label>
                                        <input class="form-control" name="clienteCidade" readonly="true" id="clienteCidade" value="${lista.contratoIMovelVlrVenda}" type="text" >
                                    </div>
                                    <div class="col-md-5">
                                        <label for="">Valor Aluguel</label>
                                        <input class="form-control" name="clienteCidade" readonly="true" id="clienteCidade" value="${lista.contratoIMovelVlrAluguel}" type="text" >
                                    </div>
                                    <div class="col-md-5">
                                        <label for="">Vagas Garagem</label>
                                        <input class="form-control" name="clienteCidade" readonly="true" id="clienteCidade" value="${lista.contratoIMovelQtdVagasGaragem}" type="text" >
                                    </div>
                                    <div class="col-md-5">
                                        <label for="">Quartos</label>
                                        <input class="form-control" name="clienteCidade" readonly="true" id="clienteCidade" value="${lista.contratoIMovelQtdQuartos}" type="text" >
                                    </div>
                                    <div class="col-md-5">
                                        <label for="">Tipo de imóvel</label>
                                        <input class="form-control" name="clienteCidade" readonly="true" id="clienteCidade" value="${lista.contratoIMovelTipo}" type="text" >
                                    </div>
                                    <div class="col-md-5">
                                        <label for="">Metros Quadrado</label>
                                        <input class="form-control" name="clienteCidade" readonly="true" id="clienteCidade" value="${lista.contratoIMovelMetrosQuadrado}" type="text" >
                                    </div>
                                    <div class="col-md-8">
                                        <label for="">Descrição</label>
                                        <input class="form-control" name="clienteCidade" readonly="true" id="clienteCidade" value="${lista.contratoIMovelDescricao}" type="text" >
                                    </div>
                                </div>
                            </div>
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

