<% If Request("btnlogin") = "enviar" then 
  Response.Redirect "jogar.asp"

End if %>
<!DOCTYPE html>
<html lang="en">

<head>

  <head>
    <meta charset="UTF-8">
    <title>stArt</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <meta name="description" content="stArt -  integrando tecnologia, cultura e acessibilidade">
    <meta property="og:type" content="website" />
    <meta property="og:title" content="stArt - sua fonte de cultura e diversão" />
    <meta property="og:description" content="stArt -  integrando tecnologia, cultura e acessibilidade" />
    <meta property="og:url" content="" />
    <meta property="og:image" content="" />

    <link rel="shortcut icon" href="./favicon.png">

    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/global.css">
  </head>

<body id="login">
  <!--#include file="menuLogin.inc.asp"-->
  <section id="login-app">

    <div class="container d-flex align-items-center justify-content-center">
      <div class="row">


        <div class="col-xs-12 col-sm-6">
          <div>
            <h3>Login</h3>
            <p>Entre com seu e-mail e senha</p>

            <%=msg%>
            <form class="contact-form row py-2" action="login.asp" method="POST">

              <div class="col-12">
                <label>Seu e-mail</label>
                <input type="email" name="email" class="form-control" placeholder="seunome@exemplo.com" required>
              </div>

              <div class="col-12">
                <label>Sua senha</label>
                <input type="password" name="senha" class="form-control" placeholder="Mínimo de 8 caracteres" required>
              </div>


              <div class="col-12 d-flex justify-content-center py-4">
                <label></label>
                <button type="submit" id="btnlogin" name="btnlogin" value="enviar">Entrar</button>
              </div>

              <div class="col-12 py-3 text-center text-esqueceu">
                <p>Não tem conta? <a href="#">Cadastre-se</a></p>
                <a href="#">
                  <p>Esqueceu a senha?</p>
                </a>
              </div>

            </form>
          </div>
        </div>
        <div class="col-xs-12 col-sm-6 d-flex align-items-center content-slider">
          <div class="text-center">
            <img src="/src/images/slider.jpg" alt="">
            <h4>Cultura é uma rede de <br>significados e possibilidades.</h4>
            <p>É arte, movimento, interação, aprendizagem.<br> Cultive e compartilhe conhecimento. StArt.</p>
          </div>
        </div>
      </div>

  </section>

  <script type="text/javascript" src="js/jquery-3.3.1.slim.min.js"></script>
  <script type="text/javascript" src="js/popper.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.js"></script>
</body>

</html>