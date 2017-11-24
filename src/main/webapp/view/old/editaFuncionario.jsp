
<%@page import="Data.FuncionarioData"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.FuncionarioDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="/getFuncionario" />

        <meta charset="utf-8"/>
        <meta content="width=device-width, initial-scale=1, maximum-scale=1" name="viewport">
        <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">	
        <c:import url="Menu.jsp"></c:import>
            
        </head>

        <body>
           
          
        
         <c:if test = "${retorno == 'criacao'}">
          <div class="alert alert-success">
  <strong>Successo!</strong> O cadastro foi salvo corretamente.
</div>  
         </c:if>
         <c:if test = "${retorno == 'alteracao'}">
          <div class="alert alert-success">
  <strong>Sucesso!</strong> Alteração realizada com sucesso.
</div>   
         </c:if>
            
            
            

        <div class="container">

            <form name="formFuncionario" id="formularioCadastro" class="well form-horizontal" action="${pageContext.request.contextPath}/insertFuncionario" method="post">

                
             
                
                
                <fieldset>

                    <legend>Editar Funcionario</legend>

                    <!-- Copiar o form group inteiro -->
                    <div class="form-group">

                        <div class="col-lg-4 col-md-4">

                            <div class="row">

                                <label class="col-lg-12 col-md-12">Nome:</label>

                                <div class="col-lg-12 col-md-12">

                                    <input type="text" name="nomeFuncionario" value="${lista.nomeFuncionario}" class="form-control col-lg-12 col-md-12" />
                                    <input type="hidden" name="idFuncionario" value="${lista.idFuncionario}">

                                </div>

                            </div>

                        </div>

                        <div class="col-lg-4 col-md-4">

                            <div class="row">

                                <label class="col-lg-12 col-md-12">CPF:</label>

                                <div class="col-lg-12 col-md-12">

                                    <input type="text" name="cpfFuncionario" id="cpf" value="${lista.cpfFuncionario}" placeholder="000.000.000-00" class="form-control col-lg-12 col-md-12" maxlength="14"/>

                                </div>

                            </div>

                        </div>



                        <div class="col-lg-4 col-md-4">

                            <div class="row">

                                <label class="col-lg-12 col-md-12">RG:</label>

                                <div class="col-lg-12 col-md-12">

                                    <input type="text" name="rgFuncionario" value="${lista.rgFuncionario}" placeholder="00.000.000-0" class="form-control col-lg-12 col-md-12" />

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

                                    <input name="sexoFuncionario" value="${lista.sexoFuncionario}" class="form-control col-lg-12 col-md-12" type="text">

                                </div>

                            </div>

                        </div>

                        <div class="col-lg-4 col-md-4">

                            <div class="row">

                                <label class="col-lg-12 col-md-12">Estado Civil:</label>

                                <div class="col-lg-12 col-md-12">
                                    <input name="estCivilFuncionario" value="${lista.estCivilFuncionario}"  class="form-control col-lg-12 col-md-12" type="text">
                                </div>

                            </div>

                        </div>

                        <div class="col-lg-4 col-md-4">

                            <div class="row">

                                <label class="col-lg-12 col-md-12">E-mail:</label>

                                <div class="col-lg-12 col-md-12">

                                    <input type="text" name="emailFuncionario" value="${lista.emailFuncionario}" placeholder="exemplo@exemplo.com.br" class="form-control col-lg-12 col-md-12" maxlength="59"/>

                                </div>

                            </div>

                        </div>

                    </div>

                    <div class="form-group">
                        <div class="col-lg-4 col-md-4">

                            <div class="row">

                                <label class="col-lg-12 col-md-12">Nascimento:</label>

                                <div class="col-lg-12 col-md-12">

                                    <input type="text" name="nascimentoFuncionario" value="${lista.nascimentoFuncionario}" placeholder="00/00/0000" class="form-control col-lg-12 col-md-12" maxlength="10"/>

                                </div>

                            </div>

                        </div>

                        <div class="col-lg-4 col-md-4">

                            <div class="row">

                                <label class="col-lg-12 col-md-12">Telefone:</label>

                                <div class="col-lg-12 col-md-12">

                                    <input type="text" name="telFixoFuncionario" value="${lista.telFixoFuncionario}" placeholder="(00) 0000-0000" class="form-control col-lg-12 col-md-12" maxlength="14"/>

                                </div>

                            </div>

                        </div>

                        <div class="col-lg-4 col-md-4">

                            <div class="row">

                                <label class="col-lg-12 col-md-12">Celular:</label>

                                <div class="col-lg-12 col-md-12">

                                    <input type="text" name="telCelFuncionario" value="${lista.telCelFuncionario}" placeholder="(00) 90000-0000" class="form-control col-lg-12 col-md-12" maxlength="15"/>

                                </div>

                            </div>

                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-lg-4 col-md-4">

                            <div class="row">

                                <label class="col-lg-12 col-md-12">Rua:</label>

                                <div class="col-lg-12 col-md-12">

                                    <input type="text" name="endRuaFuncionario" value="${lista.endRuaFuncionario}" placeholder="Nome da rua..." class="form-control col-lg-12 col-md-12" maxlength="41"/>

                                </div>

                            </div>

                        </div>

                        <div class="col-lg-4 col-md-4">

                            <div class="row">

                                <label class="col-lg-12 col-md-12">Número:</label>

                                <div class="col-lg-12 col-md-12">

                                    <input type="text" name="endNumFuncionario" value="${lista.endNumFuncionario}" placeholder="Ex.: Número da casa/condomínio..." class="form-control col-lg-12 col-md-12" maxlength="41"/>

                                </div>

                            </div>

                        </div>

                        <div class="col-lg-4 col-md-4">

                            <div class="row">

                                <label class="col-lg-12 col-md-12">Complemento:</label>

                                <div class="col-lg-12 col-md-12">

                                    <input type="text" name="endCompFuncionario" value="${lista.endCompFuncionario}" placeholder="Ex.: Bloco e apartamento..." class="form-control col-lg-12 col-md-12" maxlength="41"/>

                                </div>

                            </div>

                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-lg-4 col-md-4">

                            <div class="row">

                                <label class="col-lg-12 col-md-12">Bairro:</label>

                                <div class="col-lg-12 col-md-12">

                                    <input type="text" name="endBairroFuncionario" value="${lista.endBairroFuncionario}" placeholder="Nome do bairro" class="form-control col-lg-12 col-md-12" maxlength="41"/>

                                </div>

                            </div>

                        </div>

                        <div class="col-lg-4 col-md-4">

                            <div class="row">

                                <label class="col-lg-12 col-md-12">CEP:</label>

                                <div class="col-lg-12 col-md-12">

                                    <input type="text" name="endCepFuncionario" value="${lista.endCepFuncionario}" placeholder="00000-000" class="form-control col-lg-12 col-md-12" maxlength="9"/>

                                </div>

                            </div>

                        </div>

                        <div class="col-lg-4 col-md-4">

                            <div class="row">

                                <label class="col-lg-12 col-md-12">Cidade:</label>

                                <div class="col-lg-12 col-md-12">
                                    <input name="endCidFuncionario" value="${lista.endCidFuncionario}" class="form-control col-lg-12 col-md-12" type="text">
                                </div>

                            </div>

                        </div>

                    </div>
                               

                    <div class="form-group">
                        <div class="col-lg-4 col-md-4">

                            <div class="row">

                                <label class="col-lg-12 col-md-12">Estado:</label>

                                <div class="col-lg-12 col-md-12">

                                <input name="endEstFuncionario" value="${lista.endEstFuncionario}" class="form-control col-lg-12 col-md-12" type="text">   

                                </div>

                            </div>

                        </div>
                    </div>
                                
                                <div class="col-lg-4 col-md-4">

                            <div class="row">

                                <label class="col-lg-12 col-md-12" style="padding-left: 0px;">Cargo: </label>

                                <div class="col-lg-12 col-md-12" style="padding-left: 0px;margin-bottom: 20px;">

                                    <select  name="cargoFuncionario" class="form-control col-lg-12 col-md-12" >
                                        <option value="${lista.cargoFuncionario}" >${lista.cargoFuncionario}</option>
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

