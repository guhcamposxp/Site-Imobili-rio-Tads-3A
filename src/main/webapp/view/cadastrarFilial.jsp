<%-- 
    Document   : cadastrarFilial
    Created on : 16/10/2017, 18:48:48
    Author     : felipe.joliveira
--%>

<%@page import="Data.FilialData"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.FilialDAO"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastrar Filial</title>
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
                    <div class="card-header cardRegistro">Registar Nova Filial</div>
                    <c:if test = "${retorno == 'criacao'}">
                        <div id="sucess" class="alert alert-success">
                            A Filial foi cadastrada com sucesso!
                        </div> 
                        <script>
                            var div = document.getElementById("#sucess");
                            var x = '${retorno}';
                            function explode() {
                                $("#sucess").hide();

                            }
                            setTimeout(explode, 5000);
                            x = "";
                        </script>
                    </c:if>
                    <div class="card-body">
                        <form name="formFilial" id="formularioCadastro" action="${pageContext.request.contextPath}/insertFilial" method="post">
                            <div class="form-group col-lg-12 divContato" >
                                <h5>
                                    Endereço
                                </h5>
                                <hr/>
                                <div class="form-row">
                                    <div class="col-md-8">
                                        <label for="">Nome</label>
                                        <input class="form-control" name="filialNome" id="filialNome" type="text" >
                                    </div>
                                    <div class="col-md-2">
                                        <label for="">CNPJ</label>
                                        <input class="form-control maskCNPJ" name="filialCnpj" id="filialCnpj" type="text" aria-describedby="nameHelp" placeholder="00.000.000/0000-00">
                                    </div>
                                    <div class="col-md-8">
                                        <label for="">Rua</label>
                                        <input class="form-control" name="filialRua" id="filialRua" type="text" >
                                    </div>
                                    <div class="col-md-2">
                                        <label for="">Número</label>
                                        <input class="form-control" name="filialNum" id="filialNum" type="text" >
                                    </div>
                                    <div class="col-md-3">
                                        <label for="">Cep</label>
                                        <input class="form-control maskCEP" name="filialCep" id="filialCep" type="text" placeholder="00000-000">
                                    </div>
                                    
                                    <div class="col-md-5">
                                        <label for="">Bairro</label>
                                        <input class="form-control" name="filialBairro" id="filialBairro" type="text" >
                                    </div>
                                    <div class="col-md-5">
                                        <label for="">Cidade</label>
                                        <input class="form-control" name="filialCidade" id="filialCidade" type="text" >
                                    </div>
                                    <div class="col-md-5">
                                        <label for="">Estado</label>
                                        <select class="form-control" name="filialEstado" id="filialEstado">
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
                            <button type="submit" class="btn btn-primary">Cadastrar</button>
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
