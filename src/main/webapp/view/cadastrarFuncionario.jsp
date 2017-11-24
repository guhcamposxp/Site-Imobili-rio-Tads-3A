<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8"/>
        <meta content="width=device-width, initial-scale=1, maximum-scale=1" name="viewport">
        <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">		
        <c:import url="Menu.jsp"></c:import>
            <title>Cadastro de Funcionário</title>

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
                <form name="formFuncionario" id="formularioFuncionario" class="well form-horizontal" action="${pageContext.request.contextPath}/insertFuncionario" method="post">

                    <fieldset>

                        <legend>Cadastrar Funcionário</legend>

                        <!-- Copiar o form group inteiro -->
                        <div class="form-group">

                            <div class="col-lg-4 col-md-4">

                                <div class="row">

                                    <label class="col-lg-12 col-md-12">Nome:</label>

                                    <div class="col-lg-12 col-md-12">

                                        <input type="text" name="nomeFuncionario" value="${funcionario.nomeFuncionario}" placeholder="Nome Completo..." class="form-control col-lg-12 col-md-12" />

                                </div>

                            </div>

                        </div>

                        <div class="col-lg-4 col-md-4">

                            <div class="row">

                                <label class="col-lg-12 col-md-12">CPF:</label>

                                <div class="col-lg-12 col-md-12">

                                    <input type="text" name="cpfFuncionario" value="${funcionario.cpfFuncionario}" onkeypress="mascaraCpf(this)" placeholder="000.000.000-00" class="form-control col-lg-12 col-md-12" maxlength="14"/>

                                </div>

                            </div>

                        </div>

                        <div class="col-lg-4 col-md-4">

                            <div class="row">

                                <label class="col-lg-12 col-md-12">RG:</label>

                                <div class="col-lg-12 col-md-12">

                                    <input type="text" name="rgFuncionario" value="${funcionario.rgFuncionario}" placeholder="00.000.000-0" class="form-control col-lg-12 col-md-12" onkeypress="mascaraRg(this)" maxlength="12"/>

                                </div>

                            </div>

                        </div>

                    </div>

                    <div class="form-group">

                        <div class="col-lg-4 col-md-4">

                            <div class="row">

                                <label class="col-lg-12 col-md-12">Sexo:</label>

                                <div class="col-lg-12 col-md-12">

                                    <select  name="sexoFuncionario" class="form-control col-lg-12 col-md-12">
                                        <option value="nulo">Selecione</option>
                                        <option value="Masculino" >Masculino</option>
                                        <option value="Feminino" >Feminino</option>
                                    </select>

                                </div>

                            </div>

                        </div>

                        <div class="col-lg-4 col-md-4">

                            <div class="row">

                                <label class="col-lg-12 col-md-12">Estado Civil:</label>

                                <div class="col-lg-12 col-md-12">

                                    <select  name="estCivilFuncionario" class="form-control col-lg-12 col-md-12">
                                        <option value="nulo">Selecione</option>
                                        <option value="Solteiro" >Solteiro</option>
                                        <option value="Casado" >Casado</option>
                                        <option value="Separado" >Separado</option>
                                        <option value="Divorciado" >Divorciado</option>
                                        <option value="Viúvo" >Viúvo</option>
                                    </select>

                                </div>

                            </div>

                        </div>

                        <div class="col-lg-4 col-md-4">

                            <div class="row">

                                <label class="col-lg-12 col-md-12">E-mail:</label>

                                <div class="col-lg-12 col-md-12">

                                    <input type="text" name="emailFuncionario" value="${funcionario.emailFuncionario}" placeholder="exemplo@exemplo.com.br" class="form-control col-lg-12 col-md-12" maxlength="59"/>

                                </div>

                            </div>

                        </div>

                    </div>

                    <div class="form-group">
                        <div class="col-lg-4 col-md-4">

                            <div class="row">

                                <label class="col-lg-12 col-md-12">Nascimento:</label>

                                <div class="col-lg-12 col-md-12">

                                    <input type="text" name="nascimentoFuncionario" value="${funcionario.nascimentoFuncionario}" placeholder="00/00/0000" class="form-control col-lg-12 col-md-12" maxlength="10" onkeypress="mascaraData(this)"/>

                                </div>

                            </div>

                        </div>

                        <div class="col-lg-4 col-md-4">

                            <div class="row">

                                <label class="col-lg-12 col-md-12">Telefone:</label>

                                <div class="col-lg-12 col-md-12">

                                    <input type="text" name="telFixoFuncionario" value="${funcionario.telFixoFuncionario}" placeholder="(00) 0000-0000" class="form-control col-lg-12 col-md-12" maxlength="14" onkeypress="mascaraTelefone(this)"/>

                                </div>

                            </div>

                        </div>

                        <div class="col-lg-4 col-md-4">

                            <div class="row">

                                <label class="col-lg-12 col-md-12">Celular:</label>

                                <div class="col-lg-12 col-md-12">

                                    <input type="text" name="telCelFuncionario" value="${funcionario.telCelFuncionario}" placeholder="(00) 90000-0000" class="form-control col-lg-12 col-md-12" maxlength="15" onkeypress="mascaraCelular(this)"/>

                                </div>

                            </div>

                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-lg-4 col-md-4">

                            <div class="row">

                                <label class="col-lg-12 col-md-12">Rua:</label>

                                <div class="col-lg-12 col-md-12">

                                    <input type="text" name="endRuaFuncionario" value="${funcionario.endRuaFuncionario}" placeholder="Nome da rua..." class="form-control col-lg-12 col-md-12" maxlength="41"/>

                                </div>

                            </div>

                        </div>

                        <div class="col-lg-4 col-md-4">

                            <div class="row">

                                <label class="col-lg-12 col-md-12">Número:</label>

                                <div class="col-lg-12 col-md-12">

                                    <input type="number" name="endNumFuncionario" value="${funcionario.endNumFuncionario}" placeholder="Ex.: Número da casa/condomínio..." class="form-control col-lg-12 col-md-12"/>

                                </div>

                            </div>

                        </div>

                        <div class="col-lg-4 col-md-4">

                            <div class="row">

                                <label class="col-lg-12 col-md-12">Complemento:</label>

                                <div class="col-lg-12 col-md-12">

                                    <input type="text" name="endCompFuncionario" value="${funcionario.endCompFuncionario}" placeholder="Ex.: Bloco e apartamento..." class="form-control col-lg-12 col-md-12" maxlength="41"/>

                                </div>

                            </div>

                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-lg-4 col-md-4">

                            <div class="row">

                                <label class="col-lg-12 col-md-12">Bairro:</label>

                                <div class="col-lg-12 col-md-12">

                                    <input type="text" name="endBairroFuncionario" value="${funcionario.endBairroFuncionario}" placeholder="Nome do bairro" class="form-control col-lg-12 col-md-12" maxlength="41"/>

                                </div>

                            </div>

                        </div>

                        <div class="col-lg-4 col-md-4">

                            <div class="row">

                                <label class="col-lg-12 col-md-12">CEP:</label>

                                <div class="col-lg-12 col-md-12">

                                    <input type="text" name="endCepFuncionario" value="${funcionario.endCepFuncionario}" placeholder="00000-000" class="form-control col-lg-12 col-md-12" maxlength="9" onkeypress="mascaraCep(this)"/>

                                </div>

                            </div>

                        </div>

                        <div class="col-lg-4 col-md-4">

                            <div class="row">

                                <label class="col-lg-12 col-md-12">Cidade:</label>

                                <div class="col-lg-12 col-md-12">

                                    <input type="text" name="endCidFuncionario" placeholder="Nome da cidade" class="form-control col-lg-12 col-md-12" maxlength="41"/>

                                </div>

                            </div>

                        </div>

                    </div>

                    <div class="form-group">
                        <div class="col-lg-4 col-md-4">

                            <div class="row">

                                <label class="col-lg-12 col-md-12">Estado:</label>

                                <div class="col-lg-12 col-md-12">

                                    <select  name="endEstFuncionario" class="form-control col-lg-12 col-md-12">
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

                                <label class="col-lg-12 col-md-12">Cargo: </label>

                                <div class="col-lg-12 col-md-12">

                                    <select  name="cargoFuncionario" class="form-control col-lg-12 col-md-12">
                                        <option value="nulo" >Selecione</option>
                                        <option value="corretor">Corretor</option>
                                        <option value="backoffice">BackOffice</option>
                                        <option value="funcTi">Funcionário TI</option>
                                        <option value="gerenteBack">Gerente de BackOffice</option>
                                        <option value="gerenteVendas">Gerente de Vendas</option>
                                        <option value="gerenteTi">Gerente de TI</option>
                                        <option value="Diretor">Diretor</option>
                                    </select>

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
