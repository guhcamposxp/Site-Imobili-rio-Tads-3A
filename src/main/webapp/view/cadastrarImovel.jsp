<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

    <head>
    <meta charset="utf-8"/>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1" name="viewport">
    <link href="{pageContext.request.contextPath}/css/style.css" rel="stylesheet">	
    <c:import url="Menu.jsp"></c:import>


    <title>Cadastro de Imóvel</title>

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

        <form name="formImovel" id="formularioImovel" class="well form-horizontal" action="../ImovelServlet" method="post">

            <fieldset>

                <legend>Cadastrar Imóvel</legend>

                <!-- Copiar o form group inteiro -->
                <div class="form-group">

                    <div class="col-lg-4 col-md-4">

                        <div class="row">

                            <label class="col-lg-12 col-md-12">Rua:</label>

                            <div class="col-lg-12 col-md-12">

                                <input type="text" name="endRuaImovel" value="" placeholder="Nome da rua..." class="form-control col-lg-12 col-md-12" maxlength="41"/>

                            </div>

                        </div>

                    </div>

                    <div class="col-lg-4 col-md-4">

                        <div class="row">

                            <label class="col-lg-12 col-md-12">Número:</label>

                            <div class="col-lg-12 col-md-12">

                                <input type="number" name="endNumImovel" value="" placeholder="Ex.: Número da casa/condomínio..." class="form-control col-lg-12 col-md-12"/>

                            </div>

                        </div>

                    </div>

                    <div class="col-lg-4 col-md-4">

                        <div class="row">

                            <label class="col-lg-12 col-md-12">Bairro:</label>

                            <div class="col-lg-12 col-md-12">

                                <input type="text" name="endBairroImovel" value="" placeholder="Nome do bairro..." class="form-control col-lg-12 col-md-12" maxlength="41" />

                            </div>

                        </div>

                    </div>

                </div>
                <!-- Copiar o form group inteiro -->

                <div class="form-group">

                    <div class="col-lg-4 col-md-4">

                        <div class="row">

                            <label class="col-lg-12 col-md-12">CEP:</label>

                            <div class="col-lg-12 col-md-12">

                                <input type="text" name="endCepImovel" value="" placeholder="00000-000" class="form-control col-lg-12 col-md-12" maxlength="9" onkeypress="mascaraCep(this)"/>

                            </div>

                        </div>

                    </div>

                    <div class="col-lg-4 col-md-4">

                        <div class="row">

                            <label class="col-lg-12 col-md-12">Estado:</label>

                            <div class="col-lg-12 col-md-12">

                                <select  name="endEstImovel" class="form-control col-lg-12 col-md-12">
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

                            <label class="col-lg-12 col-md-12">Cidade:</label>

                            <div class="col-lg-12 col-md-12">

                                <input type="text" name="endCidImovel" placeholder="Nome da cidade" class="form-control col-lg-12 col-md-12" maxlength="41"/>

                            </div>

                        </div>

                    </div>

                </div>

                <div class="form-group">
                    <div class="col-lg-4 col-md-4">

                        <div class="row">

                            <label class="col-lg-12 col-md-12">Complemento:</label>

                            <div class="col-lg-12 col-md-12">

                                <input type="text" name="endCompImovel" value="" placeholder="Ex.: Bloco e apartamento..." class="form-control col-lg-12 col-md-12" maxlength="41"/>

                            </div>

                        </div>

                    </div>

                    <div class="col-lg-4 col-md-4">

                        <div class="row">

                            <label class="col-lg-12 col-md-12">Área útil:</label>

                            <div class="col-lg-12 col-md-12">

                                <input type="number" name="areaImovel" value="" placeholder="Em metros quadrados..." class="form-control col-lg-12 col-md-12"/>

                            </div>

                        </div>

                    </div>

                    <div class="col-lg-4 col-md-4">

                        <div class="row">

                            <label class="col-lg-12 col-md-12">Quantidade de Quartos:</label>

                            <div class="col-lg-12 col-md-12">

                                <input type="number" name="quartosImovel" value="" placeholder="Total de quartos..." class="form-control col-lg-12 col-md-12"/>

                            </div>

                        </div>

                    </div>
                </div>

                <div class="form-group">
                    <div class="col-lg-4 col-md-4">

                        <div class="row">

                            <label class="col-lg-12 col-md-12">Quantidade de Suítes:</label>

                            <div class="col-lg-12 col-md-12">

                                <input type="number" name="suitesImovel" value="" placeholder="Total de suítes..." class="form-control col-lg-12 col-md-12"/>

                            </div>

                        </div>

                    </div>

                    <div class="col-lg-4 col-md-4">

                        <div class="row">

                            <label class="col-lg-12 col-md-12">Quantidade de Cozinhas:</label>

                            <div class="col-lg-12 col-md-12">

                                <input type="number" name="cozinhasImovel" value="" placeholder="Total de cozinhas..." class="form-control col-lg-12 col-md-12"/>

                            </div>

                        </div>

                    </div>

                    <div class="col-lg-4 col-md-4">

                        <div class="row">

                            <label class="col-lg-12 col-md-12">Quantidade de Salas Comuns:</label>

                            <div class="col-lg-12 col-md-12">

                                <input type="number" name="salasComumImovel" value="" placeholder="Total de salas comuns..." class="form-control col-lg-12 col-md-12"/>

                            </div>

                        </div>

                    </div>

                </div>

                <div class="form-group">
                    <div class="col-lg-4 col-md-4">

                        <div class="row">

                            <label class="col-lg-12 col-md-12">Quantidade de Salas de Jantar:</label>

                            <div class="col-lg-12 col-md-12">

                                <input type="number" name="salasJantarImovel" value="" placeholder="Total de salas de jantar..." class="form-control col-lg-12 col-md-12"/>

                            </div>

                        </div>

                    </div>

                    <div class="col-lg-4 col-md-4">

                        <div class="row">

                            <label class="col-lg-12 col-md-12">Quantidade de Banheiros:</label>

                            <div class="col-lg-12 col-md-12">

                                <input type="number" name="banheirosImovel" value="" placeholder="Total de banheiros..." class="form-control col-lg-12 col-md-12" min="1" max="6"/>

                            </div>

                        </div>

                    </div>

                    <div class="col-lg-4 col-md-4">

                        <div class="row">

                            <label class="col-lg-12 col-md-12">Quantidade de Vagas para Carro:</label>

                            <div class="col-lg-12 col-md-12">

                                <input type="number" name="vagasImovel" value="" placeholder="Total de vagas..." class="form-control col-lg-12 col-md-12"/>

                            </div>

                        </div>

                    </div>

                </div>

                <div class="form-group">
                    <div class="col-lg-4 col-md-4">

                        <div class="row">

                            <label class="col-lg-12 col-md-12">Valor de Venda:</label>

                            <div class="col-lg-12 col-md-12">

                                <input type="number" name="valorVendaImovel" value="" placeholder="R$ 000.00" class="form-control col-lg-12 col-md-12"/>

                            </div>

                        </div>

                    </div>

                    <div class="col-lg-4 col-md-4">

                        <div class="row">

                            <label class="col-lg-12 col-md-12">Valor do Aluguel:</label>

                            <div class="col-lg-12 col-md-12">

                                <input type="number" name="valorAluguelImovel" value="" placeholder="R$ 000.00" class="form-control col-lg-12 col-md-12" onkeypress="mascaraDinheiro(this)"/>

                            </div>

                        </div>

                    </div>

                    <div class="col-lg-4 col-md-4">

                        <div class="row">

                            <label class="col-lg-12 col-md-12">Tipo de Imóvel:</label>

                            <div class="col-lg-12 col-md-12">

                                <select  name="tipoImovel" class="form-control col-lg-12 col-md-12">
                                    <option value="nulo" >Selecione</option>
                                    <option value="Casa">Casa</option>
                                    <option value="Apartamento">Apartamento</option>
                                    <option value="Kitnet">Kitnet</option>
                                    <option value="Flat">Flat</option>
                                    <option value="Cobertura">Cobertura</option>
                                    <option value="Mansão">Mansão</option>
                                    <option value="Casa na praia">Casa na praia</option>
                                    <option value="Casa no Campo">Casa no Campo</option>
                                    <option value="Sala Comercial">Sala Comercial</option>
                                    <option value="Galpão">Galpão</option>
                                    <option value="Sítio/Chácara">Sítio/Chácara</option>
                                    <option value="Fazenda">Fazenda</option>
                                </select>

                            </div>

                        </div>

                    </div>
                </div>

                <div class="form-group">
                    <div class="col-lg-12 col-md-12">

                        <div class="row">

                            <label class="col-lg-12 col-md-12">Descrição do Imóvel:</label>

                            <div class="col-lg-12 col-md-12">

                                <textarea name="descricaoImovel" class="form-control col-lg-12 col-md-12" rows="3" maxlength="254"></textarea> 

                            </div>

                        </div>

                    </div>
                </div>

                <div class="form-group">
                    <div class="col-lg-10 col-md-10">
                        <button type="submit" class="btn btn-primary" onclick="valida()">Cadastrar</button>
                    </div>
                </div>
                </div>



            </fieldset>

        </form>

</body>
</html>

</html>
