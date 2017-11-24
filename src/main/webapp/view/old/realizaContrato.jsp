
<%@page import="Data.ClienteData"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.ClienteDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

    <head>
<h1><p>VC É O USUARIO : ${user} NE TO VENDO NA SESSAO :D</p></h1>
        <meta charset="utf-8"/>
        <meta content="width=device-width, initial-scale=1, maximum-scale=1" name="viewport">
        <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">	
        <link href="${pageContext.request.contextPath}/css/styleErro.css" reçl="stylesheet">
        <c:import url="Menu.jsp"></c:import>

            <title>Venda de imóvel</title>

        </head>
        <body>

        <c:if test = "${retorno == 'clientenaoexiste'}">
            <div id="sucess" class="alert alert-danger">
                <strong>Erro!</strong> O CPF digitado não existe.
            </div> 
        </c:if>
        <c:if test = "${retorno == 'imovelnaoexiste'}">
            <div class="alert alert alert-danger">
                <strong>Erro!</strong> Matricula de imovel não existe.
            </div>   
        </c:if>
        <c:if test = "${retorno == 'indisponivel'}">
            <div class="alert alert alert-danger">
                <strong>Atenção!</strong> O status do imovel está definido como indisponivel.
            </div>   
        </c:if>
        <c:if test = "${retorno == 'vendafeita'}">
            <div class="alert alert-success">
                <strong>Sucesso!</strong> Venda efetuada com sucesso.
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






        <div class="container">

            <form name="" id="realizaVenda" class="well form-horizontal" action="${pageContext.request.contextPath}/insertContrato" method="get">

                <fieldset>

                    <legend>Venda de imóvel</legend>

                    <!-- Copiar o form group inteiro -->
                    <div class="form-group">

                        <div class="text-center col-lg-4 col-md-4 col-md-offset-4">

                            <div class="row">

                                <label class="col-lg-12 col-md-12">ID Imóvel:</label>

                                <div class="col-lg-12 col-md-12">

                                    <input type="text" name="idImovel" value="${idImovel}" placeholder="" class="form-control col-lg-12 col-md-12" maxlength="5"/>

                                </div>

                            </div>

                        </div>

                    </div>

                    <div class="form-group">

                        <div class="text-center col-lg-4 col-md-4 col-md-offset-4">

                            <div class="row">

                                <label class="col-lg-12 col-md-12">CPF Cliente:</label>

                                <div class="col-lg-12 col-md-12">

                                    <input type="text" name="cpfComprador" value="${cpfComprador}" placeholder="000.000.000-00" class="form-control col-lg-12 col-md-12" maxlength="14" onkeypress="mascaraCpf(this)"/>

                                </div>

                            </div>

                        </div>

                    </div>

                    <div class="form-group">
                        <div class="col-lg-4 col-md-4 col-md-offset-4">
                            <button type="submit" class="btn btn-primary">Validar</button>
                        </div>
                    </div>
                </fieldset>

            </form>
            <form name="" id="" class="well form-horizontal" action="${pageContext.request.contextPath}/insertContrato" method="post">

                <div class="form-group">

                    <legend>Dados do imóvel</legend>

                    <div class="text-center col-lg-4 col-md-4 col-md-offset-4">
                        
                         <div class="row">

                            <label class="col-lg-12 col-md-12">Matricula Imovel:</label>

                            <div class="col-lg-12 col-md-12">

                                <input type="text" value="${idImovelContrato}" readonly="true" class="form-control col-lg-12 col-md-12" maxlength="9"/>

                            </div>

                        </div>

                        <div class="row">

                            <label class="col-lg-12 col-md-12">Valor de Venda:</label>

                            <div class="col-lg-12 col-md-12">

                                <input type="text" value="${valorVenda}" readonly="true" class="form-control col-lg-12 col-md-12" maxlength="9"/>

                            </div>

                        </div>

                        <div class="row">

                            <label class="col-lg-12 col-md-12">Valor do Aluguel:</label>

                            <div class="col-lg-12 col-md-12">

                                <input type="text" value="${valorAluguel}" readonly="true" class="form-control col-lg-12 col-md-12" maxlength="9"/>

                            </div>

                        </div>

                        <div class="row">

                            <label class="col-lg-12 col-md-12">Rua:</label>

                            <div class="col-lg-12 col-md-12">

                                <input type="text" value="${ruaImovel}" readonly="true" class="form-control col-lg-12 col-md-12" maxlength="9"/>

                            </div>

                        </div>

                        <div class="row">

                            <label class="col-lg-12 col-md-12">Descrição:</label>

                            <div class="col-lg-12 col-md-12">

                                <input type="text" value="${descImovel}" readonly="true" class="form-control col-lg-12 col-md-12"/>

                            </div>

                        </div>

                        <div class="row">

                            <label class="col-lg-12 col-md-12">Proprietário:</label>

                            <div class="col-lg-12 col-md-12">

                                <input type="text" value="${nomeProprietario}" readonly="true" class="form-control col-lg-12 col-md-12"/>

                            </div>

                        </div>
                                
                        <div class="row">

                            <label class="col-lg-12 col-md-12">Matricula Proprietário:</label>

                            <div class="col-lg-12 col-md-12">

                                <input type="text" value="${idProprietario}" readonly="true" class="form-control col-lg-12 col-md-12"/>

                            </div>

                        </div>

                    </div>

                </div>

                <div class="form-group">

                    <legend>Dados do Cliente</legend>

                    <div class="text-center col-lg-4 col-md-4 col-md-offset-4">

                        <div class="row">

                            <label class="col-lg-12 col-md-12">Nome:</label>

                            <div class="col-lg-12 col-md-12">

                                <input type="text" value="${nomeCliente}" readonly="true" class="form-control col-lg-12 col-md-12" maxlength="9"/>

                            </div>

                        </div>
                                
                         <div class="row">

                            <label class="col-lg-12 col-md-12">Matricula Cliente:</label>

                            <div class="col-lg-12 col-md-12">

                                <input type="text" value="${idComprador}" readonly="true" class="form-control col-lg-12 col-md-12"/>

                            </div>

                        </div>

                        <div class="row">

                            <label class="col-lg-12 col-md-12">CPF:</label>

                            <div class="col-lg-12 col-md-12">

                                <input type="text" value="${cpfCliente}" readonly="true" class="form-control col-lg-12 col-md-12" maxlength="9"/>

                            </div>

                        </div>

                    </div>

                </div>

                <div class="form-group">
                    <div class="col-lg-10 col-md-10">
                        <button type="reset" class="btn btn-default">Cancelar</button>
                        <button type="submit" class="btn btn-primary">Cadastrar</button>
                    </div>
                </div>


            </form>

    </body>
</html>

</html>
