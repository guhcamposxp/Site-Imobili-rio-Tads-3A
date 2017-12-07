<%-- 
    Document   : gerarContrato
    Created on : 06/12/2017, 17:35:15
    Author     : Felipe Oliveira
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
                <div class="card card-register mx-auto mt-5">
                    <div class="card-header cardRegistro">Registar Novo Contrato</div>
                    <div class="card-body">
                        <form name="formContrato" id="formularioCadastro" action="${pageContext.request.contextPath}/insertContrato" method="post">
                            <div class="col-lg-12">
                                <div class="row">
                                    <div class="form-group col-lg-6">
                                        <h5>
                                            Dados para gerar o contrato
                                        </h5>
                                        <hr/>
                                        <div class="form-row">
                                            <div class="col-md-6">
                                                <label for="">Proprietário ID</label>
                                                <input class="form-control" name="proprietarioId" id="proprietarioId" type="text">
                                                
                                            </div>
                                            <div class="col-md-6">
                                                <label for="">Comprador ID</label>
                                                <input class="form-control" name="compradorId" id="compradorId" type="text">
                                            </div>
                                            <div class="col-md-6">
                                                <label for="">Corretor ID</label>
                                                <input class="form-control" name="corretorId" id="corretorId" type="text">
                                            </div>
                                            <div class="col-md-6">
                                                <label for="">Data do contrato</label>
                                                <input class="form-control" name="dataContrato" id="dataContrato" type="text">
                                            </div>
                                            <div class="col-md-6">
                                                <label for="">Tipo de Transação</label>
                                                <select class="form-control" name="clienteSexo" id="clienteSexo">
                                                    <option value="null">Selecione</option>
                                                    <option value="Venda">Venda</option>
                                                    <option value="Aluguel">Aluguel</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <button type="submit" class="btn btn-primary">Gerar</button>
                        </form>
                        
                        
                        <hr/>
                    </div>
                </div>
            </div>
    </body>
</html>
