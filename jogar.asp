<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<% Session.LCID = 1046 %>

<!--#include file="conn.inc.asp"  -->
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

    <script type="text/javascript">
      function openNavEdit(questionID) {
        var bodyCode = `editNav.inc.asp?view=all&question=${questionID}`;
        var iFrame = document.getElementById("editQuestion");
        iFrame.setAttribute("src", bodyCode);
        document.body.appendChild(iFrame);

        document.getElementById("boxQuestion").style.width = "100%";
        document.getElementById("boxQuestion").style.display = 'block';
        document.getElementById("boxQuestion").style.visibility = 'visible';
        document.getElementById("boxQuestion").style.backgroundColor = "rgba(0,0,0,0.4)";

        document.getElementById("editQuestion").style.width = "380px";
        document.getElementById("editQuestion").style.display = 'block';
        document.getElementById("editQuestion").style.visibility = 'visible';
      }


      function openPergunta(questionID) {
        var redirecturl = `jogar.asp?view=all&question=${questionID}`;
        window.location = redirecturl;
      }

      function closeNavEdit() {
        var iFr = document.getElementById("editQuestion");
        iFr.style.display = "none";

        document.getElementById("boxQuestion").style.width = "0";
        document.getElementById("boxQuestion").style.visibility = 'hidden';
        document.getElementById("boxQuestion").style.display = 'none';
      }

    </script>

  </head>

<body class="paginas-gerais" style="overflow: hidden;">
  <div id="boxQuestion"></div>
  <!--#include file="menuLogin.inc.asp"-->

  <div id="playing-app">

    <iframe src="pergunta.html" title="Edit question" id="editQuestion" class="editSidenav">
    </iframe>


    <section id="conteudo-play">

      <div class="container d-flex align-items-center justify-content-center p-4">

        <div class="row">

          <%If Request.QueryString("view")="all" then  %>
          <!--#include file="editQuestions.asp"-->
          <% Else %>
          <!--#include file="viewQuestions.asp"-->
          <% End if %>



        </div>

    </section>

    <div class="footer-perguntas">
      <div class="container">
        <div class="row d-flex justify-content-center">
          <div class="col-6 py-4 d-flex justify-content-center">
            <button type="button" onclick="openNavEdit()">Criar Jogo</button>
          </div>

        </div>
      </div>
    </div>

    <script type="text/javascript" src="js/jquery-3.3.1.slim.min.js"></script>
    <script type="text/javascript" src="js/popper.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.js"></script>


  </div>
</body>

</html>