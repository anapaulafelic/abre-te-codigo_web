<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<% Session.LCID = 1046 %>
<!--#include file="conn.inc.asp"  -->
<!DOCTYPE html>
<html lang="pt">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" href="css/global.css">
  <title>Editing question</title>
</head>

<body style="background: #ffffff;">
  <!-- <div id="editQuestion" class="editSidenav"> -->


  <div class="iFrameConteudo">
    <a href="javascript:void(0)" class="closebtn" onclick="hideFrameParent()">&times;</a>

    <div class="container formSidenav">
      <div class="row">
        <div class="col-12">
          <h3>Editar pergunta</h3>

          <% If request("question")<>"" AND IsNumeric(request("question"))=true then
           perguntaID =request("question")  %>

          <% Set objRSAux = objCN.Execute("select *FROM ct_start_perguntas WHERE id="&perguntaID)
            If objRSAux.EOF = false Then
              resposta = objRSAux("resposta") %>

          <form class="contact-form row py-2" action="#" method="POST">
            <div class="col-12">

              <div class="form-check">
                <label>Título</label>
                <textarea name="pergunta" class="form-control" required style="width: 280px;"><%=objRSAux("pergunta")%>
                </textarea>
              </div>

              <div class="form-check">
                <label style="padding-top: 15px;">Alternativas</label>
              </div>
              <div class="form-check">
                <label class="form-check-label" for="resposta">
                  <% if resposta = "option_a" then
                  classeR = "border: #2eda1c 2px solid;"
                  else
                  classeR = ""
                 end if %>
                  <textarea type="text" name="option_a" rows="1" style="width: 280px;<%=classeR%>" placeholder="resposta a"><%=objRSAux("option_a")%></textarea>
                </label>
              </div>

              <div class="form-check">

                <label class="form-check-label" for="resposta">
                  <% if resposta = "option_b" then
                      classeR = "border: #2eda1c 2px solid;"
                  else
                     classeR = ""
                  end if %>
                  <textarea type="text" name="option_b" rows="1" style="width: 280px;<%=classeR%>" placeholder="resposta b"><%=objRSAux("option_b")%></textarea>
                </label>
              </div>

              <div class="form-check">
                <% if resposta = "option_c" then
                      classeR = "border: #2eda1c 2px solid;"
                  else
                     classeR = ""
                  end if %>

                <label class="form-check-label" for="resposta">
                  <textarea type="text" name="option_c" rows="1" style="width: 280px;<%=classeR%>" placeholder="resposta c"><%=objRSAux("option_c")%></textarea>
                </label>
              </div>

              <div class="form-check">
                <% if resposta = "option_d" then
                      classeR = "border: #2eda1c 2px solid;"
                  else
                     classeR = ""
                  end if %>

                <label class="form-check-label" for="resposta">
                  <textarea type="text" name="option_d" rows="1" style="width: 280px;<%=classeR%>" placeholder="resposta d"><%=objRSAux("option_d")%></textarea>
                </label>
              </div>

              <div class="form-check">
                <% if resposta = "option_e" then
                      classeR = "border: #2eda1c 2px solid;"
                  else
                     classeR = ""
                  end if %>

                <label class="form-check-label" for="resposta">
                  <textarea type="text" name="option_e" rows="1" style="width: 280px;<%=classeR%>" placeholder="resposta e"><%=objRSAux("option_e")%></textarea>
                </label>
              </div>

              <% if objRSAux("imagem")<>"" then %>
              <div class="form-check">
                <label style="padding-top: 15px;">Imagem relacionada</label>
                <img src="<%=objRSAux("imagem")%>" class="imagemQuestion">
              </div>
              <% end if %>

              <div class="col-12 d-flex justify-content-center py-4">
                <label></label>
                <button type="submit" id="salvarQuestion" name="criar" value="criar">Salvar</button>
              </div>

            </div>
          </form>
          <% End if %>
          <% End if %>
        </div>
      </div>

    </div>



  </div>


  <script type="text/javascript" src="js/jquery-3.3.1.slim.min.js"></script>
  <script type="text/javascript" src="js/popper.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.js"></script>

  <script type="text/javascript">
    function hideFrameParent() {
      this.parent.closeNavEdit();
      return false;
    }
  </script>
</body>

</html>