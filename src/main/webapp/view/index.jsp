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
        <link href="../all/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="../all/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <script src="../all/vendor/datatables/dataTables.bootstrap4.js" type="text/javascript"></script>
        <link href="../css/sb-admin.css" rel="stylesheet" type="text/css"/>
        <link href="../css/custom.css" rel="stylesheet" type="text/css"/>
        
        
    </head>
    <body class="bg-dark">

  <div class="container">
    <div class="card card-login mx-auto mt-5">
      <div class="card-header">
        <img src="../img/2.png" width="300px" height="200px" class="img-responsive"/>
        <label>Sistema Imobiliário</label>
      </div>
      <div class="card-body">
        <form>
          <div class="form-group">
            <label for="exampleInputEmail1">Usuário</label>
            <input class="form-control" id="inputUser" type="email" aria-describedby="emailHelp">
          </div>
          <div class="form-group">
            <label for="exampleInputPassword1">Senha</label>
            <input class="form-control" id="inputPass" type="password">
          </div>
          <div class="form-group">
            <div class="form-check">
              <label class="form-check-label">
                <input class="form-check-input" type="checkbox"> Lembrar-me</label>
            </div>
          </div>
          <a class="btn btn-primary btn-block" href="index.html">Logar</a>
        </form>
      </div>
    </div>
  </div>
        
        
    
        <script src="../all/vendor/jquery/jquery.min.js" type="text/javascript"></script>
        <script src="../all/vendor/popper/popper.min.js" type="text/javascript"></script>
        <script src="../all/vendor/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="../all/vendor/jquery-easing/jquery.easing.min.js" type="text/javascript"></script>
        <script src="../all/vendor/chart.js/Chart.min.js" type="text/javascript"></script>
        <script src="../all/vendor/datatables/jquery.dataTables.js" type="text/javascript"></script>
        <script src="../all/vendor/datatables/dataTables.bootstrap4.js" type="text/javascript"></script>
        <script src="../js/sb-admin.min.js" type="text/javascript"></script>
        <script src="../js/sb-admin-datatables.min.js" type="text/javascript"></script>
        <script src="../js/sb-admin-charts.min.js" type="text/javascript"></script>
        
    </body>
</html>
