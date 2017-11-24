
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
        <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">	
        <c:import url="Menu.jsp"></c:import>
            
        </head>

        <body>
           
          
        

            
            
            

        <div class="container">

            <form name="formCliente" id="formularioCadastro" class="well form-horizontal" action="${pageContext.request.contextPath}/insertCliente" method="post">

                
             
                
                
                <fieldset>

                    <legend>Editar Cliente</legend>

                    <!-- Copiar o form group inteiro -->
                    <div class="form-group">

                        <div class="col-lg-4 col-md-4">

                            <div class="row">

                                <label class="col-lg-12 col-md-12">Nome:</label>

                                <div class="col-lg-12 col-md-12">

                                    <input type="text" name="nomeCliente" value="${lista.nomeCliente}" class="form-control col-lg-12 col-md-12" />
                                    <input type="hidden" name="idCliente" value="${lista.idCliente}">

                                </div>

                            </div>

                        </div>

                        <div class="col-lg-4 col-md-4">

                            <div class="row">

                                <label class="col-lg-12 col-md-12">CPF:</label>

                                <div class="col-lg-12 col-md-12">

                                    <input type="text" name="cpfCliente" id="cpf" value="${lista.cpfCliente}" placeholder="000.000.000-00" class="form-control col-lg-12 col-md-12" maxlength="14"/>

                                </div>

                            </div>

                        </div>



                        <div class="col-lg-4 col-md-4">

                            <div class="row">

                                <label class="col-lg-12 col-md-12">RG:</label>

                                <div class="col-lg-12 col-md-12">

                                    <input type="text" name="rgCliente" value="${lista.rgCliente}" placeholder="00.000.000-0" class="form-control col-lg-12 col-md-12" />

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

                                    <input name="sexoCliente" value="${lista.sexoCliente}" class="form-control col-lg-12 col-md-12" type="text">

                                </div>

                            </div>

                        </div>

                        <div class="col-lg-4 col-md-4">

                            <div class="row">

                                <label class="col-lg-12 col-md-12">Estado Civil:</label>

                                <div class="col-lg-12 col-md-12">
                                    <input name="estCivilCliente" value="${lista.estCivilCliente}"  class="form-control col-lg-12 col-md-12" type="text">
                                </div>

                            </div>

                        </div>

                        <div class="col-lg-4 col-md-4">

                            <div class="row">

                                <label class="col-lg-12 col-md-12">E-mail:</label>

                                <div class="col-lg-12 col-md-12">

                                    <input type="text" name="emailCliente" value="${lista.emailCliente}" placeholder="exemplo@exemplo.com.br" class="form-control col-lg-12 col-md-12" maxlength="59"/>

                                </div>

                            </div>

                        </div>

                    </div>

                    <div class="form-group">
                        <div class="col-lg-4 col-md-4">

                            <div class="row">

                                <label class="col-lg-12 col-md-12">Nascimento:</label>

                                <div class="col-lg-12 col-md-12">

                                    <input type="text" name="nascimentoCliente" value="${lista.nascimentoCliente}" placeholder="00/00/0000" class="form-control col-lg-12 col-md-12" maxlength="10"/>

                                </div>

                            </div>

                        </div>

                        <div class="col-lg-4 col-md-4">

                            <div class="row">

                                <label class="col-lg-12 col-md-12">Telefone:</label>

                                <div class="col-lg-12 col-md-12">

                                    <input type="text" name="telFixoCliente" value="${lista.telFixoCliente}" placeholder="(00) 0000-0000" class="form-control col-lg-12 col-md-12" maxlength="14"/>

                                </div>

                            </div>

                        </div>

                        <div class="col-lg-4 col-md-4">

                            <div class="row">

                                <label class="col-lg-12 col-md-12">Celular:</label>

                                <div class="col-lg-12 col-md-12">

                                    <input type="text" name="telCelCliente" value="${lista.telCelCliente}" placeholder="(00) 90000-0000" class="form-control col-lg-12 col-md-12" maxlength="15"/>

                                </div>

                            </div>

                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-lg-4 col-md-4">

                            <div class="row">

                                <label class="col-lg-12 col-md-12">Rua:</label>

                                <div class="col-lg-12 col-md-12">

                                    <input type="text" name="endRuaCliente" value="${lista.endRuaCliente}" placeholder="Nome da rua..." class="form-control col-lg-12 col-md-12" maxlength="41"/>

                                </div>

                            </div>

                        </div>

                        <div class="col-lg-4 col-md-4">

                            <div class="row">

                                <label class="col-lg-12 col-md-12">Número:</label>

                                <div class="col-lg-12 col-md-12">

                                    <input type="text" name="endNumCliente" value="${lista.endNumCliente}" placeholder="Ex.: Número da casa/condomínio..." class="form-control col-lg-12 col-md-12" maxlength="41"/>

                                </div>

                            </div>

                        </div>

                        <div class="col-lg-4 col-md-4">

                            <div class="row">

                                <label class="col-lg-12 col-md-12">Complemento:</label>

                                <div class="col-lg-12 col-md-12">

                                    <input type="text" name="endCompCliente" value="${lista.endCompCliente}" placeholder="Ex.: Bloco e apartamento..." class="form-control col-lg-12 col-md-12" maxlength="41"/>

                                </div>

                            </div>

                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-lg-4 col-md-4">

                            <div class="row">

                                <label class="col-lg-12 col-md-12">Bairro:</label>

                                <div class="col-lg-12 col-md-12">

                                    <input type="text" name="endBairroCliente" value="${lista.endBairroCliente}" placeholder="Nome do bairro" class="form-control col-lg-12 col-md-12" maxlength="41"/>

                                </div>

                            </div>

                        </div>

                        <div class="col-lg-4 col-md-4">

                            <div class="row">

                                <label class="col-lg-12 col-md-12">CEP:</label>

                                <div class="col-lg-12 col-md-12">

                                    <input type="text" name="endCepCliente" value="${lista.endCepCliente}" placeholder="00000-000" class="form-control col-lg-12 col-md-12" maxlength="9"/>

                                </div>

                            </div>

                        </div>

                        <div class="col-lg-4 col-md-4">

                            <div class="row">

                                <label class="col-lg-12 col-md-12">Cidade:</label>

                                <div class="col-lg-12 col-md-12">
                                    <input name="endCidCliente" value="${lista.endCidCliente}" class="form-control col-lg-12 col-md-12" type="text">
                                </div>

                            </div>

                        </div>

                    </div>
                               

                    <div class="form-group">
                        <div class="col-lg-4 col-md-4">

                            <div class="row">

                                <label class="col-lg-12 col-md-12">Estado:</label>

                                <div class="col-lg-12 col-md-12">

                                <input name="endEstCliente" value="${lista.endEstCliente}" class="form-control col-lg-12 col-md-12" type="text">   

                                </div>

                            </div>

                        </div>
                    </div>
                                
                    <div class="form-group">
                        <div class="col-lg-10 col-md-10">
                            <button type="reset" class="btn btn-default">Cancelar</button>
                            <button type="submit" class="btn btn-primary">Editar</button>
                        </div>
                    </div>

                </fieldset>

            </form>

    </body>
</html>

