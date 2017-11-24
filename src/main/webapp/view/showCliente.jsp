
<%@page import="Data.ClienteData"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.ClienteDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="/getCliente" />
        <meta charset="utf-8"/>
        <meta content="width=device-width, initial-scale=1, maximum-scale=1" name="viewport">
        <link href="../css/style.css" rel="stylesheet">	
        <c:import url="Menu.jsp"></c:import>
        </head>

        <body>

        <div class="container">

            <form name="formCliente" id="formularioCadastro" class="well form-horizontal" action="../ClienteServlet" method="post">

                <fieldset>

                    <legend>Todos os Dados do Cliente</legend>

                    <!-- Copiar o form group inteiro -->
                    <div class="form-group">

                        <div class="col-lg-4 col-md-4">

                            <div class="row">

                                <label class="col-lg-12 col-md-12">Nome:</label>

                                <div class="col-lg-12 col-md-12">

                                    <input type="text" name="nomeCliente" value="${lista.nomeCliente}" readonly="true" class="form-control col-lg-12 col-md-12" />
                                    <input type="hidden" name="idCliente" value="${lista.idCliente}">

                                </div>

                            </div>

                        </div>

                        <div class="col-lg-4 col-md-4">

                            <div class="row">

                                <label class="col-lg-12 col-md-12">CPF:</label>

                                <div class="col-lg-12 col-md-12">

                                    <input type="text" name="cpfCliente" id="cpf" value="${lista.cpfCliente}" readonly="true" class="form-control col-lg-12 col-md-12" maxlength="14"/>

                                </div>

                            </div>

                        </div>



                        <div class="col-lg-4 col-md-4">

                            <div class="row">

                                <label class="col-lg-12 col-md-12">RG:</label>

                                <div class="col-lg-12 col-md-12">

                                    <input type="text" name="rgCliente" value="${lista.rgCliente}" readonly="true" class="form-control col-lg-12 col-md-12" />

                                </div>

                            </div>

                        </div>

                    </div>
                    <!-- Copiar o form group inteiro -->

                    <div class="form-group">

                        <div class="col-lg-4 col-md-4">

                            <div class="row">

                                <label class="col-lg-12 col-md-12">Sexo:</label>

                                <div class="col-lg-12 col-md-12">

                                    <input name="sexoCliente" value="${lista.sexoCliente}" readonly="true" readonly="true" class="form-control col-lg-12 col-md-12" type="text">

                                </div>

                            </div>

                        </div>

                        <div class="col-lg-4 col-md-4">

                            <div class="row">

                                <label class="col-lg-12 col-md-12">Estado Civil:</label>

                                <div class="col-lg-12 col-md-12">
                                    <input name="estCivilCliente" value="${lista.estCivilCliente}" readonly="true" class="form-control col-lg-12 col-md-12" type="text">
                                </div>

                            </div>

                        </div>

                        <div class="col-lg-4 col-md-4">

                            <div class="row">

                                <label class="col-lg-12 col-md-12">E-mail:</label>

                                <div class="col-lg-12 col-md-12">

                                    <input type="text" name="emailCliente" value="${lista.emailCliente}" readonly="true" class="form-control col-lg-12 col-md-12" maxlength="59"/>

                                </div>

                            </div>

                        </div>

                    </div>

                    <div class="form-group">
                        <div class="col-lg-4 col-md-4">

                            <div class="row">

                                <label class="col-lg-12 col-md-12">Nascimento:</label>

                                <div class="col-lg-12 col-md-12">

                                    <input type="text" name="nascimentoCliente" value="${lista.nascimentoCliente}" readonly="true" class="form-control col-lg-12 col-md-12" maxlength="10"/>

                                </div>

                            </div>

                        </div>

                        <div class="col-lg-4 col-md-4">

                            <div class="row">

                                <label class="col-lg-12 col-md-12">Telefone:</label>

                                <div class="col-lg-12 col-md-12">

                                    <input type="text" name="telFixoCliente" value="${lista.telFixoCliente}" readonly="true" class="form-control col-lg-12 col-md-12" maxlength="14"/>

                                </div>

                            </div>

                        </div>

                        <div class="col-lg-4 col-md-4">

                            <div class="row">

                                <label class="col-lg-12 col-md-12">Celular:</label>

                                <div class="col-lg-12 col-md-12">

                                    <input type="text" name="telCelCliente" value="${lista.telCelCliente}" readonly="true" class="form-control col-lg-12 col-md-12" maxlength="15"/>

                                </div>

                            </div>

                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-lg-4 col-md-4">

                            <div class="row">

                                <label class="col-lg-12 col-md-12">Rua:</label>

                                <div class="col-lg-12 col-md-12">

                                    <input type="text" name="endRuaCliente" value="${lista.endRuaCliente}" readonly="true" class="form-control col-lg-12 col-md-12" maxlength="41"/>

                                </div>

                            </div>

                        </div>

                        <div class="col-lg-4 col-md-4">

                            <div class="row">

                                <label class="col-lg-12 col-md-12">Número:</label>

                                <div class="col-lg-12 col-md-12">

                                    <input type="text" name="endNumCliente" value="${lista.endNumCliente}" readonly="true" class="form-control col-lg-12 col-md-12" maxlength="41"/>

                                </div>

                            </div>

                        </div>

                        <div class="col-lg-4 col-md-4">

                            <div class="row">

                                <label class="col-lg-12 col-md-12">Complemento:</label>

                                <div class="col-lg-12 col-md-12">

                                    <input type="text" name="endCompCliente" value="${lista.endCompCliente}" readonly="true" class="form-control col-lg-12 col-md-12" maxlength="41"/>

                                </div>

                            </div>

                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-lg-4 col-md-4">

                            <div class="row">

                                <label class="col-lg-12 col-md-12">Bairro:</label>

                                <div class="col-lg-12 col-md-12">

                                    <input type="text" name="endBairroCliente" value="${lista.endBairroCliente}" readonly="true" class="form-control col-lg-12 col-md-12" maxlength="41"/>

                                </div>

                            </div>

                        </div>

                        <div class="col-lg-4 col-md-4">

                            <div class="row">

                                <label class="col-lg-12 col-md-12">CEP:</label>

                                <div class="col-lg-12 col-md-12">

                                    <input type="text" name="endCepCliente" value="${lista.endCepCliente}" readonly="true" class="form-control col-lg-12 col-md-12" maxlength="9"/>

                                </div>

                            </div>

                        </div>

                        <div class="col-lg-4 col-md-4">

                            <div class="row">

                                <label class="col-lg-12 col-md-12">Cidade:</label>

                                <div class="col-lg-12 col-md-12">
                                    <input name="endCidCliente" value="${lista.endCidCliente}" readonly="true" class="form-control col-lg-12 col-md-12" type="text">
                                </div>

                            </div>

                        </div>

                    </div>

                    <div class="form-group">
                        <div class="col-lg-4 col-md-4">

                            <div class="row">

                                <label class="col-lg-12 col-md-12">Estado:</label>

                                <div class="col-lg-12 col-md-12">

                                    <input name="endEstCliente" value="${lista.endEstCliente}" readonly="true" class="form-control col-lg-12 col-md-12" type="text">   

                                </div>

                            </div>

                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-lg-10 col-md-10">
                            <a type="reset" href="../view/listagemCliente.jsp?" class="btn btn-default">Voltar</a>
                        </div>
                    </div>

                </fieldset>

            </form>
    </body>
</html>

