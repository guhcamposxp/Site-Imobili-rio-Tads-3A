<%-- 
    Document   : gerarContrato
    Created on : 06/12/2017, 17:35:15
    Author     : Felipe Oliveira
--%>
<%@page import="Data.ClienteData"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.ClienteDAO"%>
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
                        
                        <form name="formSimulacao" id="formSimulacao" action="${pageContext.request.contextPath}/getDadosContrato" method="post">
                            <div class="col-lg-12">
                                <div class="row">
                                    <div class="form-group col-lg-6">
                                        <h5>
                                            Dados para simular o contrato
                                        </h5>
                                        <hr/>
                                        <div class="form-row">

                                            <div class="col-md-6">
                                                <label>Proprietário ID</label>
                                                <input class="form-control" name="clienteProprietarioCpf" id="clienteProprietarioCpf" type="text"> 
                                            </div>
                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                            <button class="btn btn-warning btn-xs" type="submit">Simular</button>
                        </form>

                        <hr/>
                    </div>
                </div>
            </div>
    </body>
</html>
