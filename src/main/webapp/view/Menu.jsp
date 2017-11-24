<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="pt-BR">
    <head>
        <meta charset="utf-8"/>
        <meta content="width=device-width, initial-scale=1, maximum-scale=1" name="viewport">	
        <link href="https://maxcdn.bootstrapcdn.com/bootswatch/3.3.7/slate/bootstrap.min.css" rel="stylesheet">
        <!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script> -->
        <script src="${pageContext.request.contextPath}/js/jquery.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/js/jquery.validate.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/js/validacao.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/js/mascaras.js" type="text/javascript"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/js/mascaras.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.0/jquery.mask.js"></script>

    </head>
    <body>

        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="${pageContext.request.contextPath}/view/Inicio.jsp">Sistema Imobiliário</a>
                </div>

                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">

                        <c:if test = "${cargoFuncionario == 'BackOffice' 
                                        || cargoFuncionario == 'Gerente de BackOffice'
                                        || cargoFuncionario == 'Diretor' 
                                        || cargoFuncionario == 'Gerente de TI' 
                                        || cargoFuncionario == 'Funcionário de TI'
                                        || cargoFuncionario == 'Corretor'}">

                              <!-- Cliente -->
                              <li class="dropdown">
                                  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Clientes <span class="caret"></span></a>
                                  <ul class="dropdown-menu" role="menu">
                                      <li><a href="${pageContext.request.contextPath}/view/cadastrarCliente.jsp">Cadastrar novo cliente</a></li>
                                      <li><a href="${pageContext.request.contextPath}/view/listagemCliente.jsp">Consultar Clientes</a></li>
                                  </ul>
                              </li>

                        </c:if>


                        <c:if test = "${cargoFuncionario == 'BackOffice' 
                                        || cargoFuncionario == 'Gerente de BackOffice'
                                        || cargoFuncionario == 'Diretor' 
                                        || cargoFuncionario == 'Gerente de TI' 
                                        || cargoFuncionario == 'Funcionário de TI'
                                        || cargoFuncionario == 'Corretor'}">      
                              <!-- Imoveis -->
                              <li class="dropdown">
                                  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Imóveis <span class="caret"></span></a>
                                  <ul class="dropdown-menu" role="menu">
                                      <li><a href="${pageContext.request.contextPath}/view/cadastrarImovel.jsp">Cadastrar novo imóvel</a></li>
                                      <li><a href="${pageContext.request.contextPath}/view/listagemImovel.jsp">Listar imóveis</a></li>
                                  </ul>
                              </li>
                        </c:if>

                        <c:if test = "${cargoFuncionario == 'Gerente de BackOffice' 
                                        || cargoFuncionario == 'Diretor' 
                                        || cargoFuncionario == 'Gerente de TI' 
                                        || cargoFuncionario == 'Funcionário de TI'}"> 

                              <!-- Funcionarios -->
                              <li class="dropdown">
                                  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Funcionários <span class="caret"></span></a>
                                  <ul class="dropdown-menu" role="menu">
                                      <li><a href="${pageContext.request.contextPath}/view/cadastrarFuncionario.jsp">Cadastrar novo funcionário</a></li>
                                      <li><a href="${pageContext.request.contextPath}/view/listagemFuncionario.jsp">Listar funcionários</a></li>
                                  </ul>
                              </li>
                        </c:if>

                        <c:if test = "${cargoFuncionario == 'Gerente de Vendas' 
                                        || cargoFuncionario == 'Diretor' 
                                        || cargoFuncionario == 'Gerente de TI'}"> 
                              <!-- Contratos -->
                              <li class="dropdown">
                                  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Contratos <span class="caret"></span></a>
                                  <ul class="dropdown-menu" role="menu">
                                      <li><a href="${pageContext.request.contextPath}/view/realizaContrato.jsp">Gerar contrato</a></li>
                                      <li><a href="${pageContext.request.contextPath}/view/listagemContrato.jsp">Consultar contratos</a></li>
                                  </ul>
                              </li>
                        </c:if>

                        <c:if test = "${cargoFuncionario == 'Funcionário TI' 
                                        || cargoFuncionario == 'Diretor' 
                                        || cargoFuncionario == 'Gerente de TI'
                                        || cargoFuncionario == 'Gerente de BackOffice'
                                        || cargoFuncionario == 'BackOffice'}"> 

                              <!-- Filiais -->
                              <li class="dropdown">
                                  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Filiais <span class="caret"></span></a>
                                  <ul class="dropdown-menu" role="menu">
                                      <li><a href="${pageContext.request.contextPath}/view/cadastrarFilial.jsp">Cadastrar nova filial</a></li>
                                      <li><a href="${pageContext.request.contextPath}/view/listagemFilial.jsp">Consultar filiais</a></li>
                                  </ul>
                              </li>
                        </c:if>

                        <li class="nav-item">
                            <a class="nav-link disabled" >${nomeFuncionario} - ${cargoFuncionario} - ${filialFuncionario} - ${dataatual}</a>    </li>




                    </ul>
                </div>
            </div>
        </nav>
    </body>
</html>
