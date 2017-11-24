<%-- 
    Document   : editarFilial
    Created on : 02/11/2017, 20:37:42
    Author     : Felipe
--%>
<%@page import="Data.FilialData"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.FilialDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="/getFilial" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Filial</title>
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
                                <a class="fa fa-search" aria-hidden="true" href="${pageContext.request.contextPath}/view/listarImovel.jsp"> Consultar</a>
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
                                <a class="fa fa-plus" aria-hidden="false" href="${pageContext.request.contextPath}/view/cadastrarFilial.jsp"> Cadastrar</a>
                            </li>
                            <li>
                                <a class="fa fa-search" aria-hidden="true" href="${pageContext.request.contextPath}/view/listarFilial.jsp"> Consultar</a>
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
                    <div class="card-header cardRegistro">Editar Filial</div>
                    <div class="card-body">
                        <form name="formFilial" id="formularioCadastro" class="well form-horizontal" action="${pageContext.request.contextPath}/insertFilial" method="post">
                            <div class="col-lg-12">
                                
                                <div class="form-row">
                                    <div class="col-md-8">
                                        <label for="">Nome</label>
                                        <input class="form-control" name="filialNome" id="filialNome" type="text" value="${lista.filialNome}">
                                    </div>
                                    <div class="col-md-2">
                                        <label for="">CNPJ</label>
                                        <input class="form-control maskCNPJ" name="filialCnpj" id="filialCnpj" type="text" aria-describedby="nameHelp" placeholder="00.000.000/0000-00" value="${lista.filialCnpj}">
                                    </div>
                                    <div class="col-md-8">
                                        <label for="">Rua</label>
                                        <input class="form-control" name="filialRua" id="filialRua" type="text" value="${lista.filialRua}" >
                                    </div>
                                    <div class="col-md-2">
                                        <label for="">Número</label>
                                        <input class="form-control" name="filialNum" id="filialNum" type="text" value="${lista.filialNum}">
                                    </div>
                                    <div class="col-md-3">
                                        <label for="">Cep</label>
                                        <input class="form-control maskCEP" name="filialCep" id="filialCep" type="text" placeholder="00000-000" value="${lista.filialCep}">
                                    </div>
                                    
                                    <div class="col-md-5">
                                        <label for="">Bairro</label>
                                        <input class="form-control" name="filialBairro" id="filialBairro" type="text" value="${lista.filialBairro}">
                                    </div>
                                    <div class="col-md-5">
                                        <label for="">Cidade</label>
                                        <input class="form-control" name="filialCidade" id="filialCidade" type="text" value="${lista.filialCidade}">
                                    </div>
                                    <div class="col-md-5">
                                        <label for="">Estado</label>
                                        <select class="form-control" name="filialEstado" id="filialEstado" value="${lista.filialEstado}">
                                            <option value="null">Selecione</option>
                                            <option value="AC">Acre</option>
                                            <option value="AL">Alagoas</option>
                                            <option value="">Amapá</option>
                                            <option value="">Amazonas</option>
                                            <option value="">Bahia</option>
                                            <option value="">Ceará</option>
                                            <option value="">Distrito Federal</option>
                                            <option value="">Espírito Santo</option>
                                            <option value="">Goiás</option>
                                            <option value="">Maranhão</option>
                                            <option value="">Mato Grosso</option>
                                            <option value="">Mato Grosso do Sul</option>
                                            <option value="">Minas Gerais</option>
                                            <option value="">Pará</option>
                                            <option value="">Paraíba</option>
                                            <option value="">Paraná</option>
                                            <option value="">Pernambuco</option>
                                            <option value="">Piauí</option>
                                            <option value="">Rio de Janeiro</option>
                                            <option value="">Rio Grande do Norte</option>
                                            <option value="">Rio Grande do Sul</option>
                                            <option value="">Rondônia</option>
                                            <option value="">Roraima</option>
                                            <option value="">Santa Catarina</option>
                                            <option value="">São Paulo</option>
                                            <option value="">Sergipe</option>
                                            <option value="">Tocantins</option>
                                        </select>
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
