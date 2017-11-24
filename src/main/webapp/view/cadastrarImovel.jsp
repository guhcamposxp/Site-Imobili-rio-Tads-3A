<%-- 
    Document   : cadastrarImovel
    Created on : 08/11/2017, 23:40:12
    Author     : Felipe
--%>

<%@page import="Data.ImovelData"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.ImovelDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form name="formImovel" id="formularioCadastro" action="${pageContext.request.contextPath}/insertImovel" method="post">
                            <div class="form-group col-lg-12 divContato ">
                <h5>
                  Proprietário
                </h5>
              <hr/>
                <div class="form-row">
                  <div class="col-md-6">
                    <label for="">CPF</label>
                    <input class="form-control maskCPF campos" id="clienteCpf" type="text" aria-describedby="nameHelp" placeholder="000.000.000-00">
                  </div>
                </div>
              </div>

          <div class="form-group col-lg-12 divContato" >
            <h5>
              Endereço
            </h5>
          <hr/>
          <div class="form-row">
            <div class="col-md-8">
            <label for="">Rua</label>
            <input class="form-control campos" id="imovelRua" type="text">
            </div>
            <div class="col-md-2">
            <label for="">Número</label>
            <input class="form-control campos" id="imovelNumero" type="text" aria-describedby="emailHelp">
            </div>
            <div class="col-md-3">
            <label for="">Complemento</label>
            <input class="form-control campos" id="imovelComplemento" type="text">
            </div>
            <div class="col-md-2">
            <label for="">CEP</label>
            <input class="form-control maskCEP campos" id="imovelCep" type="text" placeholder="00000-000">
            </div>
            <div class="col-md-5">
            <label for="">Bairro</label>
            <input class="form-control campos" id="imovelBairro" type="text">
            </div>
            <div class="col-md-5">
            <label for="">Cidade</label>
            <input class="form-control campos" id="imovelCidade" type="text">
            </div>
            <div class="col-md-5">
            <label for="exampleInputEmail1">Estado</label>
            <select class="form-control" id="imovelCidade">
              <option value="null">Selecione</option>
              <option value="">Acre</option>
              <option value="">Alagoas</option>
              <option value="">Amapá</option>
              <option value="">Amazonas</option>
              <option value="">Bahia</option>
              <option value="">Ceará</option>
              <option value="">Distrito Federal</option>
              <option value="">Espírito Santo</option>
              <option value="">Goiás</option>
              <option value="">Maranhão</option>
              <option value="">Mato Grosso</option>
              <option value="">Mato Grosso do Sul</option>
              <option value="">Minas Gerais</option>
              <option value="">Pará</option>
              <option value="">Paraíba</option>
              <option value="">Paraná</option>
              <option value="">Pernambuco</option>
              <option value="">Piauí</option>
              <option value="">Rio de Janeiro</option>
              <option value="">Rio Grande do Norte</option>
              <option value="">Rio Grande do Sul</option>
              <option value="">Rondônia</option>
              <option value="">Roraima</option>
              <option value="">Santa Catarina</option>
              <option value="">São Paulo</option>
              <option value="">Sergipe</option>
              <option value="">Tocantins</option>
            </select>
            </div>
          </div>
        </div>

        <div class="form-group col-lg-12 divContato" >
          <h5>
            Dados do Imóvel
          </h5>
        <hr/>
        <div class="form-row">
          <div class="col-md-5">
          <label for="exampleInputEmail1">Tipo de transação</label></br>
          <label class="checkbox-inline campos"><input type="checkbox" value=""> Venda</label>
          <label class="checkbox-inline fcampos"><input type="checkbox" value=""> Aluguel</label>
          <label class="checkbox-inline campos"><input type="checkbox" value=""> Venda e Aluguel</label>
          </div>

          <div class="col-md-3">
          <label for="exampleInputEmail1">Complemento</label>
          <input class="form-control campos" id="exampleInputEmail1" type="text" aria-describedby="emailHelp" >
          </div>
          <div class="col-md-2">
          <label for="exampleInputEmail1">CEP</label>
          <input class="form-control maskCEP campos" id="exampleInputEmail1" type="text" aria-describedby="emailHelp" placeholder="00000-000">
          </div>
          <div class="col-md-5">
          <label for="exampleInputEmail1">Bairro</label>
          <input class="form-control campos" id="exampleInputEmail1" type="text" aria-describedby="emailHelp" >
          </div>
          <div class="col-md-5">
          <label for="exampleInputEmail1">Cidade</label>
          <input class="form-control campos" id="exampleInputEmail1" type="text" aria-describedby="emailHelp" >
          </div>
          <div class="col-md-5">
          <label for="exampleInputEmail1">Estado</label>
          <select class="form-control" id="sel1">
            <option value="uf">Selecione</option>
            <option value="">Acre</option>
            <option value="">Alagoas</option>
            <option value="">Amapá</option>
            <option value="">Amazonas</option>

          </select>
          </div>
        </div>
      </div>
                            <button type="submit" class="btn btn-primary">Cadastrar</button>
                        </form>
    </body>
</html>
