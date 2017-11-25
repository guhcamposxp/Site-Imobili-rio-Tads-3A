<%-- 
    Document   : editarCliente
    Created on : 02/11/2017, 20:37:42
    Author     : Felipe
--%>
<%@page import="Data.ImovelData"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.ImovelDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="/getImovel" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Imóvel</title>
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

            <div class="container">
                <div class="card card-register mx-auto mt-5">
                    <div class="card-header cardRegistro">Editar Imóvel</div>
                    <div class="card-body">
                        <form name="formImovel" id="formularioCadastro" action="${pageContext.request.contextPath}/insertImovel" method="post">
                            <div class="form-group col-lg-12 divContato ">
                                <h5>
                                    Proprietário
                                </h5>
                                <hr/>
                                <div class="form-row">
                                    <div class="col-md-6">
                                        <label for="">CPF</label>
                                        <input class="form-control campos" name="proprietarioCpf" id="proprietarioCpf" type="text" placeholder="000.000.000-00" value="${lista.proprietarioCpf}">
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
                                        <input class="form-control campos" name="imovelRua" id="imovelRua" type="text" value="${lista.imovelRua}">
                                    </div>
                                    <div class="col-md-2">
                                        <label for="">Número</label>
                                        <input class="form-control campos" name="imovelNumero" id="imovelNumero" type="text" value="${lista.imovelNumero}">
                                    </div>
                                    <div class="col-md-3">
                                        <label for="">Complemento</label>
                                        <input class="form-control campos" name="imovelComplemento" id="imovelComplemento" type="text" value="${lista.imovelComplemento}">
                                    </div>
                                    <div class="col-md-2">
                                        <label for="">CEP</label>
                                        <input class="form-control maskCEP campos" name="imovelCep" id="imovelCep" type="text" placeholder="00000-000" value="${lista.imovelCep}">
                                    </div>
                                    <div class="col-md-5">
                                        <label for="">Bairro</label>
                                        <input class="form-control campos" name="imovelBairro" id="imovelBairro" type="text" value="${lista.imovelBairro}">
                                    </div>
                                    <div class="col-md-5">
                                        <label for="">Cidade</label>
                                        <input class="form-control campos" name="imovelCidade" id="imovelCidade" type="text" value="${lista.imovelCidade}">
                                    </div>
                                    <div class="col-md-5">
                                        <label>Estado</label>
                                        <input class="form-control campos" name="imovelEstado" id="imovelEstado" type="text" value="${lista.imovelEstado}">
                                    </div>
                                </div>
                            </div>

                            <div class="form-group col-lg-12 divContato" >
                                <h5>
                                    Dados do Imóvel
                                </h5>
                                <hr/>
                                <div class="form-row">
                                    <div class="col-md-5">
                                        <label for="">Tipo de transação</label></br>
                                        <input class="form-control campos" name="imovelTipoTransacao" id="imovelTipoTransacao" type="text" value="${lista.imovelTipoTransacao}">
                                    </div>

                                    <div class="col-md-3">
                                        <label>Qtd. Vagas na Garagem</label>
                                        <input class="form-control campos" id="imovelVagasGaragem" name="imovelVagasGaragem" type="number" aria-describedby="emailHelp" value="${lista.imovelQtdVagasGaragem}">
                                    </div>
                                    <div class="col-md-2">
                                        <label>Qtd. Dormitórios</label>
                                        <input class="form-control maskCEP campos" name="imovelDormitorios" id="imovelDormitorios" type="number" value="${lista.imovelQtdDormitorios}">
                                    </div>
                                    <div class="col-md-5">
                                        <label>Tipo</label>
                                        <input class="form-control maskCEP campos" name="imovelTipo" id="imovelTipo" type="text" value="${lista.imovelTipo}">
                                    </div>
                                    <div class="col-md-5">
                                        <label>Metros²</label>
                                        <input class="form-control campos" name="imovelMetros" id="imovelMetros" type="number" value="${lista.imovelMetrosQuadrado}">
                                    </div>
                                    <div class="col-md-5">
                                        <label>Valor Venda</label>
                                        <input class="form-control campos" name="imovelVlrVenda" id="imovelVlrVenda" type="number" value="${lista.imovelVlrVenda}">
                                    </div>
                                    <div class="col-md-5">
                                        <label>Valor Aluguel</label>
                                        <input class="form-control campos" name="imovelVlrAluguel" id="imovelVlrAluguel" type="number" value="${lista.imovelVlrAluguel}">
                                    </div>
                                    <div class="col-md-10">
                                        <label>Descrição</label>
                                        <input class="form-control campos" name="imovelDescricao" id="imovelDescricao" value="${lista.imovelDescricao}">
                                    </div>
                                </div>
                            </div>
                            <button type="submit" class="btn btn-primary">Editar</button>
                        </form>
                        
                        
                        <hr/>
                    </div>
                </div>
            </div>

        </div>     
    </body>
</html>
