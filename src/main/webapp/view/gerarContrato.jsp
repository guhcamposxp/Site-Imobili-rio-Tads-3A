<%-- 
    Document   : gerarContrato
    Created on : 07/12/2017, 00:26:34
    Author     : Felipe Oliveira
--%>
<%@page import="Data.ClienteData"%>
<%@page import="Data.ImovelData"%>
<%@page import="Data.FuncionarioData"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="/getDadosContrato" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gerar Contrato</title>
        <link href="${pageContext.request.contextPath}/all/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="${pageContext.request.contextPath}/all/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <link href="${pageContext.request.contextPath}/css/sb-admin.css" rel="stylesheet" type="text/css"/>
        <link href="${pageContext.request.contextPath}/css/custom.css" rel="stylesheet" type="text/css"/>
        <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">
    </head>
    <body>
        <div class="container">
                <div class="card card-register mx-auto mt-5">
                    <div class="card-header cardRegistro">Gerar Contrato</div>
                    <div class="card-body">
                        <form name="formCliente" id="formularioCadastro" class="well form-horizontal" action="${pageContext.request.contextPath}/insertCliente" method="post">
                            <div class="col-lg-12">
                                <div class="row">
                                    <div class="form-group col-lg-6">
                                        <h5>
                                            Dados do imóvel
                                        </h5>
                                        <hr/>
                                        
                                    </div>
                                    <div class="form-group col-lg-6">
                                        <h5>
                                            Dados do proprietário
                                        </h5>
                                        <hr/>
                                        <div class="form-row">
                                            <div class="col-md-6">
                                                <label>Nome</label>
                                                <input type="text" name="clienteNome" value="${lista.getClienteNome}" />
                                            </div>
                                        </div>
                                    </div>
                                         
                                </div>
                            </div>

                            
                            <button type="submit" class="btn btn-primary">Gerar</button>
                        </form>
                        <hr/>
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
