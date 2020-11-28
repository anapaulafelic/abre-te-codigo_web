<div class="col-xs-12">

  <%  If Request("question")<>"" then
    'On error resume next
              SQL = "SELECT *FROM ct_start_perguntas where IDjogo="&Request("question")
              
              Set objRS = Server.CreateObject("ADODB.RecordSet") 
              Set objRS.ActiveConnection=objCN
              
              objRS.CursorType = 3 
              objRS.PageSize = 5 
              contador=1
              
               objRS.Open(SQL)

               If objRS.EOF = false then %>

  <% Set objRSAux = objCN.Execute("select nome, categoria FROM ct_start_jogos WHERE id="&Request("question"))
                  If objRSAux.EOF = false Then %>

  <div class="col-xs-12">
    <h3 style="text-align: left;"><%=objRSAux("categoria")%></h3>
    <span><%=objRSAux("nome")%></span>
  </div>

  <% End if %>
  <% Set objRSAux = nothing %>


  <div class="row py-2">
    <% Do While objRS.EOF <> true
       idPergunta = objRS("id") %>

    <div class="col-xs-6 col-sm-4 box-jogo-perguntas">
      <a href="#" onclick="openNavEdit('<%=idPergunta%>')">
        <div class="col-12 content-pergunta">
          <h4><%=objRS("pergunta")%></h4>
          <span class="resposta">Resposta:
            <% If objRS("resposta")= "option_a" then %>
            <%=objRS("option_a")%>

            <% ElseIf objRS("resposta")= "option_b" then %>
            <%=objRS("option_b")%>

            <% ElseIf objRS("resposta")= "option_c" then %>
            <%=objRS("option_c")%>

            <% ElseIf objRS("resposta")= "option_d" then %>
            <%=objRS("option_d")%>

            <% ElseIf objRS("resposta")= "option_e" then %>
            <%=objRS("option_e")%>
            <% end if %>
          </span>
          <span class="numeroPergunta"><%=contador%></span>

        </div>
      </a>
    </div>
    <% 
             contador = contador+1
             objRS.MoveNext
             Loop %>
  </div>
  <% Else %>
  <h3 style="text-align: left;">Meus jogos</h3>
  <div class="row py-2">
    <div class=" col-xs-8 box-jogo-perguntas">
      <div class="col-12 content-pergunta">
        <p>Você ainda não criou um jogo personalizado.</p>
      </div>
    </div>
  </div>
  <% End if %>



  <% Else %>
  <div class=" col-xs-8 box-jogo-perguntas">
    <div class="col-12 content-pergunta">
      <h4>Ooops</h4>
      <p>Desculpe, não consegui identificar o jogo que você deseja editar</p>
    </div>
  </div>
  <% End if %>

</div>
<% set contador=nothing %>