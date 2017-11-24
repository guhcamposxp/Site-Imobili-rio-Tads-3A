<%@page import="Data.FilialData"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.FilialDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="/getFilial" />
        <meta charset="utf-8"/>
        <meta content="width=device-width, initial-scale=1, maximum-scale=1" name="viewport">
        <link href="../css/style.css" rel="stylesheet">	
        <c:import url="Menu.jsp"></c:import>
        </head>

        <body>
            
        <div class="container">

            <form name="formCliente" id="formularioCadastro" class="well form-horizontal" action="../ClienteServlet" method="post">

                <fieldset>

                    <legend>Todos os Dados da Filial</legend>

                    <!-- Copiar o form group inteiro -->
                    <div class="form-group">

                        <div class="col-lg-4 col-md-4">

                            <div class="row">

                                <label class="col-lg-12 col-md-12">Rua:</label>

                                <div class="col-lg-12 col-md-12">

                                    <input type="text" name="endRuaFilial" value="${lista.endRuaFilial}" readonly="true" class="form-control col-lg-12 col-md-12" />
                                    <input type="hidden" name="idFilial" value="${lista.idFilial}">

                                </div>

                            </div>

                        </div>

                        <div class="col-lg-4 col-md-4">

                            <div class="row">

                                <label class="col-lg-12 col-md-12">Número:</label>

                                <div class="col-lg-12 col-md-12">

                                    <input type="text" name="endNumFilial" id="cpf" value="${lista.endNumFilial}" readonly="true" class="form-control col-lg-12 col-md-12" maxlength="14"/>

                                </div>

                            </div>

                        </div>



                        <div class="col-lg-4 col-md-4">

                            <div class="row">

                                <label class="col-lg-12 col-md-12">CEP:</label>

                                <div class="col-lg-12 col-md-12">

                                    <input type="text" name="rgCep" value="${lista.endCepFilial}" readonly="true" class="form-control col-lg-12 col-md-12" />

                                </div>

                            </div>

                        </div>

                    </div>
                    <!-- Copiar o form group inteiro -->

                    <div class="form-group">

                        <div class="col-lg-4 col-md-4">

                            <div class="row">

                                <label class="col-lg-12 col-md-12">Estado:</label>

                                <div class="col-lg-12 col-md-12">

                                    <input name="sexoEstado" value="${lista.endEstFilial}" readonly="true" readonly="true" class="form-control col-lg-12 col-md-12" type="text">

                                </div>

                            </div>

                        </div>

                        <div class="col-lg-4 col-md-4">

                            <div class="row">

                                <label class="col-lg-12 col-md-12">Cidade:</label>

                                <div class="col-lg-12 col-md-12">
                                    <input name="estCivilCidade" value="${lista.endCidFilial}" readonly="true" class="form-control col-lg-12 col-md-12" type="text">
                                </div>

                            </div>

                        </div>

                        <div class="col-lg-4 col-md-4">

                            <div class="row">

                                <label class="col-lg-12 col-md-12">Bairro:</label>

                                <div class="col-lg-12 col-md-12">
                                    <input name="endBairroFilial" value="${lista.endBairroFilial}" readonly="true" class="form-control col-lg-12 col-md-12" type="text">
                                </div>

                            </div>

                        </div>

                    </div>

                    <div class="form-group">
                        <div class="col-lg-4 col-md-4">

                            <div class="row">

                                <label class="col-lg-12 col-md-12">Complemento:</label>

                                <div class="col-lg-12 col-md-12">

                                    <input type="text" name="endCompFilial" value="${lista.endCompFilial}" readonly="true" class="form-control col-lg-12 col-md-12" maxlength="10"/>

                                </div>

                            </div>

                        </div>

                        <div class="col-lg-4 col-md-4">

                            <div class="row">

                                <label class="col-lg-12 col-md-12">CNPJ:</label>

                                <div class="col-lg-12 col-md-12">

                                    <input type="text" name="cnpjFilial" value="${lista.cnpjFilial}" readonly="true" class="form-control col-lg-12 col-md-12" maxlength="14"/>

                                </div>

                            </div>

                        </div>

                        <div class="col-lg-4 col-md-4">

                            <div class="row">

                                <label class="col-lg-12 col-md-12">Nome Fantasia:</label>

                                <div class="col-lg-12 col-md-12">

                                    <input type="text" name="nomeFantasiaFilial" value="${lista.nomeFantasiaFilial}" readonly="true" class="form-control col-lg-12 col-md-12" maxlength="15"/>

                                </div>

                            </div>

                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-lg-10 col-md-10">
                            <a type="reset" href="../view/listagemFilial.jsp?" class="btn btn-default">Voltar</a>
                        </div>
                    </div>
                    </div>

                    

                </fieldset>

            </form>
    </body>
</html>

