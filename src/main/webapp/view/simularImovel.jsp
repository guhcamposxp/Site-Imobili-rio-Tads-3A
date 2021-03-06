<%-- 
    Document   : editarCliente
    Created on : 02/11/2017, 20:37:42
    Author     : Felipe
--%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.DateFormat"%>
<%@page import="Data.ImovelData"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.ImovelDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="/getImovel"/>
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
                    <div class="card-header cardRegistro">Simulação de Negócio</div>
                    <div class="card-body">
                        <form name="formImovel" id="formularioCadastro" action="${pageContext.request.contextPath}/insertContrato" method="post">
                            <div class="form-row form-group col-lg-12 divContato ">
                                <div class="form-group col-lg-6 divContato ">
                                    <h5>
                                        Cliente Proprietário
                                    </h5>
                                    <hr/>
                                    <div class="form-row">
                                        <div class="col-md-6">
                                            <label for="">Matrícula:</label>
                                            <input class="form-control campos" name="proprietarioId" id="proprietarioId" type="text">
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group col-lg-6 divContato ">
                                    <h5>
                                        Cliente Interessado
                                    </h5>
                                    <hr/>
                                    <div class="form-row">
                                        <div class="col-md-6">
                                            <label for="">Matrícula:</label>
                                            <input class="form-control campos" name="interessadoId" id="interessadoId" type="text">
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group col-lg-6 divContato ">
                                    <h5>
                                        Corretor Responsável
                                    </h5>
                                    <hr/>
                                    <div class="form-row">
                                        <div class="col-md-6">
                                            <label for="">Matrícula:</label>
                                            <input class="form-control campos" name="funcionarioId" id="funcionarioId" type="text">
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group col-lg-6 divContato ">
                                    <h5>
                                        Data do Contrato
                                    </h5>
                                    <hr/>
                                    <div class="form-row">
                                        <div class="col-md-6">
                                            <%
                                                DateFormat formato = new SimpleDateFormat("dd/MM/yyyy");
                                                String hoje = formato.format(new Date());
                                            %>
                                            <label for="">Hoje</label>
                                            <input class="form-control campos" value="<%=hoje%>" readonly="true" name="dataContrato" id="dataContrato" type="text">
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
                                    <div class="col-md-2">
                                        <label for="">Matrícula do imóvel</label>
                                        <input class="form-control campos" name="imovelId" readonly="true" id="imovelId" type="text" value="${lista.imovelId}">
                                    </div>
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
                            <button type="submit" class="btn btn-primary">Gerar</button>
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
        <script src="${pageContext.request.contextPath}/all/vendor/chart.js/Chart.min.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/all/vendor/datatables/jquery.dataTables.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/all/vendor/datatables/dataTables.bootstrap4.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/js/sb-admin.min.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/js/sb-admin-datatables.min.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/js/sb-admin-charts.min.js" type="text/javascript"></script>
    </body>
</html>
