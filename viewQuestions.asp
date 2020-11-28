<div class="col-xs-12">
  <h3>Meus jogos</h3>
  <div class="row py-2">

    <%  'On error resume next
              SQL = "SELECT *FROM ct_start_jogos"
              
              Set objRS = Server.CreateObject("ADODB.RecordSet") 
              Set objRS.ActiveConnection=objCN
              
              objRS.CursorType = 3 
              objRS.PageSize = 5 
              
               objRS.Open(SQL)

               If objRS.EOF = false then
               Do While objRS.EOF <> true
               idPergunta = objRS("id") %>

    <div class="col-xs-6 col-sm-4 box-jogo-perguntas">
      <a href="#" onclick="openPergunta('<%=idPergunta%>')">
        <div class="col-12 content-pergunta">
          <h4><%=objRS("categoria")%></h4>
          <p><%=objRS("nome")%></p>
          <span>
            <% Set objRSAux = objCN.Execute("select count(*) as total FROM ct_start_perguntas WHERE IDjogo="&idPergunta)
                     If objRSAux.EOF = false Then %>

            <%=objRSAux("total")%>
            <% Else %>
            0
            <% End if
              Set objRSAux=Nothing%>
            perguntas</span>

        </div>
      </a>
    </div>
    <% 
             objRS.MoveNext
             Loop %>

    <% Else %>
    <div class=" col-xs-6 col-sm-4 box-jogo-perguntas">
      <div class="col-12 content-pergunta">
        <p>Você ainda não criou um jogo personalizado.</p>
      </div>
    </div>
    <% End if %>

  </div>
</div>