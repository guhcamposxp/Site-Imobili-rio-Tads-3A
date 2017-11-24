<%-- 
    Document   : editarCliente
    Created on : 02/11/2017, 20:37:42
    Author     : Felipe
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
        <title>Editar Cliente</title>
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
                    <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Components">
                        <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#opcoesImoveis" data-parent="#exampleAccordion">
                            <i class="fa fa-fw fa-home" aria-hidden="true"></i>
                            <span class="nav-link-text">Imóveis</span>
                        </a>
                        <ul class="sidenav-second-level collapse" id="opcoesImoveis">
                            <li>
                                <a class="fa fa-plus" aria-hidden="false" href="${pageContext.request.contextPath}/view/cadastrarImovel.jsp"> Cadastrar</a>
                            </li>
                            <li>
                                <a class="fa fa-search" aria-hidden="true" href="${pageContext.request.contextPath}/view/consultarImovel.jsp"> Consultar</a>
                            </li>
                            <li>
                                <a class="fa fa-wrench" aria-hidden="true" href="${pageContext.request.contextPath}/view/gerenciarImovel.jsp"> Gerenciar</a>
                            </li>
                        </ul>
                    </li>

                    <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Components">
                        <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#dropClientes" data-parent="#exampleAccordion">
                            <i class="fa fa-fw fa-user" aria-hidden="true"></i>
                            <span class="nav-link-text">Clientes</span>
                        </a>
                        <ul class="sidenav-second-level collapse" id="dropClientes">
                            <li>
                                <a class="fa fa-plus" aria-hidden="false" href="${pageContext.request.contextPath}/view/cadastrarCliente.jsp"> Cadastrar</a>
                            </li>
                            <li>
                                <a class="fa fa-search" aria-hidden="true" href="${pageContext.request.contextPath}/view/listarCliente.jsp"> Consultar</a>
                            </li>
                            <li>
                                <a class="fa fa-wrench" aria-hidden="true" href="${pageContext.request.contextPath}/view/gerenciarCliente.jsp"> Gerenciar</a>
                            </li>
                        </ul>
                    </li>

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
                            <li>
                                <a class="fa fa-wrench" aria-hidden="true" href="${pageContext.request.contextPath}/view/gerenciarImovel.jsp"> Gerenciar</a>
                            </li>
                        </ul>
                    </li>

                    <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Components">
                        <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#dropFiliais" data-parent="#exampleAccordion">
                            <i class="fa fa-fw fa-building" aria-hidden="true"></i>
                            <span class="nav-link-text">Filiais</span>
                        </a>
                        <ul class="sidenav-second-level collapse" id="dropFiliais">
                            <li>
                                <a class="fa fa-plus" aria-hidden="false" href="${pageContext.request.contextPath}/view/cadastarFilial.jsp"> Cadastrar</a>
                            </li>
                            <li>
                                <a class="fa fa-search" aria-hidden="true" href="${pageContext.request.contextPath}/view/consultarFilial.jsp"> Consultar</a>
                            </li>
                            <li>
                                <a class="fa fa-wrench" aria-hidden="true" href="${pageContext.request.contextPath}/view/gerenciarFilial.jsp"> Gerenciar</a>
                            </li>
                        </ul>
                    </li>

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
                    <div class="card-header cardRegistro">Editar Cliente</div>
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
                                                <label for="">Nome</label>
                                                <input type="text" name="clienteNome" value="${lista.clienteNome}"/>
                                            </div>
                                            <div class="col-md-6">
                                                <label for="">Sobrenome</label>
                                                <input type="text" name="clienteSobrenome" value="${lista.clienteSobrenome}" />
                                            </div>
                                            <div class="col-md-6">
                                                <label for="">CPF</label>
                                                <input type="text" name="clienteCpf" value="${lista.clienteCpf}" />
                                            </div>
                                            <div class="col-md-6">
                                                <label for="">RG</label>
                                                <input type="text" name="clienteRg" value="${lista.clienteRg}" />
                                            </div>
                                            <div class="col-md-6">
                                                <label for="">Sexo</label>
                                                <input type="text" name="clienteSexo" value="${lista.clienteSexo}" />
                                            </div>
                                            <div class="col-md-6">
                                                <label for="">Data de Nascimento</label>
                                                <input type="text" name="clienteNascimento" value="${lista.clienteNascimento}" />
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
                                                <input type="text" name="clienteCelular" value="${lista.clienteCelular}" />
                                            </div>
                                            <div class="col-md-6">
                                                <label>Fixo</label>
                                                <input type="text" name="clienteTelefone" value="${lista.clienteTelefone}" />
                                            </div>
                                            <div class="col-md-12">
                                                <label>Email</label>
                                                <input type="text" name="clienteEmail" value="${lista.clienteEmail}" />
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
                                        <input type="text" name="clienteRua" value="${lista.clienteRua}" />
                                    </div>
                                    <div class="col-md-2">
                                        <label for="">Número</label>
                                        <input type="text" name="clienteNumero" value="${lista.clienteNumero}" />
                                    </div>
                                    <div class="col-md-3">
                                        <label for="">Complemento</label>
                                        <input type="text" name="clienteComplemento" value="${lista.clienteComplemento}" />
                                    </div>
                                    <div class="col-md-2">
                                        <label for="">CEP</label>
                                        <input type="text" name="clienteCep" value="${lista.clienteCep}" />
                                    </div>
                                    <div class="col-md-5">
                                        <label for="">Bairro</label>
                                        <input type="text" name="clienteBairro" value="${lista.clienteBairro}" />
                                    </div>
                                    <div class="col-md-5">
                                        <label for="">Cidade</label>
                                        <input type="text" name="clienteCidade" value="${lista.clienteCidade}" />
                                    </div>
                                    <div class="col-md-5">
                                        <label for="">Estado</label>
                                        <input type="text" name="clienteEstado" value="${lista.clienteEstado}" />
                                    </div>
                                </div>
                            </div>
                            <button type="submit" class="btn btn-primary">Salvar</button>
                        </form>
                        
                        
                        <hr/>
                    </div>
                </div>
            </div>

        </div>     
    </body>
</html>
