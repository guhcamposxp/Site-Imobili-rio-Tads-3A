
<%@page import="Data.ClienteData"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.ClienteDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

    <head>

        <meta charset="utf-8"/>
        <meta content="width=device-width, initial-scale=1, maximum-scale=1" name="viewport">
        <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">	
        <script type="text/javascript" src="../js/mascaras.js"></script>
        <c:import url="Menu.jsp"></c:import>


            <title>Cadastro de Filial</title>

        </head>
        <body>

         <c:if test = "${retorno == 'criacao'}">
            <div id="sucess" class="alert alert-success">
                <strong>Successo!</strong> O cadastro foi salvo corretamente.
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
        <c:if test = "${retorno == 'alteracao'}">
            <div class="alert alert-success">
                <strong>Sucesso!</strong> Alteração realizada com sucesso.
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
            <c:if test = "${retorno == 'erro'}">
            <div class="alert alert-danger">
                <strong>Erro!</strong> Houve um erro no modulo back-end, entre em contato com administrador do sistema.
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

            <form name="formFilial" id="formularioFilial" class="well form-horizontal" action="${pageContext.request.contextPath}/insertFilial" method="post">

                <fieldset>

                    <legend>Cadastrar Filial</legend>

                    <div class="form-group">

                        <div class="col-lg-4 col-md-4">

                            <div class="row">

                                <label class="col-lg-12 col-md-12">Rua:</label>

                                <div class="col-lg-12 col-md-12">

                                    <input type="text" name="endRuaFilial" value="" placeholder="Nome da rua..." class="form-control col-lg-12 col-md-12" maxlength="41"/>

                                </div>

                            </div>

                        </div>

                        <div class="col-lg-4 col-md-4">

                            <div class="row">

                                <label class="col-lg-12 col-md-12">Número:</label>

                                <div class="col-lg-12 col-md-12">

                                    <input type="number" name="endNumFilial" value="" placeholder="Ex.: Número da casa/condomínio..." class="form-control col-lg-12 col-md-12"/>

                                </div>

                            </div>

                        </div>

                        <div class="col-lg-4 col-md-4">

                            <div class="row">

                                <label class="col-lg-12 col-md-12">Bairro:</label>

                                <div class="col-lg-12 col-md-12">

                                    <input type="text" name="endBairroFilial" value="" placeholder="Nome do bairro..." class="form-control col-lg-12 col-md-12" maxlength="41" />

                                </div>

                            </div>

                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-lg-4 col-md-4">

                            <div class="row">

                                <label class="col-lg-12 col-md-12">Cidade:</label>

                                <div class="col-lg-12 col-md-12">

                                    <input type="text" name="endCidFilial" placeholder="Nome da cidade" class="form-control col-lg-12 col-md-12" maxlength="41"/>

                                </div>

                            </div>

                        </div>

                        <div class="col-lg-4 col-md-4">

                            <div class="row">

                                <label class="col-lg-12 col-md-12">CEP:</label>

                                <div class="col-lg-12 col-md-12">

                                    <input type="text" name="endCepFilial" value="" placeholder="00000-000" class="form-control col-lg-12 col-md-12" maxlength="9" onkeypress="mascaraCep(this)"/>

                                </div>

                            </div>

                        </div>

                        <div class="col-lg-4 col-md-4">

                            <div class="row">

                                <label class="col-lg-12 col-md-12">Complemento:</label>

                                <div class="col-lg-12 col-md-12">

                                    <input type="text" name="endCompFilial" value="" placeholder="Ex.: Bloco e apartamento..." class="form-control col-lg-12 col-md-12" maxlength="41"/>

                                </div>

                            </div>

                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-lg-4 col-md-4">

                            <div class="row">

                                <label class="col-lg-12 col-md-12">Estado:</label>

                                <div class="col-lg-12 col-md-12">

                                    <select  name="endEstFilial" class="form-control col-lg-12 col-md-12">
                                        <option value="nulo" >Selecione</option>
                                        <option value="AC">Acre</option>
                                        <option value="AL">Alagoas</option>
                                        <option value="AP">Amapá</option>
                                        <option value="AM">Amazonas</option>
                                        <option value="BA">Bahia</option>
                                        <option value="CE">Ceará</option>
                                        <option value="DF">Distrito Federal</option>
                                        <option value="ES">Espírito Santo</option>
                                        <option value="GO">Goiás</option>
                                        <option value="MA">Maranhão</option>
                                        <option value="MT">Mato Grosso</option>
                                        <option value="MS">Mato Grosso do Sul</option>
                                        <option value="MG">Minas Gerais</option>
                                        <option value="PA">Pará</option>
                                        <option value="PB">Paraíba</option>
                                        <option value="PR">Paraná</option>
                                        <option value="PE">Pernambuco</option>
                                        <option value="PI">Piauí</option>
                                        <option value="RJ">Rio de Janeiro</option>
                                        <option value="RN">Rio Grande do Norte</option>
                                        <option value="RS">Rio Grande do Sul</option>
                                        <option value="RO">Rondônia</option>
                                        <option value="RR">Roraima</option>
                                        <option value="SC">Santa Catarina</option>
                                        <option value="SP">São Paulo</option>
                                        <option value="SE">Sergipe</option>
                                        <option value="TO">Tocantins</option>
                                    </select>

                                </div>

                            </div>

                        </div>

                        <div class="col-lg-4 col-md-4">

                            <div class="row">

                                <label class="col-lg-12 col-md-12">CNPJ:</label>

                                <div class="col-lg-12 col-md-12">

                                    <input type="text" name="cnpjFilial" value="" placeholder="00.000.000/0000-00" class="form-control col-lg-12 col-md-12" maxlength="18" onkeypress="mascaraCnpj(this)"/>

                                </div>

                            </div>

                        </div>

                        <div class="col-lg-4 col-md-4">

                            <div class="row">

                                <label class="col-lg-12 col-md-12">Nome Fantasia:</label>

                                <div class="col-lg-12 col-md-12">

                                    <input type="text" name="nomeFilial" value="" placeholder="Nome fantasia..." class="form-control col-lg-12 col-md-12" maxlength="18"/>

                                </div>

                            </div>

                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-lg-10 col-md-10">
                            <button type="submit" class="btn btn-primary" onclick="valida()">Cadastrar</button>
                        </div>
                    </div>
                </fieldset>

            </form>

    </body>
</html>

</html>
