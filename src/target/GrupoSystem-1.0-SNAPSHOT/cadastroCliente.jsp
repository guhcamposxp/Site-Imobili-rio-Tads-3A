<%-- 
    Document   : cadastroCliente
    Created on : 22/04/2017, 14:58:44
    Author     : Felipe
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel='stylesheet prefetch' href="bootstrap-3.3.7-dist/css/bootstrap.css">
        <link rel="stylesheet" href="css/styleCadastroCliente.css">
        <link href="https://fonts.googleapis.com/css?family=Roboto|Source+Sans+Pro" rel="stylesheet">
        <%
            Connection con = null;
            try {
                Class.forName("com.mysql.jdbc.Driver");  //Descobrindo o driver  
                out.print("Driver conectado");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?zeroDateTimeBehavior=convertToNull", "root", "root");    //conectando com o banco  
                out.print("conexão realizada");
            } catch (ClassNotFoundException erroClass) {
                out.print("Class Drivernão foi localizado, erro = " + erroClass);
            } catch (SQLException e) {
                System.out.println("Erro na copnexão ao banco de dados, erro = " + e);
            }
        %>
    </head>
    <body>
        <div class="telaCadastroCliente">
            <div class="menuLateral">
                <a id="aHome" href="index.jsp" > Home </a>
                <hr>
                <a id="aCadastrarCliente"> Cadastrar Cliente </a><br>
                <a id="aListagemCliente"> Consultar Clientes</a><br>
                <hr>
                <a id="aCadastrarImovel"> Cadastrar Imóvel </a><br>
                <a id="aConsultarImovel"> Consultar Imóvel </a><br>
                <hr>
                <a id="aRelatórioVendas"> Relatório de Vendas </a>
                <hr>
                <a id="aReportarErro"> Reportar Erro </a>
            </div>
            <div class="dadosCadastrais">
                <div id="titulosCadastroCliente">
                    <h5> Dados Cadastrais <h5>
                            </div>
                            <div class="todosDados">
                                <form>
                                    <div id="divNome">
                                        <label id="lbNome">Nome Completo: </label>
                                        <input id="inNome" type="text" class="inputCss" style="width:700px" />
                                    </div>
                                    <div id="divNascimento">
                                        <label id="lbNascimento">Data de Nascimento: </label><br>
                                        <input id="calendario" type="date" name="nascimento"/>
                                    </div>
                                    <div id="divRg">
                                        <label id="lbRg">RG: </label><br>
                                        <input id="inRg" type="text" placeholder="00.000.000-0" style="width:100px"/>
                                    </div>
                                    <div id="divCpf">
                                        <label id="lbCpf">CPF: </label><br>
                                        <input id="inCpf" type="text" placeholder="000.000.000-00" style="width:110px"/>
                                    </div>
                                    <div id="divSexo">
                                        <label id="lbSexo">Sexo: </label><br>
                                        <select id="selectSexo" name="sexo">
                                            <option value="null">Selecione</option>
                                            <option value="M">Masculino</option>
                                            <option value="F">Feminino</option>
                                        </select>
                                    </div>

                                    <div id="divEmail">
                                        <label id="lbEmail"> E-mail: </label>
                                        <input id="inEmail" type="email" style="width: 401px">
                                    </div>

                                    <div id="divEstadoCivil">
                                        <label id="lbEstadoCivil">Estado Civil: </label><br>
                                        <select id="selectEstadoCivil" name="estadocivil">
                                            <option value="null">Selecione</option>
                                            <option value="Solteiro">Solteiro</option>
                                            <option value="Casado">Casado</option>
                                            <option value="Separado">Separado</option>
                                            <option value="Divorciado">Divorciado</option>
                                            <option value="Viuvo">Viúvo</option>
                                        </select>
                                    </div>

                                    <div id="divPaises">
                                        <label id="lbPaises">País: </label><br>
                                        <select id="selectPaises" name=Paises>
                                            <option value="África do Sul">África do Sul</option>
                                            <option value="Albânia">Albânia</option>
                                            <option value="Alemanha">Alemanha</option>
                                            <option value="Andorra">Andorra</option>
                                            <option value="Angola">Angola</option>
                                            <option value="Anguilla">Anguilla</option>
                                            <option value="Antigua">Antigua</option>
                                            <option value="Arábia Saudita">Arábia Saudita</option>
                                            <option value="Argentina">Argentina</option>
                                            <option value="Armênia">Armênia</option>
                                            <option value="Aruba">Aruba</option>
                                            <option value="Austrália">Austrália</option>
                                            <option value="Áustria">Áustria</option>
                                            <option value="Azerbaijão">Azerbaijão</option>
                                            <option value="Bahamas">Bahamas</option>
                                            <option value="Bahrein">Bahrein</option>
                                            <option value="Bangladesh">Bangladesh</option>
                                            <option value="Barbados">Barbados</option>
                                            <option value="Bélgica">Bélgica</option>
                                            <option value="Benin">Benin</option>
                                            <option value="Bermudas">Bermudas</option>
                                            <option value="Botsuana">Botsuana</option>
                                            <option value="Brasil" selected>Brasil</option>
                                            <option value="Brunei">Brunei</option>
                                            <option value="Bulgária">Bulgária</option>
                                            <option value="Burkina Fasso">Burkina Fasso</option>
                                            <option value="botão">botão</option>
                                            <option value="Cabo Verde">Cabo Verde</option>
                                            <option value="Camarões">Camarões</option>
                                            <option value="Camboja">Camboja</option>
                                            <option value="Canadá">Canadá</option>
                                            <option value="Cazaquistão">Cazaquistão</option>
                                            <option value="Chade">Chade</option>
                                            <option value="Chile">Chile</option>
                                            <option value="China">China</option>
                                            <option value="Cidade do Vaticano">Cidade do Vaticano</option>
                                            <option value="Colômbia">Colômbia</option>
                                            <option value="Congo">Congo</option>
                                            <option value="Coréia do Sul">Coréia do Sul</option>
                                            <option value="Costa do Marfim">Costa do Marfim</option>
                                            <option value="Costa Rica">Costa Rica</option>
                                            <option value="Croácia">Croácia</option>
                                            <option value="Dinamarca">Dinamarca</option>
                                            <option value="Djibuti">Djibuti</option>
                                            <option value="Dominica">Dominica</option>
                                            <option value="EUA">EUA</option>
                                            <option value="Egito">Egito</option>
                                            <option value="El Salvador">El Salvador</option>
                                            <option value="Emirados Árabes">Emirados Árabes</option>
                                            <option value="Equador">Equador</option>
                                            <option value="Eritréia">Eritréia</option>
                                            <option value="Escócia">Escócia</option>
                                            <option value="Eslováquia">Eslováquia</option>
                                            <option value="Eslovênia">Eslovênia</option>
                                            <option value="Espanha">Espanha</option>
                                            <option value="Estônia">Estônia</option>
                                            <option value="Etiópia">Etiópia</option>
                                            <option value="Fiji">Fiji</option>
                                            <option value="Filipinas">Filipinas</option>
                                            <option value="Finlândia">Finlândia</option>
                                            <option value="França">França</option>
                                            <option value="Gabão">Gabão</option>
                                            <option value="Gâmbia">Gâmbia</option>
                                            <option value="Gana">Gana</option>
                                            <option value="Geórgia">Geórgia</option>
                                            <option value="Gibraltar">Gibraltar</option>
                                            <option value="Granada">Granada</option>
                                            <option value="Grécia">Grécia</option>
                                            <option value="Guadalupe">Guadalupe</option>
                                            <option value="Guam">Guam</option>
                                            <option value="Guatemala">Guatemala</option>
                                            <option value="Guiana">Guiana</option>
                                            <option value="Guiana Francesa">Guiana Francesa</option>
                                            <option value="Guiné-bissau">Guiné-bissau</option>
                                            <option value="Haiti">Haiti</option>
                                            <option value="Holanda">Holanda</option>
                                            <option value="Honduras">Honduras</option>
                                            <option value="Hong Kong">Hong Kong</option>
                                            <option value="Hungria">Hungria</option>
                                            <option value="Iêmen">Iêmen</option>
                                            <option value="Ilhas Cayman">Ilhas Cayman</option>
                                            <option value="Ilhas Cook">Ilhas Cook</option>
                                            <option value="Ilhas Curaçao">Ilhas Curaçao</option>
                                            <option value="Ilhas Marshall">Ilhas Marshall</option>
                                            <option value="Ilhas Turks & Caicos">Ilhas Turks & Caicos</option>
                                            <option value="Ilhas Virgens (brit.)">Ilhas Virgens (brit.)</option>
                                            <option value="Ilhas Virgens(amer.)">Ilhas Virgens(amer.)</option>
                                            <option value="Ilhas Wallis e Futuna">Ilhas Wallis e Futuna</option>
                                            <option value="Índia">Índia</option>
                                            <option value="Indonésia">Indonésia</option>
                                            <option value="Inglaterra">Inglaterra</option>
                                            <option value="Irlanda">Irlanda</option>
                                            <option value="Islândia">Islândia</option>
                                            <option value="Israel">Israel</option>
                                            <option value="Itália">Itália</option>
                                            <option value="Jamaica">Jamaica</option>
                                            <option value="Japão">Japão</option>
                                            <option value="Jordânia">Jordânia</option>
                                            <option value="Kuwait">Kuwait</option>
                                            <option value="Latvia">Latvia</option>
                                            <option value="Líbano">Líbano</option>
                                            <option value="Liechtenstein">Liechtenstein</option>
                                            <option value="Lituânia">Lituânia</option>
                                            <option value="Luxemburgo">Luxemburgo</option>
                                            <option value="Macau">Macau</option>
                                            <option value="Macedônia">Macedônia</option>
                                            <option value="Madagascar">Madagascar</option>
                                            <option value="Malásia">Malásia</option>
                                            <option value="Malaui">Malaui</option>
                                            <option value="Mali">Mali</option>
                                            <option value="Malta">Malta</option>
                                            <option value="Marrocos">Marrocos</option>
                                            <option value="Martinica">Martinica</option>
                                            <option value="Mauritânia">Mauritânia</option>
                                            <option value="Mauritius">Mauritius</option>
                                            <option value="México">México</option>
                                            <option value="Moldova">Moldova</option>
                                            <option value="Mônaco">Mônaco</option>
                                            <option value="Montserrat">Montserrat</option>
                                            <option value="Nepal">Nepal</option>
                                            <option value="Nicarágua">Nicarágua</option>
                                            <option value="Niger">Niger</option>
                                            <option value="Nigéria">Nigéria</option>
                                            <option value="Noruega">Noruega</option>
                                            <option value="Nova Caledônia">Nova Caledônia</option>
                                            <option value="Nova Zelândia">Nova Zelândia</option>
                                            <option value="Omã">Omã</option>
                                            <option value="Palau">Palau</option>
                                            <option value="Panamá">Panamá</option>
                                            <option value="Papua-nova Guiné">Papua-nova Guiné</option>
                                            <option value="Paquistão">Paquistão</option>
                                            <option value="Peru">Peru</option>
                                            <option value="Polinésia Francesa">Polinésia Francesa</option>
                                            <option value="Polônia">Polônia</option>
                                            <option value="Porto Rico">Porto Rico</option>
                                            <option value="Portugal">Portugal</option>
                                            <option value="Qatar">Qatar</option>
                                            <option value="Quênia">Quênia</option>
                                            <option value="Rep. Dominicana">Rep. Dominicana</option>
                                            <option value="Rep. Tcheca">Rep. Tcheca</option>
                                            <option value="Reunion">Reunion</option>
                                            <option value="Romênia">Romênia</option>
                                            <option value="Ruanda">Ruanda</option>
                                            <option value="Rússia">Rússia</option>
                                            <option value="Saipan">Saipan</option>
                                            <option value="Samoa Americana">Samoa Americana</option>
                                            <option value="Senegal">Senegal</option>
                                            <option value="Serra Leone">Serra Leone</option>
                                            <option value="Seychelles">Seychelles</option>
                                            <option value="Singapura">Singapura</option>
                                            <option value="Síria">Síria</option>
                                            <option value="Sri Lanka">Sri Lanka</option>
                                            <option value="St. Kitts & Nevis">St. Kitts & Nevis</option>
                                            <option value="St. Lúcia">St. Lúcia</option>
                                            <option value="St. Vincent">St. Vincent</option>
                                            <option value="Sudão">Sudão</option>
                                            <option value="Suécia">Suécia</option>
                                            <option value="Suiça">Suiça</option>
                                            <option value="Suriname">Suriname</option>
                                            <option value="Tailândia">Tailândia</option>
                                            <option value="Taiwan">Taiwan</option>
                                            <option value="Tanzânia">Tanzânia</option>
                                            <option value="Togo">Togo</option>
                                            <option value="Trinidad & Tobago">Trinidad & Tobago</option>
                                            <option value="Tunísia">Tunísia</option>
                                            <option value="Turquia">Turquia</option>
                                            <option value="Ucrânia">Ucrânia</option>
                                            <option value="Uganda">Uganda</option>
                                            <option value="Uruguai">Uruguai</option>
                                            <option value="Venezuela">Venezuela</option>
                                            <option value="Vietnã">Vietnã</option>
                                            <option value="Zaire">Zaire</option>
                                            <option value="Zâmbia">Zâmbia</option>
                                            <option value="Zimbábue">Zimbábue</option>
                                        </select>
                                    </div>

                                    <div id="estados">
                                        <label id="lbEstados">Estado: </label><br>
                                        <select id="selectEstados" name="estados-brasil">
                                            <option value="null">Selecione</option>
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
                            </form>
                            </div>
                            <div class="dadosEndereço">
                                <div id="titulosCadastroCliente">
                                    <h5> Endereço <h5>
                                            </div>
                                            <div class="todosDados">
                                                <form>
                                                    <div id="divCep">
                                                        <label id="lbCep">CEP: </label><br>
                                                        <input id="inCep" placeholder="00000-000" type="text" style="width:110px"/>
                                                    </div>

                                                    <div id="divLogradouro">
                                                        <label id="lbLogradouro">Logradouro: </label><br>
                                                        <input id="inLogradouro" type="text" style="width:500px"/>
                                                    </div>

                                                    <div id="divNumero">
                                                        <label id="lbNumero">Número: </label><br>
                                                        <input id="inNumero" type="text" style="width:50px"/>
                                                    </div>

                                                    <div id="divBairro">
                                                        <label id="lbBairro">Bairro: </label><br>
                                                        <input id="inBairro" type="text" style="width:130px"/>
                                                    </div>

                                                    <div id="divComplemento">
                                                        <label id="lbComplemento">Complemento: </label><br>
                                                        <input id="inComplemento" type="text" style="width:250px"/>
                                                    </div>

                                                </form>
                                            </div>
                                            </div>
                                            <div class="dadosTelefone">
                                                <div id="tituloTelefone">
                                                    <h5 > Telefones <h5>
                                                            </div>
                                                            <div class="todosDados">
                                                                <form>
                                                                    <div id="divTelefone">
                                                                        <label id="lbTelefone">Fixo: </label><br>
                                                                        <input id="inTelefone" type="text" placeholder="(00) 0000-0000" style="width:130px"/>
                                                                    </div>

                                                                    <div id="divCelular">
                                                                        <label id="lbCelular">Celular: </label><br>
                                                                        <input id="inCelular" type="text" placeholder="(00) 0000-0000" style="width:130px"/>
                                                                    </div>
                                                                </form>
                                                            </div>
                                                            </div>
                                                            </div>
                                                            </body>
                                                            </html>
