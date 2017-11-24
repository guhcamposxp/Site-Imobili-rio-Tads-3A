<%-- 
    Document   : index
    Created on : 22/04/2017, 14:56:36
    Author     : Felipe
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://maxcdn.bootstrapcdn.com/bootswatch/3.3.7/slate/bootstrap.min.css" rel="stylesheet prefetch">
        <link rel="stylesheet" href="css/styleLogin.css">
        <title>Tela de login</title>
    </head>
    <body>
        <div class="telaLogin">

            <form class="formLogin" action="${pageContext.request.contextPath}/validLogin" method="post">
                <h2 class="tituloSistema">Sistema Imobiliário</h2>
                <input type="text" class="form-control" name="usuario" placeholder="Usuário" required="" autofocus="" />
                <input type="password" class="form-control" name="senha" placeholder="Senha" required=""/>
                <label class="checkbox">
                    <input type="checkbox" value="lembrar-me" id="lembrarMe" name="lembrarMe"> Lembrar-me
                </label>
                <input class="btn btn-lg btn-primary btn-block" type="submit" >Acessar</input>
            </form>
            <div class="divRequisito">
                
                <label id="lbRequisito"> Requisito mínimo para visualização: </label>
                <label id="lbFirefox"> Firefox versão 31 </label>
                <label id="lbChrome"> Chrome versão 36 </label>
                <br>
                      <img src="img/firefox.png" id="imgFirefox" width="80px" height="76px">
                      <img src="img/chrome.png" id="imgChrome" width="80px" height="76px">
            </div>
        </div>
        
    </body>
</html>
