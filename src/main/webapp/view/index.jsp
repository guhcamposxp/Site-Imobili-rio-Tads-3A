<%-- 
    Document   : menu
    Created on : 16/10/2017, 18:19:25
    Author     : felipe.joliveira
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link href="${pageContext.request.contextPath}/all/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="${pageContext.request.contextPath}/all/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <script src="${pageContext.request.contextPath}/all/vendor/datatables/dataTables.bootstrap4.js" type="text/javascript"></script>
        <link href="${pageContext.request.contextPath}/css/sb-admin.css" rel="stylesheet" type="text/css"/>
        <link href="${pageContext.request.contextPath}/css/custom.css" rel="stylesheet" type="text/css"/>

    </head>
    <body class="bg-dark">

  <div class="container">
    <div class="card card-login mx-auto mt-5">
      <div class="card-header">
        <img src="${pageContext.request.contextPath}/img/2.png" width="300px" height="200px" class="img-responsive"/>
        <label>Sistema Imobiliário</label>
      </div>
      <div class="card-body">
        <form class="formLogin" action="${pageContext.request.contextPath}/validLogin" method="post">
          <div class="form-group">
            <label>Usuário</label>
            <input class="form-control" name="usuario" id="inputUser" type="text" required="" autofocus="">
          </div>
          <div class="form-group">
            <label>Senha</label>
            <input class="form-control" name="senha" id="inputPass" type="password" required="">
          </div>
          <input class="btn btn-primary btn-block" type="submit" value="Logar">
        </form>
      </div>
    </div>
  </div>

        <script src="${pageContext.request.contextPath}/all/vendor/jquery/jquery.min.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/all/vendor/popper/popper.min.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/all/vendor/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/all/vendor/jquery-easing/jquery.easing.min.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/all/vendor/chart.js/Chart.min.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/all/vendor/datatables/jquery.dataTables.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/all/vendor/datatables/dataTables.bootstrap4.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/js/sb-admin.min.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/js/sb-admin-datatables.min.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/js/sb-admin-charts.min.js" type="text/javascript"></script>
        
    </body>
</html>
